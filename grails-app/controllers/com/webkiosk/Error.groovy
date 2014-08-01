package com.webkiosk

import com.sun.jdi.InvalidTypeException
import com.webkiosk.exceptions.NoAccessException
import com.webkiosk.util.ConfigurationService
import com.webkiosk.util.DateUtil
import org.apache.commons.logging.LogFactory

class Error {

    private static final logr = LogFactory.getLog(this)

    def configurationService



    public error(Exception e) {
        print("Catching error in error")
        e.printStackTrace()
//        if(e instanceof NoAccessException ) {
////            render (view:("/error"))
//
//        }

    }

//    def error(NoAccessException e) {
//        print("Catching  NA error error")
////        if(e instanceof NoAccessException ) {
////            println("No Access instance")
////            e.printStackTrace()
////            render (status:403, text: "Access denied", view: '/layouts/error/403')
////            print("haha " + actionUri)
////            return true
////
////        }
//
//    }


    protected def readInput(def req, def configMap){
        def s = configMap.sheet
        def file = req.getFile(configMap.sheet)

        if (!file.empty && !configurationService.isPermittedMimeTypes(ConfigurationService.CSV, file.getContentType())) {

            logr.info("File content type : " + file.getContentType());
            throw new RuntimeException("${getMessage(code: 'csv.type.required')}");
        }

        Reader reader = new InputStreamReader(new ByteArrayInputStream(file.bytes))
        int i=1
        def data = []
        reader.toCsvMapReader().each{row->
            i+=1
            Map<String, Object> returnRow = [:]
            configMap.columnMap.each{key, fieldName->
                def cellValue = row[key]
                def dataType = configMap.dataType[key]

                if (cellValue == null) {
                    //NO OP
                }
                else if (cellValue == "null" || cellValue == "") {
                    cellValue = null
                }
                else if (dataType != String.class){
                    if (dataType == Date.class){
                        cellValue = DateUtil.appParse(cellValue)
                    }
                    /*else{
                        cellValue = cellValue.asType(dataType)
                    }*/
                    else if (dataType==Boolean.class)
                    {
                        if(cellValue.equalsIgnoreCase("No")
                                || cellValue.equalsIgnoreCase("False"))
                            cellValue = false
                        else if (cellValue.equalsIgnoreCase("Yes")
                                || cellValue.equalsIgnoreCase("True"))
                            cellValue = true
                        else{
                            throw new InvalidTypeException(" Invalid Value identified for '"+ fieldName +"' column,  invalid value is' " + cellValue +"' row number is " + i);
                        }
                    }
                    else{
                        cellValue = cellValue.asType(dataType)
                    }
                }
                returnRow[fieldName] = cellValue
            }
            data += returnRow
        }
        return data
    }
}
