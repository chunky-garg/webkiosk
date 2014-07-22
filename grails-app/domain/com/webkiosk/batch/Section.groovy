package com.webkiosk.batch

class Section {

    String name

    static constraints = {
        name blank:false, nullable: false, unique: true
    }

    public  String toString() {
        return name
    }
}
