package com.webkiosk.exam


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MarksController {

    static navigation = [
            group:'faculty',
            order:1,
            action:'index',
            title: "Marks",
            isVisible: { springSecurityService.isLoggedIn()}
    ]

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def scaffold = true

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Marks.list(params), model: [marksInstanceCount: Marks.count()]
    }

    def show(Marks marksInstance) {
        respond marksInstance
    }

    def create() {
        respond new Marks(params)
    }

    @Transactional
    def save(Marks marksInstance) {
        if (marksInstance == null) {
            notFound()
            return
        }

        if (marksInstance.hasErrors()) {
            respond marksInstance.errors, view: 'create'
            return
        }

        marksInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'marksInstance.label', default: 'Marks'), marksInstance.id])
                redirect marksInstance
            }
            '*' { respond marksInstance, [status: CREATED] }
        }
    }

    def edit(Marks marksInstance) {
        respond marksInstance
    }

    @Transactional
    def update(Marks marksInstance) {
        if (marksInstance == null) {
            notFound()
            return
        }

        if (marksInstance.hasErrors()) {
            respond marksInstance.errors, view: 'edit'
            return
        }

        marksInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Marks.label', default: 'Marks'), marksInstance.id])
                redirect marksInstance
            }
            '*' { respond marksInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Marks marksInstance) {

        if (marksInstance == null) {
            notFound()
            return
        }

        marksInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Marks.label', default: 'Marks'), marksInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'marksInstance.label', default: 'Marks'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
