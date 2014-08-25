package com.webkiosk.user

import com.webkiosk.security.User

class UserProfile {


    Designation designation

    static belongsTo = [
            user:User
    ]

    static constraints = {
    }
}
