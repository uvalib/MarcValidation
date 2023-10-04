package edu.virginia.marc.validation;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.marc4j.MarcReader;
import org.marc4j.MarcXmlWriter;
import org.marc4j.marc.ControlField;
import org.marc4j.marc.DataField;
import org.marc4j.marc.Record;
import org.w3c.dom.Document;

import com.helger.schematron.ISchematronResource;
import com.helger.schematron.pure.SchematronResourcePure;
import com.helger.schematron.svrl.SVRLFailedAssert;
import com.helger.schematron.svrl.SVRLSuccessfulReport;
import com.helger.schematron.svrl.jaxb.ActivePattern;
import com.helger.schematron.svrl.jaxb.FailedAssert;
import com.helger.schematron.svrl.jaxb.FiredRule;
import com.helger.schematron.svrl.jaxb.SchematronOutputType;
import com.helger.schematron.svrl.jaxb.SuccessfulReport;

public class Validator
{
    
    public static void main(String[] args)
    {
        File schematron = new File("resources/marcValidation.sch");
        final ISchematronResource aResPure = SchematronResourcePure.fromFile (schematron);
        File transform = new File("resources/fixMarcErrors_no_include.xsl");
        String transformstr = null;
        try
        {
            transformstr = Files.readString(transform.toPath());
        }
        catch (IOException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        ReusuableMarcXmlWriter writerRaw = makeXMLWriter(null);
        ReusuableMarcXmlWriter writerTransformed = makeXMLWriter(transformstr);
        if (!aResPure.isValidSchematron ()) 
        {
            System.out.println("Invalid Schematron file");
            System.exit(1);
            //throw new IllegalArgumentException ("Invalid Schematron!"); 
        }

        File dir = new File("resources");
        File[] directoryListing = dir.listFiles();
        List<String> marcFiles = new ArrayList<String>();
        if (directoryListing != null) 
        {
            for (File child : directoryListing) 
            {
                // Do something with child
                if (child.isFile() && (child.getName().endsWith(".xml") || child.getName().endsWith(".mrc")) )
                {
                    marcFiles.add(child.getAbsolutePath());
                }
            }
        }
        else 
        {
          // Handle the case where dir is not really a directory.
          // Checking dir.isDirectory() above would not be sufficient
          // to avoid race conditions with another process that deletes
          // directories.
        }
        MarcReader reader = MarcValidatorReaderFactory.instance().makeReader(marcFiles);
        while (reader.hasNext())
        {
            long t1, t2, t3, t4, t5, t6, t7;
            Record record = reader.next();
            String recordName;
            if (reader instanceof MarcMultiplexReader)
            {
                recordName = ((MarcMultiplexReader)reader).getReaderName().replaceAll(".*[/\\\\]",  "") + " ("+ record.getControlNumber()+")";
            }
            else 
            {
                recordName = record.getControlNumber();
            }
            t1 = System.currentTimeMillis();
            String recordAsXML = getRecordAsXML(record, writerRaw);
            //String recordAsXML = getRecordAsXML(record, (String)null);
            t2 = System.currentTimeMillis();

            if (!validateXMLViaPureSchematron (aResPure, recordAsXML, recordName))
            {
                t3 = System.currentTimeMillis();
                String recordAsXML2 = getRecordAsXML(record, writerTransformed);
                //String recordAsXML2 = getRecordAsXML(record, transformstr);
                t4 = System.currentTimeMillis();
                if (!validateXMLViaPureSchematron (aResPure, recordAsXML2, recordName))
                {
                    t5 = System.currentTimeMillis();
                    showErrorsXMLViaPureSchematron (aResPure, recordAsXML2, record, recordName);
                    t6 = t7 = System.currentTimeMillis();
                }
                else
                {
                    t5 = t6 = System.currentTimeMillis();
                    showRecordDiff(recordAsXML, recordAsXML2, record);
                    t7 = System.currentTimeMillis();
                }
            }
            else 
            {
                t3 = t4 = t5 = t6 = t7 = System.currentTimeMillis();

            }
            System.out.println("read raw    : "+ (t2-t1) + " millisecs");
            System.out.println("validate 1  : "+ (t3-t2) + " millisecs");
            System.out.println("read trans  : "+ (t4-t3) + " millisecs");
            System.out.println("validate 2  : "+ (t5-t4) + " millisecs");
            System.out.println("show errors : "+ (t6-t5) + " millisecs");
            System.out.println("show diff   : "+ (t7-t6) + " millisecs");
        }
    }

    private static ReusuableMarcXmlWriter makeXMLWriter(String transformString)
    {
        StringWriter swriter = new StringWriter();
        
        StreamSource transform = null;
        if (transformString != null) 
        {
            transform = new StreamSource(new StringReader(transformString));
        }
        //ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ReusuableMarcXmlWriter writer = transform != null ? new ReusuableMarcXmlWriter(swriter, transform) 
                                                          : new ReusuableMarcXmlWriter(swriter);
        return(writer);
    }

    private static String getRecordAsXML(Record marcRecord, String transformString)
    {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        Result result = new StreamResult(baos);
        StreamSource transform = null;
        if (transformString != null) 
        {
            transform = new StreamSource(new StringReader(transformString));
        }
        MarcXmlWriter writer = (transform != null) ? new MarcXmlWriter(result, transform) : new MarcXmlWriter(result);
        writer.write(marcRecord);
        writer.close();
        
        String strResult = baos.toString();
        return(strResult);
    }

    private static void showRecordDiff(String recordAsXML, String recordAsXML2, Record record)
    {
        String record11 = recordAsXML.replaceAll("marc:","").replaceAll("><", ">\n<").replaceAll(" xmlns(:marc)?=\"http://www.loc.gov/MARC21/slim\"", "").replaceAll(">\n<(sub|/data)", "><$1").replaceAll("<(/)?collection>(\n)?", "");
        String record22 = recordAsXML2.replaceAll("marc:","").replaceAll("\n[ ]+", "\n").replaceAll(" xmlns(:marc)?=\"http://www.loc.gov/MARC21/slim\"", "").replaceAll(">\n<(sub|/data)", "><$1").replaceAll("<(/)?collection>(\n)?", "");
        if (!record11.equals(record22))
        {
            String[] l1 = record11.split("\n");
            String[] l2 = record22.split("\n");
            int i1 = 0, i2 = 0;
            while (i1 < l1.length && i2 < l2.length)
            {
                boolean stepped = false;
                if (l1[i1].equals(l2[i2]))
                {
                    System.out.println("   "+l1[i1]);
                    i1++; i2++;
                    stepped = true;
                }
                else 
                {
                    for (int j1=1; stepped == false && i1+j1 < l1.length; j1++)
                    {
                        if (l1[i1+j1].equals(l2[i2]))
                        {
                            System.out.println(" < "+l1[i1]);
                            i1++;
                            stepped = true;
                        }
                    }
                    for (int j2=1; stepped == false && i2+j2 < l2.length; j2++)
                    {
                        if (l1[i1].equals(l2[i2+j2]))
                        {
                            System.out.println(" > "+l2[i2]);
                            i2++;
                            stepped = true;
                        }
                    }
                    if (!stepped)
                    {
                        System.out.println(" > "+l1[i1]);
                        System.out.println(" < "+l2[i2]);
                        i1++; i2++;
                    }
                }
            }
        }
        
    }


    public static void printDocument(Document doc, OutputStream out) throws IOException, TransformerException 
    {
        TransformerFactory tf = TransformerFactory.newInstance();
        Transformer transformer = tf.newTransformer();
        transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "no");
        transformer.setOutputProperty(OutputKeys.METHOD, "xml");
        transformer.setOutputProperty(OutputKeys.INDENT, "yes");
        transformer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
        transformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");

        transformer.transform(new DOMSource(doc), 
             new StreamResult(new OutputStreamWriter(out, "UTF-8")));
    }  
    
