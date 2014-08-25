package com.webkiosk.course

import com.webkiosk.user.Faculty

class FacultyCourse {

    static belongsTo = [
            faculty:Faculty,
            course:Course
    ]

    static constraints = {
    }

    public String toString() {
        course +", Faculty : " + faculty
    }
}
