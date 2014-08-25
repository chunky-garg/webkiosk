
<%@ page import="com.webkiosk.Subject" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subject.label', default: 'Subject')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>
	<body>

        <section class="tile">
		<a href="#list-subject" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-subject" class="tile-header" role="main">
            <h1><strong><Entity name></strong> List</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-datatable table-bordered" id="drillDownDataTable">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'subject.name.label', default: 'Name')}" class="sort-alpha" />
					
						<g:sortableColumn property="code" title="${message(code: 'subject.code.label', default: 'Code')}" class="sort-alpha" />
					
						<th><g:message code="subject.department.label" default="Department" class="no-sort"/></th>
					
						<th><g:message code="subject.school.label" default="School" class="no-sort"/></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${subjectInstanceList}" status="i" var="subjectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${subjectInstance.id}">${fieldValue(bean: subjectInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: subjectInstance, field: "code")}</td>
					
						<td>${fieldValue(bean: subjectInstance, field: "department")}</td>
					
						<td>${fieldValue(bean: subjectInstance, field: "school")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
				<g:paginate  total="${subjectInstanceCount ?: 0}"  />
		</div>
        </section>
	</body>
</html>
