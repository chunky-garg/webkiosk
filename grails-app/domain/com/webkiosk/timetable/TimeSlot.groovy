package com.webkiosk.timetable

import java.sql.Time

class TimeSlot {

    Time startTime
    Time endTime

    static constraints = {
    }

    public String toString() {
        startTime.toString() + " - " + endTime.toString()
    }
}
