package com.webkiosk.com.webkiosk.address

class City {

    String name
    String code

    static belongsTo = [
            state:State

    ]

    static constraints = {
        name blank:false
        code blank:false, unique: true
    }
}
