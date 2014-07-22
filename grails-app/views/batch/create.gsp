<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'batch.label', default: 'Batch')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
           <section class="tile">
		<a href="#create-batch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-batch" class="tile-header" role="main">
			<h1><strong><g:message code="default.create.label" args="[entityName]" /></strong></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${batchInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${batchInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
            <div class="tile-body">
			<g:form class="form-horizontal" url="[resource:batchInstance, action:'save']" >

                <g:render template="form"/>

                <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />

			</g:form>
		    </div>
            </div>
           </section>
        </body>
</html>
