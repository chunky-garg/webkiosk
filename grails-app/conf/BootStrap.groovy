import com.webkiosk.security.Role
import com.webkiosk.security.User
import com.webkiosk.security.UserRole
import grails.util.Holders
import org.apache.log4j.LogManager
import org.apache.log4j.PropertyConfigurator
import org.codehaus.groovy.grails.commons.cfg.ConfigurationHelper

class BootStrap {

    def springSecurityService
    def grailsApplication
    def dataMigrationService

    def init = { servletContext ->

//        File configFile = new File(Holders.config.application.configfile);
//
//        if (configFile.exists()) {
//            // Reset log manager
//            LogManager.resetConfiguration()
//            PropertyConfigurator.configure(configFile.toURI().toURL())
//            ConfigurationHelper.initConfig(grailsApplication.config)
//        }

        dataMigrationService.migrate()
    }
    def destroy = {
    }
}
