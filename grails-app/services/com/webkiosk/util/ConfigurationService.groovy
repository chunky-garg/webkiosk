package com.webkiosk.util

import grails.transaction.Transactional
import grails.util.Holders
import org.apache.commons.logging.LogFactory

@Transactional
class ConfigurationService {

    private static final logr = LogFactory.getLog(this)

    public static final String IMAGE = "image";
    public static final String TEXT = "text";
    public static final String CSV = "csv";

    def serviceMethod() {

    }

    def isPermittedMimeTypes(String typeToCheck, String uploadedContentType) {

        def mimeTypes = Holders.config.grails.mime.types[typeToCheck];

        if (mimeTypes == null || !mimeTypes.contains(uploadedContentType)) {
            return false;
        } else {
            return true;
        }
    }
}
