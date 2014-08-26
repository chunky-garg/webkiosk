package com.webkiosk.course

class ChapterSection {

    String name;
    Double order

    ChapterSection parentSection

    static constraints = {
        parentSection nullable: true
    }
}
