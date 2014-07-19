package com.webkiosk.security

class RoleGroup {

    String name

    static hasMany = [
            roles:Role
    ]
    static constraints = {

    }

    static mapping = {
        cache(true)
    }
}
