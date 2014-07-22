package com.webkiosk.dashboard

import com.webkiosk.security.User

class DashboardController {

    def springSecurityService
    def index() {

    User user = request.user
    return [userInstance:user]

    }
}
