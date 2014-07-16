package com.webkiosk.com.webkiosk.address

class Country {

    String name
    String code

    static constraints = {
        name blank:false
        code blank:false, unique: true
    }
}
