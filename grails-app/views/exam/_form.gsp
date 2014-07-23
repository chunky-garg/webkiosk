<%@ page import="com.webkiosk.exam.Exam" %>



<div class="form-group ${hasErrors(bean: examInstance, field: 'course', 'error')} required">
	<label class="col-sm-2 control-label" for="course">
		<g:message code="exam.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:select id="course" name="course.id" from="${com.webkiosk.Course.list()}" optionKey="id" required="" value="${examInstance?.course?.id}" class="many-to-one"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: examInstance, field: 'examType', 'error')} ">
	<label class="col-sm-2 control-label" for="examType">
		<g:message code="exam.examType.label" default="Exam Type" />
		
	</label>
    <div class="col-sm-6">
	<g:textField name="examType" value="${examInstance?.examType}"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: examInstance, field: 'maxMarks', 'error')} required">
	<label class="col-sm-2 control-label" for="maxMarks">
		<g:message code="exam.maxMarks.label" default="Max Marks" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:field name="maxMarks" value="${fieldValue(bean: examInstance, field: 'maxMarks')}" required=""/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: examInstance, field: 'passMarks', 'error')} required">
	<label class="col-sm-2 control-label" for="passMarks">
		<g:message code="exam.passMarks.label" default="Pass Marks" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:field name="passMarks" value="${fieldValue(bean: examInstance, field: 'passMarks')}" required=""/>
    </div>
</div>

