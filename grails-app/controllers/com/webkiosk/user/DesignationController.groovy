package com.webkiosk.user



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DesignationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    static navigation = [

            group:'admin',
            order:5,
            action:'index',
            title: "Designation",
            isVisible: { springSecurityService.isLoggedIn()}
    ]

    def scaffold = true

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Designation.list(params), model:[designationInstanceCount: Designation.count()]
    }

    def show(Designation designationInstance) {
        respond designationInstance
    }

    def create() {
        respond new Designation(params)
    }

    @Transactional
    def save(Designation designationInstance) {
        if (designationInstance == null) {
            notFound()
            return
        }

        if (designationInstance.hasErrors()) {
            respond designationInstance.errors, view:'create'
            return
        }

        designationInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'designationInstance.label', default: 'Designation'), designationInstance.id])
                redirect designationInstance
            }
            '*' { respond designationInstance, [status: CREATED] }
        }
    }

    def edit(Designation designationInstance) {
        respond designationInstance
    }

    @Transactional
    def update(Designation designationInstance) {
        if (designationInstance == null) {
            notFound()
            return
        }

        if (designationInstance.hasErrors()) {
            respond designationInstance.errors, view:'edit'
            return
        }

        designationInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Designation.label', default: 'Designation'), designationInstance.id])
                redirect designationInstance
            }
            '*'{ respond designationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Designation designationInstance) {

        if (designationInstance == null) {
            notFound()
            return
        }

        designationInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Designation.label', default: 'Designation'), designationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'designationInstance.label', default: 'Designation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
