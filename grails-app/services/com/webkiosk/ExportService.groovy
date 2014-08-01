package com.webkiosk

import com.webkiosk.util.Templates
import grails.transaction.Transactional
import org.grails.plugins.csv.CSVWriter

@Transactional
class ExportService {


    public downloadResults(def response) {
        print("Downloading....")
        def headerMap = Templates.RESULT_COLUMN_MAP

        def sw = new StringWriter()
        println(headerMap['columnMap'])
        def b = new CSVWriter(sw, {headerMap['columnMap'].collect{key, value ->
            println(key +"value - " + value)
            "${key}"{it['${value}']}
        }})

        boolean isEmpty = true
        //TODO Download result template

        if (isEmpty){
            b << [:]
        }

        flushCSV(response, b.writer.toString(), "Results")
    }

    private void flushCSV(def response, def content, def filename){
        response.setHeader("Content-disposition", "attachment; filename=${filename}.csv")
        response.contentType = "text/csv"

        response.getWriter().write(content)
        response.getWriter().close()
    }
}
