package com.webkiosk.api

import com.webkiosk.batch.Section
import com.webkiosk.exam.Exam
import com.webkiosk.exam.Marks
import com.webkiosk.security.User

class ResultController extends  com.webkiosk.Error{

    static navigation = [

                group:'nav.faculty',
                order:1,
                action:'index',
                title: "Results",
                isVisible: { springSecurityService.isLoggedIn()}
    ]

    static allowedMethods = [fileUpload: 'POST']

    def exportService
    def examService


    def view = {

        println("view")
        render( view:'view', model:[marksList:Marks.list()])
    }

    def upload = {
        println("view upload file")
        User user = request.user
        render (view:'upload', model: [userInstance:user, examList:examService.getAllExamination()])
    }

    def fileUpload = {
        print("Uploading file")
        User user = request.user
        flash.message = "Error in uploading file"
        flash.status = "ERROR"
        render (view: 'upload', controllerName:'result',model: [userInstance:user, examList:examService.getAllExamination(user.school)])
//        respond([:])
    }

    def download = {
        User user = request.user
        exportService.downloadResults(response)
        render (view: 'upload', controllerName:'result',model: [userInstance:user, examList:examService.getAllExamination(user.school)])
    }
}