    private static String getRecordAsXML(Record marcRecord, ReusuableMarcXmlWriter writer)
    {
        writer.write(marcRecord);
        String strResult = writer.getRecordAndReset();
        return(strResult);
    }
   
    public static boolean validateXMLViaPureSchematron (ISchematronResource aResPure, String recordAsXMLStr, String recordName) 
    { 
        StreamSource sss = new StreamSource(new StringReader(recordAsXMLStr));
        
        boolean valid = false;
        try
        {
            valid = aResPure.getSchematronValidity(sss).isValid ();
        }
        catch (Exception e)
        {
            System.out.println("Exception validating file ");
            e.printStackTrace();
        }
        if (valid) 
        {
            System.out.println("Valid xml " + recordName + " according to schematron");
        }
        else 
        {
            System.out.println("Invalid xml " + recordName + " according to schematron");
        }
        return(valid);
    }
    
    private static void showErrorsXMLViaPureSchematron(ISchematronResource aResPure, String recordAsXMLStr, Record record, String recordName)
    {
        StreamSource sss;
        try
        {
            sss = new StreamSource(new StringReader(recordAsXMLStr));
            SchematronOutputType ot = aResPure.applySchematronValidationToSVRL(sss);
            List<Object> errs = ot.getActivePatternAndFiredRuleAndFailedAssert();
            ActivePattern ap = null;
            FiredRule fr = null;
            for (Object obj : errs)
            {
                if (obj instanceof FiredRule) 
                {
                    fr = (FiredRule)obj;
                }
                else if (obj instanceof ActivePattern)
                {
                    ap = (ActivePattern)obj;
                }
                else if (obj instanceof FailedAssert)
                {
                    FailedAssert fa = (FailedAssert)obj;
                    SVRLFailedAssert sfa = new SVRLFailedAssert(fa);
                    String translatedLocation = translateLocation(sfa.getLocation(), recordAsXMLStr);
                    System.out.println(sfa.getFlag().toString() + " : " + sfa.getLocation() + " : " + sfa.getText().replaceAll("\n"," "));
                    System.out.println(translatedLocation);
                }
                else if (obj instanceof SuccessfulReport)
                {
                    SuccessfulReport fa = (SuccessfulReport)obj;
                    SVRLSuccessfulReport sfa = new SVRLSuccessfulReport(fa);
                    String translatedLocation = translateLocation(sfa.getLocation(), recordAsXMLStr);
                    System.out.println(sfa.getFlag().toString() + " : " + sfa.getLocation() + " : " + sfa.getText().replaceAll("\n"," "));
                    System.out.println(translatedLocation);
                }
                else 
                {
                    System.out.println(obj.toString());
                }
            }
     //       Document result = aResPure.applySchematronValidation(new StreamSource(child));
     //       printDocument(result, System.out);
        }
        catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }


