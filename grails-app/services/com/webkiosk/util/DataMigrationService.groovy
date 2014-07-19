package com.webkiosk.util

import com.webkiosk.security.Role
import com.webkiosk.security.RoleGroup
import com.webkiosk.security.User
import com.webkiosk.security.UserRole
import com.webkiosk.user.Faculty
import com.webkiosk.user.Student
import grails.transaction.Transactional
import groovy.sql.Sql
import org.apache.commons.logging.LogFactory
import org.apache.commons.logging.Log

import java.util.logging.LogManager

@Transactional
class DataMigrationService {
    
    def dataSource
    def springSecurityService

    private static Log logr = LogFactory.getLog(this)

    def migrate() {
        checkAndMigrateDB(1, this.&migrateDB1_0)

    }

    private void migrateDB1_0(def sql) {

        //creating role groups

        RoleGroup student = new RoleGroup(name:"STUDENT")
        student.save()

        RoleGroup faculty = new RoleGroup(name:"FACULTY")
        faculty.save()

        RoleGroup mgmnt = new RoleGroup(name:"MANAGEMENT")
        mgmnt.save()

        RoleGroup admin = new RoleGroup(name:"ADMIN")
        admin.save()


        Map<String, RoleGroup> authorityList = [
                "ROLE_STUDENT_USER":student,
                "ROLE_STUDENT_ADMIN":student,
                "ROLE_FACULTY_USER":faculty,
                "ROLE_FACULTY_HEAD":faculty,
                "ROLE_FACULTY_ADMIN":faculty,
                "ROLE_ADMIN_USER":mgmnt,
                "ROLE_ADMIN_MASTER":mgmnt,
                "ROLE_ADMIN_PRINCIPAL":mgmnt,
                "ROLE_SUPER_ADMIN":admin
        ]

        authorityList.each { String authority, RoleGroup group ->
            Role role = new Role(authority: authority, group:group)
            role.save()
        }

        logr.info("Role added successfully")

        // Add roles for user
        Role adminRole = Role.findByAuthority("ROLE_ADMIN_PRINCIPAL")
        User u1 = new User(username:'manager', password:springSecurityService.passwordEncoder.encodePassword('test',null),
                           firstName:'Management', lastName:'Admin', enabled:true,
                           category: 'MANAGEMENT').save(failOnError: true)

        Role facultyRole = Role.findByAuthority("ROLE_FACULTY_ADMIN")
        User u2 = new User(username:'faculty', password:springSecurityService.encodePassword('test'),
                           firstName:'Faculty', lastName:'Admin', enabled:true,
                            category: 'FACULTY').save(failOnError: true)

        Role studentRole = Role.findByAuthority("ROLE_STUDENT_ADMIN")
        User u3 = new User(username:'student', password:springSecurityService.encodePassword('test'),
                           firstName:'Student', lastName:'Admin', enabled:true,
                           category: 'STUDENT').save(failOnError: true)

        Role systemRole = Role.findByAuthority("ROLE_SUPER_ADMIN")
        User u4 = new User(username:'admin', password:springSecurityService.encodePassword('test'),
                firstName:'System', lastName:'Admin', enabled:true,
                category: 'SYSTEM').save(failOnError: true)

        UserRole.create(u1,adminRole );
        UserRole.create(u2,facultyRole );
        UserRole.create(u3,studentRole );
        UserRole.create(u4,systemRole );

        Student stu = new Student(user: u3).save(failOnError: true)
        Faculty fac = new Faculty(user: u2).save(failOnError: true)

    }

    private Boolean checkAndMigrateDB(long dbId, def migrateClosure) {
        if (DbVersion.get(dbId)) return true
        def sql = new Sql(dataSource)
        try{
            //Try inserting record to db version with same primary key(1) to block access to code below by single app node
            int numRowsUpdate = 0
            try{
                numRowsUpdate = sql.executeUpdate("insert into dbversion (id, version, db_version) VALUES(${dbId}, 0, 0)")
            }
            catch(Exception ex){
                def firstDbVersion = DbVersion.get(dbId)
                if (firstDbVersion == null){
                    logr.error("DBMigration-${dbId}:Some other error in starting the migration. Please contact Pricemaster Admin.")
                    ex.printStackTrace()
                }
                else{
                    logr.debug("DBMigration-${dbId}:Some other node has started migration")
                }
                return false
            }
            if (numRowsUpdate > 0){
                logr.debug("DBMigration-${dbId}:Entering...")
                //First ever entry to db migration
                //The one succeeds go inside and do the work
                try{
                    migrateClosure(sql)
                }
                catch(Exception e){
                    logr.error("DBMigration-${dbId}:Migration failed. Restore the database and try again or contact Admin.")
                    e.printStackTrace()
                    return false
                }
                //And update the db_version to 1 in the end
                logr.debug("DBMigration-${dbId}:Marking completed")
                sql.executeUpdate("update dbversion set version=1, db_version=${dbId} where id=${dbId}")
                //this marks completion of process
                logr.debug("DBMigration-${dbId}:Completed")
                return true
            }
        }
        catch(Exception e){
            logr.error("Some other error in migration. Contact Admin.")
            e.printStackTrace()
            return false
        }
        finally{
            sql.close()
        }
    }
}
