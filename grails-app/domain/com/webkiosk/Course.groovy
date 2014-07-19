package com.webkiosk

import com.webkiosk.batch.Batch

class Course {

    static belongsTo = [
           batch:Batch,
           subject:Subject
    ]
    String s = (String)

    static constraints = {
    }
}
