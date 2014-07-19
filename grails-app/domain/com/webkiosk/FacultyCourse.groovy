package com.webkiosk

import com.webkiosk.user.Faculty

class FacultyCourse {

    static belongsTo = [
           faculty:Faculty,
            course:Course
    ]

    static constraints = {
    }
}
