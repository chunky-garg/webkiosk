package com.webkiosk.user

import com.webkiosk.course.Course
import com.webkiosk.course.Subject
import com.webkiosk.security.User

class Faculty {

    static belongsTo = [
            user:User
    ]
    static hasMany = [
            courses:Course,
            subjects:Subject
    ]
    static constraints = {
    }
}
