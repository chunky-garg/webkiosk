package com.webkiosk.course

class ChapterSection {

    String name;
    Double number

    ChapterSection parentSection

    static belongsTo = [
            chapter:Chapter
    ]

    static constraints = {
        parentSection nullable: true
    }
}
