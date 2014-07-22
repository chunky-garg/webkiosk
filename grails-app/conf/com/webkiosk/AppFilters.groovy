package com.webkiosk

import com.sun.xml.internal.bind.v2.TODO
import com.webkiosk.exceptions.NoAccessException
import com.webkiosk.security.User

class AppFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
                //TODO check for login controller
                if(!request.userPrincipal && !actionName.equals('auth') && !controllerName.equals('login')) {
                    redirect(controller: 'login', action:'auth')
                    return false
                } else {
                    //do nothing
                }

                String username = request.userPrincipal?.getName()
                if(username) {
                User user = User.findByUsername(username)
                    request.user = user
                } else {

                }




            }
            after = { Map model ->
                if(model) {
                    model['userInstance'] = request.user
                }

            }
            afterView = { Exception e ->
                println("After view exception" + actionName)
                print("user" + request.user)
//                if(e instanceof NoAccessException ) {
//                    render (view:("/layouts/error/403"), model: [userInstance:request.user])
//                }

            }
        }
    }
}
