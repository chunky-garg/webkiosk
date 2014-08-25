package com.webkiosk.batch

import com.webkiosk.School
import com.webkiosk.course.Subject

class Department {

    String name

    static belongsTo = [
            school:School
    ]

    static hasMany = [
            subjects:Subject
    ]

    static constraints = {
    }

    public String toString() {
        name
    }
}
