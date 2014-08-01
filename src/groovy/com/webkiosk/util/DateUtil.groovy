package com.webkiosk.util

import org.joda.time.format.DateTimeFormat
import org.joda.time.format.DateTimeFormatter

/**
 * Created by chunkygarg on 31/07/14.
 */
class DateUtil {

    private static String dtFormat = "dd MMM yyyy HH:mm:ss.SSS"

    private static String BACKEND_FORMAT = "yyyy-MM-dd"
    private static String UI_FORMAT = "MM-dd-yyyy"
    private static String USER_LONG_FORMAT = "dd/MM/yyyy hh:mm a"
    private static String USER_TIME_24H_FORMAT = "HH:mm"
    private static String APP_FORMAT = "dd/MM/yyyy"

    private static DateTimeFormatter uiFormatter = DateTimeFormat.forPattern(UI_FORMAT);
    private static DateTimeFormatter appFormatter = DateTimeFormat.forPattern(APP_FORMAT);
    private static DateTimeFormatter dateTimeFormatter = DateTimeFormat.forPattern(USER_LONG_FORMAT);
    private static DateTimeFormatter time24hFormatter = DateTimeFormat.forPattern(USER_TIME_24H_FORMAT);
    private static DateTimeFormatter backendFormatter = DateTimeFormat.forPattern(BACKEND_FORMAT);

    public static Date appParse(String sdate){
        if (sdate == null) return null
        return appFormatter.parseDateTime(sdate).toDate()
    }

    public static Date backendParse(String sdate){
        if (sdate == null) return null
        return backendFormatter.parseDateTime(sdate).toDate()
    }

    public static Date uiParse(String sdate){
        if (sdate == null) return null
        return uiFormatter.parseDateTime(sdate).toDate()
    }


}
