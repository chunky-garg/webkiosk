package com.webkiosk.batch


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SectionController {

    static navigation = [
            group:'meta',
            order:3,
            action:'index',
            title: "navigation.metadata.section",
            isVisible: { springSecurityService.isLoggedIn()}
    ]

//    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def scaffold=true

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Section.list(params), model: [sectionInstanceCount: Section.count(), userInstance: request.user]
    }

    def show(Section sectionInstance) {
        respond sectionInstance
    }

    def create() {
        respond new Section(params), model: [userInstance:request.user]
    }

    @Transactional
    def save(Section sectionInstance) {
        if (sectionInstance == null) {
            notFound()
            return
        }

        if (sectionInstance.hasErrors()) {
            respond sectionInstance.errors, view: 'create'
            return
        }

        sectionInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sectionInstance.label', default: 'Section'), sectionInstance.id])
                redirect sectionInstance
            }
            '*' { respond sectionInstance, [status: CREATED] }
        }
    }

    def edit(Section sectionInstance) {
        respond sectionInstance
    }

    @Transactional
    def update(Section sectionInstance) {
        if (sectionInstance == null) {
            notFound()
            return
        }

        if (sectionInstance.hasErrors()) {
            respond sectionInstance.errors, view: 'edit'
            return
        }

        sectionInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Section.label', default: 'Section'), sectionInstance.id])
                redirect sectionInstance
            }
            '*' { respond sectionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Section sectionInstance) {

        if (sectionInstance == null) {
            notFound()
            return
        }

        sectionInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Section.label', default: 'Section'), sectionInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sectionInstance.label', default: 'Section'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
