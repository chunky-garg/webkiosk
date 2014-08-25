package com.webkiosk.course

import com.webkiosk.School
import com.webkiosk.batch.Department

class Subject {

    String name
    String code


    static belongsTo = [
           department: Department,
           school:School
    ]
    static constraints = {
        name blank:false, nullable: false
        code blank:false, nullable:false, unique: true
    }

    public String toString() {
        return name
    }
}
