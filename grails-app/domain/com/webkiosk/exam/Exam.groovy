package com.webkiosk.exam

import com.webkiosk.Course
import com.webkiosk.Subject
import com.webkiosk.batch.Batch

class Exam {

    String ExamType
    double maxMarks
    double passMarks

    static belongsTo = [
            course:Course
    ]

    static constraints = {
    }
}
