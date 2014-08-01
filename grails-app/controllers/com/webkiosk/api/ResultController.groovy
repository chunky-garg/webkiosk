package com.webkiosk.api

import com.webkiosk.batch.Section
import com.webkiosk.exam.Exam

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

    def view = {

        println("view")
        respond([:])
    }

    def upload = {
        println("view upload file")
        render (view:'upload', model: [userInstance:request.user, examList:Exam.list()])
    }

    def fileUpload = {
        print("Uploading file")
        render (view: 'upload', controllerName:'result',model: [userInstance:request.user, exams: Exam.list()])
//        respond([:])
    }

    def download = {

        exportService.downloadResults(response)
        render (view: 'upload', controllerName:'result',model: [userInstance:request.user, exams: Exam.list()])
    }
}
