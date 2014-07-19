package com.webkiosk.security

class Role {

    String authority

    static belongsTo = [
            group:RoleGroup
    ]
    static mapping = {
        cache true
    }

    static constraints = {
        authority blank: false, unique: true
        group nullable: true
    }
}
