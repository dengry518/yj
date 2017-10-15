
package com.thundersoft.yj.service.cxf;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.thundersoft.yj.service.cxf package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _UpdateImgName_QNAME = new QName("http://service.thundersoft.com/", "updateImgName");
    private final static QName _UpdateImgNameResponse_QNAME = new QName("http://service.thundersoft.com/", "updateImgNameResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.thundersoft.yj.service.cxf
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link UpdateImgName }
     * 
     */
    public UpdateImgName createUpdateImgName() {
        return new UpdateImgName();
    }

    /**
     * Create an instance of {@link UpdateImgNameResponse }
     * 
     */
    public UpdateImgNameResponse createUpdateImgNameResponse() {
        return new UpdateImgNameResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UpdateImgName }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.thundersoft.com/", name = "updateImgName")
    public JAXBElement<UpdateImgName> createUpdateImgName(UpdateImgName value) {
        return new JAXBElement<UpdateImgName>(_UpdateImgName_QNAME, UpdateImgName.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UpdateImgNameResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.thundersoft.com/", name = "updateImgNameResponse")
    public JAXBElement<UpdateImgNameResponse> createUpdateImgNameResponse(UpdateImgNameResponse value) {
        return new JAXBElement<UpdateImgNameResponse>(_UpdateImgNameResponse_QNAME, UpdateImgNameResponse.class, null, value);
    }

}
