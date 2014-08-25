package com.webkiosk.timetable


import com.webkiosk.course.Subject


class LectureSlot {

    WeekDay dayOfWeek
    TimeSlot timeSlot

    Subject.FacultyCourse facultyCourse


    static constraints = {
    }

    public String toString() {
        dayOfWeek.name() + " : " + timeSlot +", " + facultyCourse
    }
}
