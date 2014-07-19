package com.webkiosk.batch


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StandardController {

    static navigation = [
            group:'meta',
            order:3,
            action:'index',
            title: "navigation.metadata.standard",
            isVisible: { springSecurityService.isLoggedIn()}
    ]

//    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def scaffold=true

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Standard.list(params), model: [standardInstanceCount: Standard.count()]
    }

    def show(Standard standardInstance) {
        respond standardInstance
    }

    def create() {
        respond new Standard(params)
    }

    @Transactional
    def save(Standard standardInstance) {
        if (standardInstance == null) {
            notFound()
            return
        }

        if (standardInstance.hasErrors()) {
            respond standardInstance.errors, view: 'create'
            return
        }

        standardInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'standardInstance.label', default: 'Standard'), standardInstance.id])
                redirect standardInstance
            }
            '*' { respond standardInstance, [status: CREATED] }
        }
    }

    def edit(Standard standardInstance) {
        respond standardInstance
    }

    @Transactional
    def update(Standard standardInstance) {
        if (standardInstance == null) {
            notFound()
            return
        }

        if (standardInstance.hasErrors()) {
            respond standardInstance.errors, view: 'edit'
            return
        }

        standardInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Standard.label', default: 'Standard'), standardInstance.id])
                redirect standardInstance
            }
            '*' { respond standardInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Standard standardInstance) {

        if (standardInstance == null) {
            notFound()
            return
        }

        standardInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Standard.label', default: 'Standard'), standardInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'standardInstance.label', default: 'Standard'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
