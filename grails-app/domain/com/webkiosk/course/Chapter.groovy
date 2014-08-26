package com.webkiosk.course

class Chapter {

    Integer number
    String name
    static belongsTo =[
        courseContent : CourseContent
    ]

    static hasMany = [
        sections:ChapterSection
    ]

    static constraints = {
    }
}
