package com.webkiosk

import com.webkiosk.com.webkiosk.address.Address
import com.webkiosk.security.User

class Student extends User {

    Date doj
    Date dob

    Address address
    String phone




    static constraints = {
    }
}
