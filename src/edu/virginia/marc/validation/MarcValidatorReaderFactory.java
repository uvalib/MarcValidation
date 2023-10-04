package edu.virginia.marc.validation;



import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

//import org.apache.log4j.Logger;
import org.marc4j.*;
//import org.solrmarc.marc.MarcUnprettyXmlReader;
//import org.solrmarc.tools.PropertyUtils;

public class MarcValidatorReaderFactory {

	protected boolean verbose = false;

    /** The full class name of SolrIndexer or the subclass to be used */
	//protected Properties configProps;
    protected boolean inputTypeXML = false;
    protected boolean inputTypeBinary = false;
    protected boolean inputTypeJSON = false;
    protected boolean includeErrors = false;
	protected boolean permissiveReader;
	protected String defaultEncoding;
    protected boolean to_utf_8;
    protected String combineConsecutiveRecordsFields = null;
	protected String unicodeNormalize = null;

    // Initialize logging category
//    static Logger logger = Logger.getLogger(SolrMarcMarcReaderFactory.class.getName());

	private MarcValidatorReaderFactory()
	{
	}

	static MarcValidatorReaderFactory theFactory = new MarcValidatorReaderFactory();

	public static MarcValidatorReaderFactory instance()
	{
	    return(theFactory);
	}

    public MarcReader makeReader(String ... inputFilenames)
    {
        if (inputFilenames.length == 0)
        {
            return makeReader("stdin");
        }
        else if (inputFilenames.length == 1)
        {
            return makeReader(inputFilenames[0]);
        }
        List<MarcReader> readers = new ArrayList<>();
        for (String inputFilename : inputFilenames)
        {
            MarcReader reader = makeReader(inputFilename);
            readers.add(reader);
        }
        return(new MarcMultiplexReader(readers, Arrays.asList(inputFilenames)));
    }

    public MarcReader makeReader(List<String> inputFilenames)
    {
        if (inputFilenames.size() == 0)
        {
            return makeReader("stdin");
        }
        else if (inputFilenames.size() == 1)
        {
            return makeReader(inputFilenames.iterator().next());
        }
        List<MarcReader> readers = new ArrayList<>();
        for (String inputFilename : inputFilenames)
        {
            MarcReader reader = makeReader(inputFilename);
            readers.add(reader);
        }
        return(new MarcMultiplexReader(readers, inputFilenames));
    }

