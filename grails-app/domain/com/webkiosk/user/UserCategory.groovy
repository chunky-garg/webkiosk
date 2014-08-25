package com.webkiosk.user

import com.webkiosk.security.User

class UserCategory {

    String name

    static hasMany = [
            users:User
    ]
    static constraints = {
    }

    public String toString() {
        name
    }
}
