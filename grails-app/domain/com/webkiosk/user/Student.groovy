package com.webkiosk.user

import com.webkiosk.course.StudentCourse
import com.webkiosk.batch.Standard
import com.webkiosk.security.User

class Student {

    Date passingDate
    Standard currentStandard

    static belongsTo =[
        user:User
    ]

    static hasMany = [
        courses:StudentCourse
    ]


    static constraints = {
        passingDate nullable: true
        currentStandard nullable: true
    }

    public String toString() {
        user.firstName + " " + user.lastName
    }
}
