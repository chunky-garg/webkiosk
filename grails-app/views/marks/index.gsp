
<%@ page import="com.webkiosk.exam.Marks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'marks.label', default: 'Marks')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>
	<body>

        <section class="tile">
		<a href="#list-marks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-marks" class="tile-header" role="main">
            <h1><strong><Entity name></strong> List</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-datatable table-bordered" id="drillDownDataTable">
			<thead>
					<tr>
					
						<th><g:message code="marks.exam.label" default="Exam" class="no-sort"/></th>
					
						<g:sortableColumn property="marksObtained" title="${message(code: 'marks.marksObtained.label', default: 'Marks Obtained')}" class="sort-alpha" />
					
						<th><g:message code="marks.student.label" default="Student" class="no-sort"/></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${marksInstanceList}" status="i" var="marksInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${marksInstance.id}">${fieldValue(bean: marksInstance, field: "exam")}</g:link></td>
					
						<td>${fieldValue(bean: marksInstance, field: "marksObtained")}</td>
					
						<td>${fieldValue(bean: marksInstance, field: "student")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
				<g:paginate  total="${marksInstanceCount ?: 0}"  />
		</div>
        </section>
	</body>
</html>
