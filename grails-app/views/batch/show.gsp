
<%@ page import="com.webkiosk.batch.Batch" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'batch.label', default: 'Batch')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-batch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-batch" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list batch">
			
				<g:if test="${batchInstance?.courses}">
				<li class="fieldcontain">
					<span id="courses-label" class="property-label"><g:message code="batch.courses.label" default="Courses" /></span>
					
						<g:each in="${batchInstance.courses}" var="c">
						<span class="property-value" aria-labelledby="courses-label"><g:link controller="course" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${batchInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="batch.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${batchInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchInstance?.section}">
				<li class="fieldcontain">
					<span id="section-label" class="property-label"><g:message code="batch.section.label" default="Section" /></span>
					
						<span class="property-value" aria-labelledby="section-label"><g:link controller="section" action="show" id="${batchInstance?.section?.id}">${batchInstance?.section?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchInstance?.standard}">
				<li class="fieldcontain">
					<span id="standard-label" class="property-label"><g:message code="batch.standard.label" default="Standard" /></span>
					
						<span class="property-value" aria-labelledby="standard-label"><g:link controller="standard" action="show" id="${batchInstance?.standard?.id}">${batchInstance?.standard?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="batch.year.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="year-label"><g:fieldValue bean="${batchInstance}" field="year"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:batchInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${batchInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
