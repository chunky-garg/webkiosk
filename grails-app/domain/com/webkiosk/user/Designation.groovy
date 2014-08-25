package com.webkiosk.user

import com.webkiosk.School

class Designation {

    String name
    Designation parent
    boolean active = true

    static belongsTo = [
            school:School
    ]

    static transients = {
        'actualName'
    }

    static constraints = {
        name blank: false
        school nullable: true
        parent nullable: true
    }

    String getActualName() {
        name
    }

    String getName() {
        if(school == null) {
            parent?.name
        } else {
            name
        }
    }

    public String toString() {
            getName()
    }
}
