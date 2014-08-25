package com.webkiosk.batch

import com.webkiosk.course.Course

class BatchCourse {

    static belongsTo = [
            batch:Batch,
            course:Course
    ]
    static constraints = {
    }
}
