package com.webkiosk

import com.webkiosk.exceptions.NoAccessException

class Error {

    public error(Exception e) {
        print("Catching error in error")
//        if(e instanceof NoAccessException ) {
////            render (view:("/error"))
//
//        }

    }

//    def error(NoAccessException e) {
//        print("Catching  NA error error")
////        if(e instanceof NoAccessException ) {
////            println("No Access instance")
////            e.printStackTrace()
////            render (status:403, text: "Access denied", view: '/layouts/error/403')
////            print("haha " + actionUri)
////            return true
////
////        }
//
//    }
}
