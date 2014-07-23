
<%@ page import="com.webkiosk.exam.Marks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'marks.label', default: 'Marks')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-marks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-marks" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list marks">
			
				<g:if test="${marksInstance?.exam}">
				<li class="fieldcontain">
					<span id="exam-label" class="property-label"><g:message code="marks.exam.label" default="Exam" /></span>
					
						<span class="property-value" aria-labelledby="exam-label"><g:link controller="exam" action="show" id="${marksInstance?.exam?.id}">${marksInstance?.exam?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${marksInstance?.marksObtained}">
				<li class="fieldcontain">
					<span id="marksObtained-label" class="property-label"><g:message code="marks.marksObtained.label" default="Marks Obtained" /></span>
					
						<span class="property-value" aria-labelledby="marksObtained-label"><g:fieldValue bean="${marksInstance}" field="marksObtained"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${marksInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="marks.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="student" action="show" id="${marksInstance?.student?.id}">${marksInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:marksInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${marksInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
