package com.webkiosk.exam

import com.webkiosk.batch.BatchCourse

class Exam {

    ExamType examType

    double maxMarks
    double passMarks

    QuestionPaper questionPaper

    static belongsTo = [
            batchCourse:BatchCourse
    ]

    static constraints = {
        questionPaper nullable: true
    }

    public String toString() {
        examType.name + " : "  +batchCourse
    }
}
