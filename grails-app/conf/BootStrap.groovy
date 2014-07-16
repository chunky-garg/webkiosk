import com.webkiosk.security.Role
import com.webkiosk.security.User
import com.webkiosk.security.UserRole

class BootStrap {

    def springSecurityService

    def init = { servletContext ->

        println("starting app")

        // Add roles for user
//        Role r1 = new Role(authority:"ROLE_MS_ADMIN", description:"Administrator access").save(failOnError: true)
//        Role r2 = new Role(authority:"ROLE_CLIENT_USER", description:"User access").save(failOnError: true)
//
//        User u1 = new User(username:'admin', password:springSecurityService.encodePassword('1'),  firstName:'Admin', lastName:'User', enabled:true).save(failOnError: true)
//        UserRole.create(u1, r1);
    }
    def destroy = {
    }
}
