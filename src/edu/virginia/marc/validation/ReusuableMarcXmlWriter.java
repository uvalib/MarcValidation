package edu.virginia.marc.validation;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.text.Normalizer;
import java.util.regex.Pattern;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXTransformerFactory;
import javax.xml.transform.sax.TransformerHandler;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.marc4j.Constants;
import org.marc4j.MarcException;
import org.marc4j.MarcWriter;
import org.marc4j.MarcXmlWriter;
import org.marc4j.converter.CharConverter;
import org.marc4j.converter.impl.AnselToUnicode;
import org.marc4j.converter.impl.UnicodeUtils;
import org.marc4j.marc.ControlField;
import org.marc4j.marc.DataField;
import org.marc4j.marc.Leader;
import org.marc4j.marc.MarcFactory;
import org.marc4j.marc.Record;
import org.marc4j.marc.Subfield;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.AttributesImpl;

public class ReusuableMarcXmlWriter implements MarcWriter
{

    private StringWriter sw = null;
    private int stringwriterOffset = 0;
    protected static final String CONTROL_FIELD = "controlfield";

    protected static final String DATA_FIELD = "datafield";

    protected static final String SUBFIELD = "subfield";

    protected static final String COLLECTION = "collection";

    protected static final String RECORD = "record";

    protected static final String LEADER = "leader";

    private boolean indent = false;

    private TransformerHandler handler = null;

    /**
     * Character encoding. Default is UTF-8.
     */
    private String encoding = "UTF8";

    private CharConverter converter = null;

    private boolean normalize = false;

    private boolean checkNonXMLChars = false;
    private SAXTransformerFactory saxFactory;
    private Templates templates;

