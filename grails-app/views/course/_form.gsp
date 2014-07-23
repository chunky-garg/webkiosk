<%@ page import="com.webkiosk.Course" %>



<div class="form-group ${hasErrors(bean: courseInstance, field: 'batch', 'error')} required">
	<label class="col-sm-2 control-label" for="batch">
		<g:message code="course.batch.label" default="Batch" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:select id="batch" name="batch.id" from="${com.webkiosk.batch.Batch.list()}" optionKey="id" required="" value="${courseInstance?.batch?.id}" class="many-to-one"/>
    </div>
</div>


<div class="form-group ${hasErrors(bean: courseInstance, field: 'subject', 'error')} required">
	<label class="col-sm-2 control-label" for="subject">
		<g:message code="course.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:select id="subject" name="subject.id" from="${com.webkiosk.Subject.list()}" optionKey="id" required="" value="${courseInstance?.subject?.id}" class="many-to-one"/>
    </div>
</div>

