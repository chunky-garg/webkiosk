package com.webkiosk.user

import com.webkiosk.StudentCourse
import com.webkiosk.com.webkiosk.address.Address
import com.webkiosk.security.User

class Student {

    Date passingDate

    static belongsTo =[
        user:User
    ]

    static hasMany = [
        courses:StudentCourse
    ]


    static constraints = {
        passingDate nullable: true
    }
}