    private static String translateLocation(String location, String recordAsXML)
    {
        String recordAsXmlparsed = recordAsXML.replaceAll("marc:","").replaceAll("\n[ ]+", "\n").replaceAll(" xmlns(:marc)?=\"http://www.loc.gov/MARC21/slim\"", "").replaceAll(">\n<(sub|/data)", "><$1");
        String[] recordlines = recordAsXmlparsed.split("\n");
        if (location.matches(".*controlfield.*"))
        {
            String sNum = location.replaceFirst(".*controlfield\\[([0-9]+)].*", "$1");
            int num = Integer.parseInt(sNum);
            String line = null;
            for (int i = 0, j = 0; i < recordlines.length; i++)
            {
                line = recordlines[i];
                if (line.contains("<controlfield"))
                {
                    if (j == num-1) 
                    {
                        return(line);
                    }
                    j++;
                }
            }
        }
        else if (location.matches(".*datafield.*"))
        {
            String sNum = location.replaceFirst(".*datafield\\[([0-9]+)].*", "$1");
            int num = Integer.parseInt(sNum);
            String line = null;
            for (int i = 0, j = 0; i < recordlines.length; i++)
            {
                line = recordlines[i];
                if (line.contains("<datafield"))
                {
                    if (j == num-1) 
                    {
                        return(line);
                    }
                    j++;
                }
            }
        }
        else if (location.matches(".*leader"))
        {
            String line = null;
            for (int i = 0; i < recordlines.length; i++)
            {
                line = recordlines[i];
                if (line.contains("<leader>"))
                {
                    return(line);
                }
            }
        }
        return location;
    }   
}
