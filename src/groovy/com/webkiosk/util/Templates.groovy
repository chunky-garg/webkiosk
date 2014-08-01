package com.webkiosk.util

/**
 * Created by chunkygarg on 31/07/14.
 */
class Templates {

    static Map RESULT_COLUMN_MAP = [
            sheet:'Result',
            startRow: 1,
            columnMap:  [
                    'exam_code':'examCode',
                    'roll_number':'rollNo',
                    'marks_obtained':'marksObtained'
            ],
            dataType:  [
                    'exam_code':String.class,
                    'roll_number':String.class,
                    'marks_obtained':Double.class
            ]
    ]
}
