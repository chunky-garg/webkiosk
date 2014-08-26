package com.webkiosk.batch

import com.webkiosk.School

class ClassSection {

    String name

    static belongsTo = [
         school:School
    ]

    static constraints = {
        name blank:false, nullable: false, unique: true
    }

    public  String toString() {
        return name
    }
}
