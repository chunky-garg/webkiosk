package com.webkiosk.exam


import grails.test.mixin.*
import spock.lang.*

@TestFor(MarksController)
@Mock(Marks)
class MarksControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.marksInstanceList
        model.marksInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.marksInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        def marks = new Marks()
        marks.validate()
        controller.save(marks)

        then: "The create view is rendered again with the correct model"
        model.marksInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        marks = new Marks(params)

        controller.save(marks)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/marks/show/1'
        controller.flash.message != null
        Marks.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def marks = new Marks(params)
        controller.show(marks)

        then: "A model is populated containing the domain instance"
        model.marksInstance == marks
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def marks = new Marks(params)
        controller.edit(marks)

        then: "A model is populated containing the domain instance"
        model.marksInstance == marks
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        controller.update(null)

        then: "A 404 error is returned"
        status == 404

        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def marks = new Marks()
        marks.validate()
        controller.update(marks)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.marksInstance == marks

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        marks = new Marks(params).save(flush: true)
        controller.update(marks)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/marks/show/$marks.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        controller.delete(null)

        then: "A 404 is returned"
        status == 404

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def marks = new Marks(params).save(flush: true)

        then: "It exists"
        Marks.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(marks)

        then: "The instance is deleted"
        Marks.count() == 0
        response.redirectedUrl == '/marks/index'
        flash.message != null
    }
}