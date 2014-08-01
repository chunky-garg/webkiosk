package com.webkiosk

import com.sun.xml.internal.bind.v2.TODO
import com.webkiosk.exceptions.NoAccessException
import com.webkiosk.security.User

class AppFilters {

    def springSecurityService

    def filters = {

        all(controller:'*', action:'*') {
            before = {
                //TODO check for login controller
                def user = springSecurityService.principal

                if(user instanceof String) {
                    if (!actionName.equals('auth') && !controllerName.equals('login')) {
                        redirect(controller: 'login', action: 'auth')
                        return false
                    }
                } else {
                    String username = springSecurityService.principal.getUsername()
                    if (username) {
                        user = User.findByUsername(username)
                        request.user = user
                    }
                }

            }
            after = { Map model ->
                if(model) {
                    model['userInstance'] = request.user
                }
                println("model:" + model)
            }
            afterView = { Exception e ->
                e?.printStackTrace()

            }
        }
    }
}
