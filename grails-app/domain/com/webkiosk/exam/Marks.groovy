package com.webkiosk.exam

import com.webkiosk.user.Student

class Marks {

    double marksObtained

    static belongsTo = [
            exam:Exam,
            student:Student
              ]
    static constraints = {
    
    }
}
