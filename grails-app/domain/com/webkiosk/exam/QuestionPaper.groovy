package com.webkiosk.exam

class QuestionPaper {

    String status

    static belongsTo = [
            exam:Exam
    ]

    static hasMany = [
            sections: QPSection
    ]

    static constraints = {
    }
}
