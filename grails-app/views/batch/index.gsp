
<%@ page import="com.webkiosk.batch.Batch" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'batch.label', default: 'Batch')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>
	<body>

        <section class="tile">
		<a href="#list-batch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-batch" class="tile-header" role="main">
			<h1><strong>${entityName} </strong> List</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-datatable table-bordered" id="drillDownDataTable">
			<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'batch.name.label', default: 'Name')}" class="sort-alpha" />
					
						<th><g:message code="batch.section.label" default="Section" class="no-sort"/></th>
					
						<th><g:message code="batch.standard.label" default="Standard" class="no-sort"/></th>
					
						<g:sortableColumn property="year" title="${message(code: 'batch.year.label', default: 'Year')}" class="sort-alpha" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${batchInstanceList}" status="i" var="batchInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${batchInstance.id}">${fieldValue(bean: batchInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: batchInstance, field: "section")}</td>
					
						<td>${fieldValue(bean: batchInstance, field: "standard")}</td>
					
						<td>${fieldValue(bean: batchInstance, field: "year")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
				<g:paginate  total="${batchInstanceCount ?: 0}"  />
		</div>
        </section>
	</body>
</html>
