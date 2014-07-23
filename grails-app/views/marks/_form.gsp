<%@ page import="com.webkiosk.exam.Marks" %>



<div class="form-group ${hasErrors(bean: marksInstance, field: 'exam', 'error')} required">
	<label class="col-sm-2 control-label" for="exam">
		<g:message code="marks.exam.label" default="Exam" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:select id="exam" name="exam.id" from="${com.webkiosk.exam.Exam.list()}" optionKey="id" required="" value="${marksInstance?.exam?.id}" class="many-to-one"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: marksInstance, field: 'marksObtained', 'error')} required">
	<label class="col-sm-2 control-label" for="marksObtained">
		<g:message code="marks.marksObtained.label" default="Marks Obtained" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:field name="marksObtained" value="${fieldValue(bean: marksInstance, field: 'marksObtained')}" required=""/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: marksInstance, field: 'student', 'error')} required">
	<label class="col-sm-2 control-label" for="student">
		<g:message code="marks.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:select id="student" name="student.id" from="${com.webkiosk.user.Student.list()}" optionKey="id" required="" value="${marksInstance?.student?.id}" class="many-to-one"/>
    </div>
</div>

