package com.webkiosk

import com.webkiosk.batch.Section
import com.webkiosk.batch.Standard
import com.webkiosk.com.webkiosk.address.Address
import com.webkiosk.course.Subject
import com.webkiosk.security.User

class School {

    String name
    Address address;



    static hasMany = [
            subjects:Subject,
            standards:Standard,
            sections:Section,
            users:User

    ]

    static constraints = {
        name blank:false
        address nullable: true
    }

    public String toString() {
        name
    }
}
