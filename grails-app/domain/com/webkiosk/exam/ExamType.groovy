package com.webkiosk.exam

import com.webkiosk.School

class ExamType {

    String name
    static belongsTo = [
            school:School
    ]

    static constraints = {
    }

    public String toString() {
        name
    }
}
