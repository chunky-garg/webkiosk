package com.webkiosk.course

import com.webkiosk.batch.Batch
import com.webkiosk.batch.BatchCourse
import com.webkiosk.batch.Standard
import com.webkiosk.course.Subject

class Course {

    Subject subject
    Standard standard
    boolean active = true
    boolean deleted = false

    static hasMany = [
            batchCourses:BatchCourse
    ]
    static constraints = {
        subject nullable: false
        standard nullable: false
    }

    public String toString() {
        return ("" +standard + " - " + subject)
    }
}
