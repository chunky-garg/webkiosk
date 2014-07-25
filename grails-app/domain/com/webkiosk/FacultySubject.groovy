package com.webkiosk

import com.webkiosk.user.Faculty

class FacultySubject {

    static belongsTo = [
            subject:Subject,
            faculty:Faculty
    ]
    static constraints = {
    }
}
