package com.webkiosk

import com.webkiosk.batch.Batch

class Course {

    static belongsTo = [
           batch:Batch,
           subject:Subject
    ]

    static constraints = {
    }

    public String toString() {
        return ("" +subject + " : " + batch)
    }
}
