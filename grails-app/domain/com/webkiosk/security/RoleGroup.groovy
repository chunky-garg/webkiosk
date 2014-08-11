package com.webkiosk.security

class RoleGroup {

    String name
    String description

    static hasMany = [
            roles:Role
    ]
    static constraints = {
        description nullable: true

    }

    static mapping = {
        cache(true)
    }
}
