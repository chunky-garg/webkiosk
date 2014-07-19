package com.webkiosk.user

import com.webkiosk.Course
import com.webkiosk.security.User

class Faculty {

    static belongsTo = [
            user:User
    ]
    static hasMany = [
            courses:Course
    ]
    static constraints = {
    }
}
