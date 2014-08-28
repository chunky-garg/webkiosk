package com.webkiosk.batch

class AcademicYear {

    String name
    boolean isCurrent = false
    Date startDate
    Date endDate

    static constraints = {
        startDate nullable: true
        endDate nullable: true
    }
}
