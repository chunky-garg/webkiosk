
<%@ page import="com.webkiosk.exam.Exam" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'exam.label', default: 'Exam')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>
	<body>

        <section class="tile">
		<a href="#list-exam" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-exam" class="tile-header" role="main">
            <h1><strong>Exams</strong> List</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-datatable table-bordered" id="drillDownDataTable">
			<thead>
					<tr>
					
						<th><g:message code="exam.course.label" default="Course" class="no-sort"/></th>
					
						<g:sortableColumn property="examType" title="${message(code: 'exam.examType.label', default: 'Exam Type')}" class="sort-alpha" />
					
						<g:sortableColumn property="maxMarks" title="${message(code: 'exam.maxMarks.label', default: 'Max Marks')}" class="sort-alpha" />
					
						<g:sortableColumn property="passMarks" title="${message(code: 'exam.passMarks.label', default: 'Pass Marks')}" class="sort-alpha" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${examInstanceList}" status="i" var="examInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${examInstance.id}">${fieldValue(bean: examInstance, field: "course")}</g:link></td>
					
						<td>${fieldValue(bean: examInstance, field: "examType")}</td>
					
						<td>${fieldValue(bean: examInstance, field: "maxMarks")}</td>
					
						<td>${fieldValue(bean: examInstance, field: "passMarks")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
				<g:paginate  total="${examInstanceCount ?: 0}"  />
		</div>
        </section>
	</body>
</html>
