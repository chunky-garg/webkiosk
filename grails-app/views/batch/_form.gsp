<%@ page import="com.webkiosk.batch.Batch" %>



<div class="form-group ${hasErrors(bean: batchInstance, field: 'courses', 'error')} ">
	<label class="col-sm-2 control-label" for="courses">
		<g:message code="batch.courses.label" default="Courses" />
		
	</label>
    <div class="col-sm-6">
	
<ul class="one-to-many">
<g:each in="${batchInstance?.courses?}" var="c">
    <li><g:link controller="course" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="course" action="create" params="['batch.id': batchInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'course.label', default: 'Course')])}</g:link>
</li>
</ul>

    </div>
</div>

<div class="form-group ${hasErrors(bean: batchInstance, field: 'name', 'error')} ">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="batch.name.label" default="Name" />
		
	</label>
    <div class="col-sm-6">
	<g:textField name="name" value="${batchInstance?.name}"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: batchInstance, field: 'section', 'error')} required">
	<label class="col-sm-2 control-label" for="section">
		<g:message code="batch.section.label" default="Section" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:select id="section" name="section.id" from="${com.webkiosk.batch.Section.list()}" optionKey="id" required="" value="${batchInstance?.section?.id}" class="many-to-one"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: batchInstance, field: 'standard', 'error')} required">
	<label class="col-sm-2 control-label" for="standard">
		<g:message code="batch.standard.label" default="Standard" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-6">
	<g:select id="standard" name="standard.id" from="${com.webkiosk.batch.Standard.list()}" optionKey="id" required="" value="${batchInstance?.standard?.id}" class="many-to-one"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: batchInstance, field: 'year', 'error')} ">
	<label class="col-sm-2 control-label" for="year">
		<g:message code="batch.year.label" default="Year" />
		
	</label>
    <div class="col-sm-6">
	<g:textField name="year" value="${batchInstance?.year}"/>
    </div>
</div>

