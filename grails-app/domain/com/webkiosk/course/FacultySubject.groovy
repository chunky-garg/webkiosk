package com.webkiosk.course

import com.webkiosk.course.Subject
import com.webkiosk.user.Faculty

class FacultySubject {

    static belongsTo = [
            subject:Subject,
            faculty:Faculty
    ]
    static constraints = {
    }
}
