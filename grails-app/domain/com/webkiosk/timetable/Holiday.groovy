package com.webkiosk.timetable

import com.webkiosk.School

class Holiday {

    String name
    HolidayType type
    Date date

    static belongsTo = [
        school:School
    ]

    static constraints = {
        name blank: false
        type nullable: true
        date nullable: false
    }
}
