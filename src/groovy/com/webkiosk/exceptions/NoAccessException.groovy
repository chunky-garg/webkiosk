package com.webkiosk.exceptions

/**
 * Created by chunkygarg on 22/07/14.
 */
class NoAccessException extends ApplicationException {


    NoAccessException() {
        super('Access Denied')
    }
}
