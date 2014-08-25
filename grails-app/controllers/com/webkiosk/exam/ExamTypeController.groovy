package com.webkiosk.exam


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ExamTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    static navigation = [

            group:'admin',
            order:5,
            action:'index',
            title: "Exam Types",
            isVisible: { springSecurityService.isLoggedIn()}
    ]

    def scaffold = true
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ExamType.list(params), model: [examTypeInstanceCount: ExamType.count()]
    }

    def show(ExamType examTypeInstance) {
        respond examTypeInstance
    }

    def create() {
        respond new ExamType(params)
    }

    @Transactional
    def save(ExamType examTypeInstance) {
        if (examTypeInstance == null) {
            notFound()
            return
        }

        if (examTypeInstance.hasErrors()) {
            respond examTypeInstance.errors, view: 'create'
            return
        }

        examTypeInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'examTypeInstance.label', default: 'ExamType'), examTypeInstance.id])
                redirect examTypeInstance
            }
            '*' { respond examTypeInstance, [status: CREATED] }
        }
    }

    def edit(ExamType examTypeInstance) {
        respond examTypeInstance
    }

    @Transactional
    def update(ExamType examTypeInstance) {
        if (examTypeInstance == null) {
            notFound()
            return
        }

        if (examTypeInstance.hasErrors()) {
            respond examTypeInstance.errors, view: 'edit'
            return
        }

        examTypeInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ExamType.label', default: 'ExamType'), examTypeInstance.id])
                redirect examTypeInstance
            }
            '*' { respond examTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ExamType examTypeInstance) {

        if (examTypeInstance == null) {
            notFound()
            return
        }

        examTypeInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ExamType.label', default: 'ExamType'), examTypeInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'examTypeInstance.label', default: 'ExamType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
