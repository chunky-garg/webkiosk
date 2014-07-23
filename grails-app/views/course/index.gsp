
<%@ page import="com.webkiosk.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>
	<body>

        <section class="tile">
		<a href="#list-course" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-course" class="tile-header" role="main">
            <h1><strong>Course</strong> List</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-datatable table-bordered" id="drillDownDataTable">
			<thead>
					<tr>
					
						<th><g:message code="course.batch.label" default="Batch" class="no-sort"/></th>
					
						<th><g:message code="course.subject.label" default="Subject" class="no-sort"/></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${courseInstanceList}" status="i" var="courseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${courseInstance.id}">${fieldValue(bean: courseInstance, field: "batch")}</g:link></td>

						<td>${fieldValue(bean: courseInstance, field: "subject")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
				<g:paginate  total="${courseInstanceCount ?: 0}"  />
		</div>
        </section>
	</body>
</html>
