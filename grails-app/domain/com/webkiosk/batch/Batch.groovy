package com.webkiosk.batch

class Batch {

    String name
    AcademicYear year
    Standard standard
    Section section

    static hasMany = [
        batchCourses:BatchCourse
    ]
    static constraints = {
    }

    public String toString() {

        if(!name) {
            return standard + " " + section + " - " + year
        }
        return name
    }
}
