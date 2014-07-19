package com.webkiosk

import com.sun.xml.internal.bind.v2.TODO
import com.webkiosk.security.User

class AppFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
                //TODO check for login controller
                String username = request.userPrincipal?.getName()
                if(username) {
                User user = User.findByUsername(username)
                    request.user = user
                   // redirect(controller: 'login', action: 'auth')
                }




            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
