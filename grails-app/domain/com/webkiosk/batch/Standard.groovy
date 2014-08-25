package com.webkiosk.batch

import com.webkiosk.School

class Standard {

    int code
    String name

    static belongsTo = [
            school:School
    ]
    
    static constraints = {
        code unique: true, blank:false
    }

    public String toString() {
        return code + "-" + name
    }
}
