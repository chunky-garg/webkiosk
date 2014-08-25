<%@ page import="com.webkiosk.Subject" %>



<div class="form-group ${hasErrors(bean: subjectInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="subject.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:textField name="name" required="" value="${subjectInstance?.name}"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: subjectInstance, field: 'code', 'error')} required">
	<label class="col-sm-2 control-label" for="code">
		<g:message code="subject.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:textField name="code" required="" value="${subjectInstance?.code}"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: subjectInstance, field: 'department', 'error')} required">
	<label class="col-sm-2 control-label" for="department">
		<g:message code="subject.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:select id="department" name="department.id" from="${com.webkiosk.batch.Department.list()}" optionKey="id" required="" value="${subjectInstance?.department?.id}" class="many-to-one"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: subjectInstance, field: 'school', 'error')} required">
	<label class="col-sm-2 control-label" for="school">
		<g:message code="subject.school.label" default="School" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:select id="school" name="school.id" from="${com.webkiosk.School.list()}" optionKey="id" required="" value="${subjectInstance?.school?.id}" class="many-to-one"/>
    </div>
</div>

