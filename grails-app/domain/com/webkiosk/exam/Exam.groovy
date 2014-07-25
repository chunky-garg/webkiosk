package com.webkiosk.exam

import com.webkiosk.Course

class Exam {

    String examType

    double maxMarks
    double passMarks

    static belongsTo = [
            course:Course
    ]

    static constraints = {
    }
}
