package com.webkiosk.exam

import com.webkiosk.security.User

class Question {

    String qString
    String qType  // text, true/false,multiple choice, long answer, short answer, diagram (Will be provided by system provider)
    String difficultyLevel
    Double marks
    Integer priority
    User createdBy

    boolean active = true
    boolean deleted = false

//    String subjectArea

    QPSection section

    static belongsTo = [
    ]

    static constraints = {
        qString nullable: false
        qType nullable: false
        createdBy nullable: false
        difficultyLevel nullable: true
        marks nullable: true
        priority nullable: true
        section nullable: true
    }
}
