package com.webkiosk.timetable

import com.webkiosk.School

class HolidayType {

    String type
    String markingColor = "#"

    static belongsTo = [
            school:School
    ]

    static constraints = {
        type blank: false
    }
}
