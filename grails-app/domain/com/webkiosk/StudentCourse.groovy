package com.webkiosk

import com.webkiosk.user.Student

class StudentCourse {


    static belongsTo= [
            student:Student,
            cousrse:Course
    ]

    static constraints = {
    }
}
