package com.webkiosk.meta



import grails.test.mixin.*
import spock.lang.*

@TestFor(AffiliationBoardController)
@Mock(AffiliationBoard)
class AffiliationBoardControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.affiliationBoardInstanceList
            model.affiliationBoardInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.affiliationBoardInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def affiliationBoard = new AffiliationBoard()
            affiliationBoard.validate()
            controller.save(affiliationBoard)

        then:"The create view is rendered again with the correct model"
            model.affiliationBoardInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            affiliationBoard = new AffiliationBoard(params)

            controller.save(affiliationBoard)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/affiliationBoard/show/1'
            controller.flash.message != null
            AffiliationBoard.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def affiliationBoard = new AffiliationBoard(params)
            controller.show(affiliationBoard)

        then:"A model is populated containing the domain instance"
            model.affiliationBoardInstance == affiliationBoard
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def affiliationBoard = new AffiliationBoard(params)
            controller.edit(affiliationBoard)

        then:"A model is populated containing the domain instance"
            model.affiliationBoardInstance == affiliationBoard
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def affiliationBoard = new AffiliationBoard()
            affiliationBoard.validate()
            controller.update(affiliationBoard)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.affiliationBoardInstance == affiliationBoard

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            affiliationBoard = new AffiliationBoard(params).save(flush: true)
            controller.update(affiliationBoard)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/affiliationBoard/show/$affiliationBoard.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            status == 404

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def affiliationBoard = new AffiliationBoard(params).save(flush: true)

        then:"It exists"
            AffiliationBoard.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(affiliationBoard)

        then:"The instance is deleted"
            AffiliationBoard.count() == 0
            response.redirectedUrl == '/affiliationBoard/index'
            flash.message != null
    }
}
