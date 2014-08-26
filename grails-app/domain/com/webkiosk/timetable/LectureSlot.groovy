package com.webkiosk.timetable

import com.webkiosk.course.FacultyCourse
import com.webkiosk.course.Subject


class LectureSlot {

    WeekDay dayOfWeek
    TimeSlot timeSlot

    FacultyCourse facultyCourse


    static constraints = {
    }

    public String toString() {
        dayOfWeek.name() + " : " + timeSlot +", " + facultyCourse
    }
}
