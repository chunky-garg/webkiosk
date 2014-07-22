package com.webkiosk.security

import com.webkiosk.com.webkiosk.address.Address
import grails.util.Holders

class User {

    transient springSecurityService

    String username
    String password
    String firstName
    String lastName
    boolean enabled
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    Address address
    String phone

    String dpName
    Date doj
    Date dob

    String tzDpPath
    String category

    static constraints = {
        username blank: false, unique: true
        password blank: false
        address nullable: true
        dob nullable: true
        doj nullable: true
        phone nullable: true
        dpName nullable: true
        category nullable:true ,inList:['STUDENT', 'FACULTY', 'MANAGEMENT', 'SYSTEM']
    }

    static mapping = {
        password column: '`password`'
        cache(true)
    }

    static transients =[
        'tzDpPath',
         'authorities'
    ]

    Set<Role> getAuthorities() {
        UserRole.findAllByUser(this).collect { it.role } as Set
    }

    def beforeInsert() {
        //encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService.encodePassword(password)
    }

    public boolean isPrincipalAdmin() {
        if(authorities.any{it == Role.findByAuthority("ROLE_ADMIN_PRINCIPAL")}) {
            return true
        }
        return  false
    }

    public String getTzDpPath() {
        return Holders.config.user.profile.pic.path + this.dpName
    }
}
