
<%@ page import="com.webkiosk.exam.Exam" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'exam.label', default: 'Exam')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-exam" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-exam" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list exam">
			
				<g:if test="${examInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="exam.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${examInstance?.course?.id}">${examInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${examInstance?.examType}">
				<li class="fieldcontain">
					<span id="examType-label" class="property-label"><g:message code="exam.examType.label" default="Exam Type" /></span>
					
						<span class="property-value" aria-labelledby="examType-label"><g:fieldValue bean="${examInstance}" field="examType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${examInstance?.maxMarks}">
				<li class="fieldcontain">
					<span id="maxMarks-label" class="property-label"><g:message code="exam.maxMarks.label" default="Max Marks" /></span>
					
						<span class="property-value" aria-labelledby="maxMarks-label"><g:fieldValue bean="${examInstance}" field="maxMarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${examInstance?.passMarks}">
				<li class="fieldcontain">
					<span id="passMarks-label" class="property-label"><g:message code="exam.passMarks.label" default="Pass Marks" /></span>
					
						<span class="property-value" aria-labelledby="passMarks-label"><g:fieldValue bean="${examInstance}" field="passMarks"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:examInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${examInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
