package com.webkiosk.exceptions

/**
 * Created by chunkygarg on 31/07/14.
 */
class InvalidTypeException extends ApplicationException {

    InvalidTypeException() {
        super("")
    }

    InvalidTypeException(String message) {
        super(message)
    }
}
