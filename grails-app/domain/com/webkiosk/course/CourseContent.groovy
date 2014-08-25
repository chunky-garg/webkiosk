package com.webkiosk.course

class CourseContent {

    boolean active = true
    boolean deleted = false



    static belongsTo = [
            course:Course
    ]

    static constraints = {
    }
}
