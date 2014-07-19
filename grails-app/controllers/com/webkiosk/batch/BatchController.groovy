package com.webkiosk.batch



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BatchController {

//    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    static navigation = [
            group:'meta',
            order:1,
            action:'index',
            title: "navigation.metadata.batch",
            isVisible: { springSecurityService.isLoggedIn()}
    ]

    def scaffold=true

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Batch.list(params), model:[batchInstanceCount: Batch.count()]
    }

    def show(Batch batchInstance) {
        respond batchInstance
    }

    def create() {
        respond new Batch(params), model: [userInstance:request.user]
    }

    @Transactional
    def save(Batch batchInstance) {
        if (batchInstance == null) {
            notFound()
            return
        }

        if (batchInstance.hasErrors()) {
            respond batchInstance.errors, view:'create'
            return
        }

        batchInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'batchInstance.label', default: 'Batch'), batchInstance.id])
                redirect batchInstance
            }
            '*' { respond batchInstance, [status: CREATED] }
        }
    }

    def edit(Batch batchInstance) {
        respond batchInstance
    }

    @Transactional
    def update(Batch batchInstance) {
        if (batchInstance == null) {
            notFound()
            return
        }

        if (batchInstance.hasErrors()) {
            respond batchInstance.errors, view:'edit'
            return
        }

        batchInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Batch.label', default: 'Batch'), batchInstance.id])
                redirect batchInstance
            }
            '*'{ respond batchInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Batch batchInstance) {

        if (batchInstance == null) {
            notFound()
            return
        }

        batchInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Batch.label', default: 'Batch'), batchInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'batchInstance.label', default: 'Batch'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
