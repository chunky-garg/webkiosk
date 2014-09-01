package com.webkiosk.batch


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AcademicYearController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    static navigation = [
            group:'admin',
            order:4,
            action:'index',
            title: "Academic year",
            isVisible: { springSecurityService.isLoggedIn()}
    ]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AcademicYear.list(params), model: [academicYearInstanceCount: AcademicYear.count()]
    }

    def show(AcademicYear academicYearInstance) {
        respond academicYearInstance
    }

    def create() {
        respond new AcademicYear(params)
    }

    @Transactional
    def save(AcademicYear academicYearInstance) {
        if (academicYearInstance == null) {
            notFound()
            return
        }

        if (academicYearInstance.hasErrors()) {
            respond academicYearInstance.errors, view: 'create'
            return
        }

        academicYearInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'academicYearInstance.label', default: 'AcademicYear'), academicYearInstance.id])
                redirect academicYearInstance
            }
            '*' { respond academicYearInstance, [status: CREATED] }
        }
    }

    def edit(AcademicYear academicYearInstance) {
        respond academicYearInstance
    }

    @Transactional
    def update(AcademicYear academicYearInstance) {
        if (academicYearInstance == null) {
            notFound()
            return
        }

        if (academicYearInstance.hasErrors()) {
            respond academicYearInstance.errors, view: 'edit'
            return
        }

        academicYearInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AcademicYear.label', default: 'AcademicYear'), academicYearInstance.id])
                redirect academicYearInstance
            }
            '*' { respond academicYearInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AcademicYear academicYearInstance) {

        if (academicYearInstance == null) {
            notFound()
            return
        }

        academicYearInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AcademicYear.label', default: 'AcademicYear'), academicYearInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'academicYearInstance.label', default: 'AcademicYear'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
