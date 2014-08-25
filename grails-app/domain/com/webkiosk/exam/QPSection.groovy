package com.webkiosk.exam

class QPSection {

    String name
    Double marksAllotted
    String difficultyLevel

    static belongsTo = [
            questionPaper : QuestionPaper
    ]

    static constraints = {
        name blank: false
        marksAllotted nullable: true
        difficultyLevel nullable: true
    }
}
