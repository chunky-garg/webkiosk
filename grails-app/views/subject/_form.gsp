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