	public MarcReader makeReader(String inputFilename)
    {
        InputStream is;
        if (inputFilename.equals("-") || inputFilename.equals("stdin"))
        {
            is = new BufferedInputStream(System.in);
        }
        else
        {
            try
            {
                is = new BufferedInputStream(new FileInputStream(inputFilename));
            }
            catch (FileNotFoundException e)
            {
//                logger.error("Fatal error: Exception opening InputStream: " + inputFilename);
                throw new IllegalArgumentException("Fatal error: Exception opening InputStream" + inputFilename);
            }
        }
        return(makeReader(is));
    }
/*
 * 
 * marc.to_utf_8 = true
    marc.permissive = true
    marc.default_encoding = MARC8
    marc.include_errors = true
    marc.combine_records = 999

 */
	public MarcReader makeReader(InputStream input)
	{
        MarcReader reader;
        //setMarc4JProperties(config);

        combineConsecutiveRecordsFields = "999";
//        if (combineConsecutiveRecordsFields != null && combineConsecutiveRecordsFields.length() == 0)
//            combineConsecutiveRecordsFields = null;

        permissiveReader = true;
        defaultEncoding = "UTF-8";
        
//        verbose = Boolean.parseBoolean(PropertyUtils.getProperty(configProps, "marc.verbose"));
        includeErrors = true;
        to_utf_8 = true;
        unicodeNormalize = null; //PropertyUtils.getProperty(config, "marc.unicode_normalize");
        if (unicodeNormalize != null)
        {
            unicodeNormalize = handleUnicodeNormalizeParm(unicodeNormalize);
        }

        InputStream is;
        if (input.markSupported())
        {
            is = input;
        }
        else
        {
            is = new BufferedInputStream(input);
        }
        is.mark(20);
        byte[] buffer = new byte[15];
        @SuppressWarnings("unused")
        int numRead;
        try {
            numRead = is.read(buffer);
            is.reset();
        }
        catch (IOException e)
        {
//            logger.error("Fatal error: Exception reading from InputStream");
            throw new IllegalArgumentException("Fatal error: Exception reading from InputStream");
        }
        String filestart = new String(buffer);
        inputTypeXML = false;
        inputTypeBinary = false;
        inputTypeJSON = false;
        if (numRead == -1 || filestart.length() == 0)                        inputTypeBinary = true;
        else if (filestart.substring(0,  5).equalsIgnoreCase("<?xml"))       inputTypeXML = true;
        else if (filestart.startsWith("{"))                                  inputTypeJSON = true;
        else if (filestart.substring(0,  5).matches("\\d\\d\\d\\d\\d"))      inputTypeBinary = true;
        else if (filestart.contains("<?xml") || filestart.contains("<?XML")) inputTypeXML = true;
        else if (filestart.contains("<collection"))                          inputTypeXML = true;
        else if (filestart.contains("<record"))                              inputTypeXML = true;
        else if (filestart.contains("<!--"))                                 inputTypeXML = true;

        if (inputTypeXML)
        {
            to_utf_8 = true;
            reader = new MarcUnprettyXmlReader(is);
        }
        else if (inputTypeJSON)
        {
            to_utf_8 = true;
            reader = new MarcJsonReader(is);
        }
        else if (inputTypeBinary && permissiveReader)
        {
            reader = new MarcPermissiveStreamReader(is, true, to_utf_8, defaultEncoding);
        }
        else if (inputTypeBinary)
        {
            reader = new MarcPermissiveStreamReader(is, false, to_utf_8, defaultEncoding);
        }
        else
        {
//            logger.error("Fatal error: Unable to determine type of inputfile");
            throw new IllegalArgumentException("Fatal error: Unable to determine type of inputfile.  File starts with: "+ filestart);
        }

        // Add Combine Record reader if requested

        if (reader != null && combineConsecutiveRecordsFields != null)
        {
//            String combineLeftField = PropertyUtils.getProperty(config, "marc.combine_records.left_field");
//            String combineRightField = PropertyUtils.getProperty(config, "marc.combine_records.right_field");
            reader = new MarcCombiningReader(reader, combineConsecutiveRecordsFields, null, null);
        }

        // Add FilteredReader if requested

//        String marcIncludeIfPresent = PropertyUtils.getProperty(config, "marc.include_if_present");
//        String marcIncludeIfMissing = PropertyUtils.getProperty(config, "marc.include_if_missing");
//        String marcDeleteSubfields = PropertyUtils.getProperty(config, "marc.delete_subfields");
//        if (marcDeleteSubfields != null && marcDeleteSubfields.equals("nomap")) marcDeleteSubfields = null;
//        String marcRemapRecord = PropertyUtils.getProperty(config, "marc.reader.remap");
//        if (marcRemapRecord != null && marcRemapRecord.equals("nomap")) marcRemapRecord = null;
//        if (marcDeleteSubfields != null)  marcDeleteSubfields = marcDeleteSubfields.trim();
//        if (reader != null && (marcIncludeIfPresent != null || marcIncludeIfMissing != null || marcDeleteSubfields != null || marcRemapRecord != null))
//        {
//            if (marcRemapRecord != null)
//            {
//                String remapFilename =  marcRemapRecord.trim();
////                String configFilePath = PropertyUtils.getProperty(config, "config.file.dir");
////                String propertySearchPath[] = PropertyUtils.makePropertySearchPath(solrmarcPath, siteSpecificPath, configFilePath, homeDir);
//                String remapURL = PropertyUtils.getPropertyFileAbsoluteURL(searchDirectories, remapFilename, false, null);
//                reader = new MarcFilteredReader(reader, marcIncludeIfPresent, marcIncludeIfMissing, marcDeleteSubfields, remapURL);
//            }
//            else
//            {
//                reader = new MarcFilteredReader(reader, marcIncludeIfPresent, marcIncludeIfMissing, marcDeleteSubfields);
//            }
//        }
//        // Do translating last so that if we are Filtering as well as translating, we don't expend the
//        // effort to translate records, which may then be filtered out and discarded.
//        if (reader != null && to_utf_8 && unicodeNormalize != null)
//        {
//            reader = new MarcTranslatedReader(reader, unicodeNormalize);
//        }

        return reader;

	}

//	private void setMarc4JProperties(Properties configProps)
//    {
//        for (String prop : configProps.stringPropertyNames())
//        {
//            if (prop.startsWith("org.marc4j."))
//            {
//                String value = configProps.getProperty(prop);
//                System.setProperty(prop, value);
//            }
//            else if (PropertyUtils.getProperty(configProps, "marc.override")!= null)
//            {
//                System.setProperty("org.marc4j.marc.MarcFactory", PropertyUtils.getProperty(configProps, "marc.override").trim());
//            }
//
//        }
//    }

    // We only get here if the parm (unicodeNormalize2) is not null compare it against
	// the valid values and return the correct value to use as the parm
	private String handleUnicodeNormalizeParm(String parm)
    {
	    if (parm == null) return(null);
        if (parm.equalsIgnoreCase("KC") || parm.equalsIgnoreCase("CompatibilityCompose"))
        {
            parm = "KC";
        }
        else if (parm.equalsIgnoreCase("C") || parm.equalsIgnoreCase("Compose") || parm.equalsIgnoreCase("true"))
        {
            parm = "C";
        }
        else if (parm.equalsIgnoreCase("D") || parm.equalsIgnoreCase("Decompose"))
        {
            parm = "D";
        }
        else if (parm.equalsIgnoreCase("KD") || parm.equalsIgnoreCase("CompatibiltyDecompose"))
        {
            parm = "KD";
        }
        else
        {
            parm = null;
        }
        return(parm);
    }

}
