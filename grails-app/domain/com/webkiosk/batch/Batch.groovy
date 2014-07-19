package com.webkiosk.batch

import com.webkiosk.Course

class Batch {

    String name
    String year
    Standard standard
    Section section

    static hasMany = [
        courses:Course
    ]
    static constraints = {
    }
}
