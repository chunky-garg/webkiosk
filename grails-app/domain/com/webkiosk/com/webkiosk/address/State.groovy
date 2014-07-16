package com.webkiosk.com.webkiosk.address

class State {

    String name
    String code

    static belongsTo = [
            country:Country

    ]

    static constraints = {
        name blank:false
        code blank:false, unique: true
    }
}
