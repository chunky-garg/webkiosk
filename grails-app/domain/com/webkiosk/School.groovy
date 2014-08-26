package com.webkiosk

import com.webkiosk.batch.ClassSection
import com.webkiosk.batch.Standard
import com.webkiosk.com.webkiosk.address.Address
import com.webkiosk.course.Subject
import com.webkiosk.meta.AffiliationBoard
import com.webkiosk.security.User

class School {

    String name
    Address address;
    AffiliationBoard board



    static hasMany = [
            subjects:Subject,
            standards:Standard,
            sections:ClassSection,
            users:User

    ]

    static constraints = {
        name blank:false
        address nullable: true
        board nullable: true
    }

    public String toString() {
        name
    }
}
