package com.webkiosk.batch

class Standard {

    int code
    String name

    static constraints = {
        code unique: true, blank:false
    }

    public String toString() {
        return code + "-" + name
    }
}
