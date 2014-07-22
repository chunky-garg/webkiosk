package com.webkiosk.exceptions

/**
 * Created by chunkygarg on 22/07/14.
 */
class ApplicationException extends RuntimeException {
    String message

     ApplicationException(String message) {
        this.message = message
    }
}
