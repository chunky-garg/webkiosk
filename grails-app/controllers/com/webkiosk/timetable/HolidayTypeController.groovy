package com.webkiosk.timetable



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HolidayTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond HolidayType.list(params), model:[holidayTypeInstanceCount: HolidayType.count()]
    }

    def show(HolidayType holidayTypeInstance) {
        respond holidayTypeInstance
    }

    def create() {
        respond new HolidayType(params)
    }

    @Transactional
    def save(HolidayType holidayTypeInstance) {
        if (holidayTypeInstance == null) {
            notFound()
            return
        }

        if (holidayTypeInstance.hasErrors()) {
            respond holidayTypeInstance.errors, view:'create'
            return
        }

        holidayTypeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'holidayTypeInstance.label', default: 'HolidayType'), holidayTypeInstance.id])
                redirect holidayTypeInstance
            }
            '*' { respond holidayTypeInstance, [status: CREATED] }
        }
    }

    def edit(HolidayType holidayTypeInstance) {
        respond holidayTypeInstance
    }

    @Transactional
    def update(HolidayType holidayTypeInstance) {
        if (holidayTypeInstance == null) {
            notFound()
            return
        }

        if (holidayTypeInstance.hasErrors()) {
            respond holidayTypeInstance.errors, view:'edit'
            return
        }

        holidayTypeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'HolidayType.label', default: 'HolidayType'), holidayTypeInstance.id])
                redirect holidayTypeInstance
            }
            '*'{ respond holidayTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(HolidayType holidayTypeInstance) {

        if (holidayTypeInstance == null) {
            notFound()
            return
        }

        holidayTypeInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'HolidayType.label', default: 'HolidayType'), holidayTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'holidayTypeInstance.label', default: 'HolidayType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
