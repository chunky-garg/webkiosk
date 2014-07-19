package com.webkiosk

class Subject {

    String name
    String code

    static constraints = {
        name blank:false, nullable: false
        code blank:false, nullable:false, unique: true
    }
}
