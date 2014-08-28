package com.webkiosk.meta

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AffiliationBoardController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def scaffold = true

    static navigation = [

            group:'system',
            order:5,
            action:'index',
            title: "Affiliation Board",
            isVisible: { springSecurityService.isLoggedIn()}
    ]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AffiliationBoard.list(params), model:[affiliationBoardInstanceCount: AffiliationBoard.count()]
    }

    def show(AffiliationBoard affiliationBoardInstance) {
        respond affiliationBoardInstance
    }

    def create() {
        respond new AffiliationBoard(params)
    }

    @Transactional
    def save(AffiliationBoard affiliationBoardInstance) {
        if (affiliationBoardInstance == null) {
            notFound()
            return
        }

        if (affiliationBoardInstance.hasErrors()) {
            respond affiliationBoardInstance.errors, view:'create'
            return
        }

        affiliationBoardInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'affiliationBoardInstance.label', default: 'AffiliationBoard'), affiliationBoardInstance.id])
                redirect affiliationBoardInstance
            }
            '*' { respond affiliationBoardInstance, [status: CREATED] }
        }
    }

    def edit(AffiliationBoard affiliationBoardInstance) {
        respond affiliationBoardInstance
    }

    @Transactional
    def update(AffiliationBoard affiliationBoardInstance) {
        if (affiliationBoardInstance == null) {
            notFound()
            return
        }

        if (affiliationBoardInstance.hasErrors()) {
            respond affiliationBoardInstance.errors, view:'edit'
            return
        }

        affiliationBoardInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AffiliationBoard.label', default: 'AffiliationBoard'), affiliationBoardInstance.id])
                redirect affiliationBoardInstance
            }
            '*'{ respond affiliationBoardInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AffiliationBoard affiliationBoardInstance) {

        if (affiliationBoardInstance == null) {
            notFound()
            return
        }

        affiliationBoardInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AffiliationBoard.label', default: 'AffiliationBoard'), affiliationBoardInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'affiliationBoardInstance.label', default: 'AffiliationBoard'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
