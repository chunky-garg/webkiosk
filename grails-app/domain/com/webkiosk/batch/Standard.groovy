package com.webkiosk.batch

class Standard {

    int code
    String name

    static constraints = {
        code unique: true, blank:false
    }
}
