package com.webkiosk.exam

import com.webkiosk.security.User
import grails.transaction.Transactional

@Transactional
class ExamService {

    List<Exam> getAllExamByFaculty(User user, Map filters, boolean pastExams = false) {

        def exams = Exam.createCriteria()
        def results = exams.list {
            course {
                fac
            }
            like("holderFirstName", "Fred%")
            and {
                between("balance", 500, 1000)
                eq("branch", "London")
            }
            maxResults(10)
            order("holderLastName", "desc")
        }

    }
}