    public ReusuableMarcXmlWriter(StringWriter sw, Source stylesheet)
    {
        if (stylesheet == null) {
            throw new NullPointerException("null Source");
        }
        this.sw = sw;
        Result result = new StreamResult(sw);

        if (sw == null) {
            throw new NullPointerException("null StringWriter");
        }
        TransformerFactory factory = TransformerFactory.newInstance();
        try
        {
            templates = factory.newTemplates(stylesheet);
        }
        catch (TransformerConfigurationException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if (!factory.getFeature(SAXTransformerFactory.FEATURE)) {
            throw new UnsupportedOperationException("SAXTransformerFactory is not supported");
        }

        saxFactory = (SAXTransformerFactory) factory;

        setHandler(result, templates);
        writeStartDocument();
    //    StringBuffer sb = sw.getBuffer();
     //   stringwriterOffset = sb.length();
    }   

    public ReusuableMarcXmlWriter(StringWriter sw)
    {
        this.sw = sw;
        Result result = new StreamResult(sw);

        if (sw == null) {
            throw new NullPointerException("null StringWriter");
        }
        
        TransformerFactory factory = TransformerFactory.newInstance();
        templates = null;
        if (!factory.getFeature(SAXTransformerFactory.FEATURE)) {
            throw new UnsupportedOperationException("SAXTransformerFactory is not supported");
        }

        saxFactory = (SAXTransformerFactory) factory;

        setHandler(result, null);
        writeStartDocument();
   //     StringBuffer sb = sw.getBuffer();
   //     stringwriterOffset = sb.length();
    }   
    


    private ReusuableMarcXmlWriter() {
    }

//    /**
//     * Constructs an instance with the specified output stream.
//     * The default character encoding for UTF-8 is used.
//     *
//     * @param out - the OutputStream to write the record to.
//     */
//    public MarcXmlWriter(final OutputStream out) {
//        this(out, false);
//    }
//
//    /**
//     * Constructs an instance with the specified output stream and indentation.
//     * The default character encoding for UTF-8 is used.
//     *
//     * @param out - the OutputStream to write the record to.
//     * @param indent - true to turn on pretty print indenting
//     */
//    public MarcXmlWriter(final OutputStream out, final boolean indent) {
//        this(out, "UTF8", indent);
//    }
//
//    /**
//     * Constructs an instance with the specified output stream and character encoding.
//     *
//     * @param out - the OutputStream to write the record to.
//     * @param encoding - the encoding to use for the OutputStream
//     * @throws MarcException - if the specified encoding is invalid
//     */
//    public MarcXmlWriter(final OutputStream out, final String encoding) {
//        this(out, encoding, false);
//    }
//
//    /**
//     * Constructs an instance with the specified output stream, character encoding and indentation.
//     *
//     * @param out - the OutputStream to write the record to.
//     * @param encoding - the encoding to use for the OutputStream
//     * @param indent - true to turn on pretty print indenting
//     * @throws MarcException - if the specified encoding is invalid
//     */
//    public MarcXmlWriter(final OutputStream out, final String encoding, final boolean indent) {
//        this.encoding = encoding;
//
//        if (out == null) {
//            throw new NullPointerException("null OutputStream");
//        }
//
//        if (this.encoding == null) {
//            throw new NullPointerException("null encoding");
//        }
//
//        try {
//            setIndent(indent);
//
//            writer = new OutputStreamWriter(out, encoding);
//            writer = new BufferedWriter(writer);
//
//            setHandler(new StreamResult(writer), null);
//        } catch (final UnsupportedEncodingException details) {
//            throw new MarcException(details.getMessage(), details);
//        }
//
//        writeStartDocument();
//    }
//
//    /**
//     * Constructs an instance with the specified result.
//     *
//     * @param result - write to a Result object rather than a OutputStream
//     */
//    public MarcXmlWriter(final Result result) {
//        if (result == null) {
//            throw new NullPointerException("null Result");
//        }
//
//        setHandler(result, null);
//        writeStartDocument();
//    }
//
//    /**
//     * Constructs an instance with the specified stylesheet location and result.
//     *
//     * @param result - write to a Result object rather than a OutputStream
//     * @param stylesheetUrl - the URL of a XSLT stylesheet to use to transform the output
//     */
//    public MarcXmlWriter(final Result result, final String stylesheetUrl) {
//        this(result, new StreamSource(stylesheetUrl));
//    }
//
//    /**
//     * Constructs an instance with the specified stylesheet source and result.
//     *
//     * @param result - write to a Result object rather than a OutputStream
//     * @param stylesheet - the Source of a XSLT stylesheet to use to transform the output
//     */
//    public ReusuableMarcXmlWriter(final Result result, final Source stylesheet) {
//        if (stylesheet == null) {
//            throw new NullPointerException("null Source");
//        }
//
//        if (result == null) {
//            throw new NullPointerException("null Result");
//        }
//
//        setHandler(result, stylesheet);
//        writeStartDocument();
//    }

    /**
     * Closes the writer.
     */
    @Override
    public void close() {
        writeEndDocument();
    }

    /**
     * Returns the character converter.
     *
     * @return CharConverter the character converter
     */
    @Override
    public CharConverter getConverter() {
        return converter;
    }

    /**
     * Sets the character converter.
     *
     * @param converter the character converter
     */
    @Override
    public void setConverter(final CharConverter converter) {
        this.converter = converter;
    }

    /**
     * If set to true this writer will perform Unicode normalization on data elements using normalization form C
     * (NFC). The default is false.
     * The implementation used is ICU4J 2.6. This version is based on Unicode 4.0.
     *
     * @param normalize true if this writer performs Unicode normalization, false otherwise
     */
    public void setUnicodeNormalization(final boolean normalize) {
        this.normalize = normalize;
    }

    /**
     * Returns true if this writer will perform Unicode normalization, false otherwise.
     *
     * @return boolean - true if this writer performs Unicode normalization, false otherwise.
     */
    public boolean getUnicodeNormalization() {
        return normalize;
    }

    /**
     * Optional check for characters that are invalid for xml (e.g. control characters),
     * will convert to a form like "&lt;U+XXXX&gt;" where 'XXXX' is the equivalent hex value
     * of the invalid character.  Useful for poor source data, but slows down the XML emission.
     *
     * @param checkNonXMLChars true if want to check (and replace) non-XML chars, false (default) otherwise.
     */
    public void setCheckNonXMLChars(final boolean checkNonXMLChars) {
        this.checkNonXMLChars = checkNonXMLChars;
    }

    /**
     * Returns true if this writer will check for non-XML characters and replace them with a form like "&lt;U+XXXX&gt;",
     * false otherwise.
     *
     * @return boolean - true if this writer checks for (and replaces) non-XML characters, false otherwise.
     */
    public boolean getCheckNonXMLChars() {
        return checkNonXMLChars;
    }

    /*
     * My recommendation is to compile the stylesheet once to a Templates object 
     * (using factory.newTemplates()) and then create a new Transformer for each 
     * transformation using Templates.newTransformer(). The JAXP specification says 
     * that what you are doing should work, so this is indeed a bug, but with Saxon 
     * it is generally cleaner to let the garbage collector dispose of the resources 
     * held by the Transformer object once it's finished.
     */
    protected void setHandler(final Result result, Templates templates) throws MarcException {
        try {
            if (templates == null)
            {
                handler = saxFactory.newTransformerHandler();
            }
            else
            {
                handler = saxFactory.newTransformerHandler(templates);
            }
            handler.getTransformer().setOutputProperty(OutputKeys.METHOD, "xml");
            handler.setResult(result);

        } catch (final Exception details) {
            throw new MarcException(details.getMessage(), details);
        }
    }
    
    /**
     * Writes the root start tag to the result.
     *
     * @throws MarcException - for a poorly formed document
     */
    protected void writeStartDocument() {
        try {
            final AttributesImpl atts = new AttributesImpl();
            handler.startDocument();
            handler.startPrefixMapping(Constants.MARCXML_NS_PREFIX, Constants.MARCXML_NS_URI);
            handler.startElement(Constants.MARCXML_NS_URI, COLLECTION, Constants.MARCXML_NS_PREFIX + ":" + COLLECTION,
                    atts);
        } catch (final SAXException details) {
            throw new MarcException("SAX error occured while writing start document", details);
        }
    }

    /**
     * Writes the root end tag to the result.
     *
     * @throws MarcException - for a poorly formed document
     */
    protected void writeEndDocument() {
        try {
            if (indent) {
                handler.ignorableWhitespace("\n".toCharArray(), 0, 1);
            }

            handler.endElement(Constants.MARCXML_NS_URI, COLLECTION, Constants.MARCXML_NS_PREFIX + ":" + COLLECTION);
            handler.endPrefixMapping(Constants.MARCXML_NS_URI);
            handler.endDocument();
        } catch (final SAXException e) {
            throw new MarcException("SAX error occured while writing end document", e);
        }
    }

    public String getRecordAndReset()
    {
        writeEndDocument();
        StringBuffer sb = sw.getBuffer();
        String record = sb.toString();
        sb.delete(0,  sb.length());
        Result result = new StreamResult(sw);
        setHandler(result, templates);
        writeStartDocument();
        return(record);
    }
    
    /**
     * Writes a Record object to the result.
     *
     * @param record - the <code>Record</code> object
     * @throws MarcException - for a poorly formed document
     */
    @Override
    public void write(final Record record) {
        try {
            toXml(record);
        } catch (final SAXException e) {
            throw new MarcException("SAX error occured while writing record", e);
        }
    }

    /**
     * Returns true if indentation is active, false otherwise.
     *
     * @return boolean
     */
    public boolean hasIndent() {
        return indent;
    }

    /**
     * Activates or deactivates indentation. Default value is false.
     *
     * @param indent - true to turn on pretty-print indenting
     */
    public void setIndent(final boolean indent) {
        this.indent = indent;
    }

    protected void toXml(final Record record) throws SAXException {
        if (!MarcFactory.newInstance().validateRecord(record)) {
            throw new MarcException("Marc record didn't validate");
        }

        char temp[];
        AttributesImpl atts = new AttributesImpl();

        if (indent) {
            handler.ignorableWhitespace("\n  ".toCharArray(), 0, 3);
        }

        if (record.getType() != null) {
            final AttributesImpl rAtts = new AttributesImpl();

            rAtts.addAttribute("", "type", "type", "", record.getType());
            handler.startElement(Constants.MARCXML_NS_URI, RECORD, Constants.MARCXML_NS_PREFIX + ":" + RECORD, rAtts);
        } else {
            handler.startElement(Constants.MARCXML_NS_URI, RECORD, Constants.MARCXML_NS_PREFIX + ":" + RECORD, atts);
        }

        if (indent) {
            handler.ignorableWhitespace("\n    ".toCharArray(), 0, 5);
        }

        handler.startElement(Constants.MARCXML_NS_URI, LEADER, Constants.MARCXML_NS_PREFIX + ":" + LEADER, atts);
        final Leader leader = record.getLeader();
        temp = getDataElement(leader.toString());
        handler.characters(temp, 0, temp.length);
        handler.endElement(Constants.MARCXML_NS_URI, LEADER, Constants.MARCXML_NS_PREFIX + ":" + LEADER);

        for (final ControlField field : record.getControlFields()) {
            atts = new AttributesImpl();
            atts.addAttribute("", "tag", "tag", "CDATA", getDataElementString(field.getTag()));

            if (indent) {
                handler.ignorableWhitespace("\n    ".toCharArray(), 0, 5);
            }

            handler.startElement(Constants.MARCXML_NS_URI, CONTROL_FIELD, Constants.MARCXML_NS_PREFIX + ":" +
                    CONTROL_FIELD, atts);
            temp = getDataElement(field.getData());
            handler.characters(temp, 0, temp.length);
            handler.endElement(Constants.MARCXML_NS_URI, CONTROL_FIELD, Constants.MARCXML_NS_PREFIX + ":" +
                    CONTROL_FIELD);
        }

        for (final DataField field : record.getDataFields()) {
            atts = new AttributesImpl();
            atts.addAttribute("", "tag", "tag", "CDATA", getDataElementString(field.getTag()));
            atts.addAttribute("", "ind1", "ind1", "CDATA", getDataElementString(String.valueOf(field
                    .getIndicator1())));
            atts.addAttribute("", "ind2", "ind2", "CDATA", getDataElementString(String.valueOf(field
                    .getIndicator2())));

            if (indent) {
                handler.ignorableWhitespace("\n    ".toCharArray(), 0, 5);
            }

            handler.startElement(Constants.MARCXML_NS_URI, DATA_FIELD, Constants.MARCXML_NS_PREFIX + ":" + DATA_FIELD,
                    atts);

            for (final Subfield subfield : field.getSubfields()) {
                atts = new AttributesImpl();
                atts.addAttribute("", "code", "code", "CDATA", getDataElementString(String.valueOf(subfield
                        .getCode())));

                if (indent) {
                    handler.ignorableWhitespace("\n      ".toCharArray(), 0, 7);
                }

                handler.startElement(Constants.MARCXML_NS_URI, SUBFIELD, Constants.MARCXML_NS_PREFIX + ":" + SUBFIELD,
                        atts);
                temp = getDataElement(subfield.getData());
                handler.characters(temp, 0, temp.length);
                handler.endElement(Constants.MARCXML_NS_URI, SUBFIELD, Constants.MARCXML_NS_PREFIX + ":" + SUBFIELD);
            }

            if (indent) {
                handler.ignorableWhitespace("\n    ".toCharArray(), 0, 5);
            }

            handler.endElement(Constants.MARCXML_NS_URI, DATA_FIELD, Constants.MARCXML_NS_PREFIX + ":" + DATA_FIELD);
        }

        if (indent) {
            handler.ignorableWhitespace("\n  ".toCharArray(), 0, 3);
        }

        handler.endElement(Constants.MARCXML_NS_URI, RECORD, Constants.MARCXML_NS_PREFIX + ":" + RECORD);
    }

    protected String getDataElementString(final String data) {
        String dataElement = null;

        if (converter == null) {
            dataElement = data;
        } else {
            dataElement = converter.convert(data);
        }

        if (normalize) {
            dataElement = Normalizer.normalize(dataElement, Normalizer.Form.NFC);
        }

        if (checkNonXMLChars) {
            dataElement = CheckNonXMLChars(dataElement);
        }
        return dataElement;
    }

    protected char[] getDataElement(final String data) {
        return getDataElementString(data).toCharArray();
    }

    /**
     * Iterate through the characters in the dataElement, if any of them are invalid characters
     * or control characters or "discouraged" characters, replace character with a &lt;U+XXXX&gt;
     * representation of the character.
     * @param dataElement - the data value to check for invalid XML characters
     * @return the same string with invalid characters replaced with a &lt;U+XXXX&gt; representation
     */
    protected String CheckNonXMLChars(final String dataElement) {
        final StringBuffer out = new StringBuffer(dataElement.length());
        for (final char ch : dataElement.toCharArray()) {
            if (isInvalidXmlChar(ch)) {
                out.append(UnicodeUtils.convertUnicodeToUnicodeBNF(ch));
            } else {
                out.append(ch);
            }
        }
        return out.toString();
    }

    static Pattern valid = Pattern.compile("[\\u0001-\\uD7FF\\uE000-\uFFFD\\x{10000}-\\x{10FFFF}]");

    static Pattern ctrlChar = Pattern
            .compile("[\\u0001-\\u0008\\u000B-\\u000C\\u000E-\\u001F\\u007F-\\u0084\\u0086-\\u009F]");

    static Pattern discouraged = Pattern
            .compile("[\\uFDD0-\\uFDEF\\x{1FFFE}-\\x{1FFFF}\\x{2FFFE}-\\x{2FFFF}\\x{3FFFE}-\\x{3FFFF}\\x{4FFFE}-\\x{4FFFF}\\x{5FFFE}-\\x{5FFFF}\\x{6FFFE}-\\x{6FFFF}\\x{7FFFE}-\\x{7FFFF}\\x{8FFFE}-\\x{8FFFF}\\x{9FFFE}-\\x{9FFFF}\\x{AFFFE}-\\x{AFFFF}\\x{BFFFE}-\\x{BFFFF}\\x{CFFFE}-\\x{CFFFF}\\x{DFFFE}-\\x{DFFFF}\\x{EFFFE}-\\x{EFFFF}\\x{FFFFE}-\\x{FFFFF}\\x{10FFFE}-\\x{10FFFF}]");

    /**
     * A replacement for the method XmlChar.isInvalid(char ch) found in the
     * class com.sun.org.apache.xerces.internal.util.XMLChar;  which, since its an
     * internal class, apparently shouldn't be used.
     */
    private static boolean isInvalidXmlChar(final char ch) {
        final String s = Character.toString(ch);
        // xml 1.1 spec http://en.wikipedia.org/wiki/Valid_characters_in_XML
        if (!valid.matcher(s).matches()) {
            return true;         // not in valid ranges
        }

        if (ctrlChar.matcher(s).matches()) {
            return true;         // a control character
        }

        if (discouraged.matcher(s).matches()) {
            return true;        // "Characters allowed but discouraged"
        }

        return false;
    }

    /**
     * Whether the writer expects the record passed in to be encoded in Unicode.
     */
    @Override
    public boolean expectsUnicode()
    {
        return (converter == null) ? true : false; 
    }
}
