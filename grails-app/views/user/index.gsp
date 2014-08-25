
<%@ page import="com.webkiosk.security.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>
	<body>

        <section class="tile">
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-user" class="tile-header" role="main">
            <h1><strong><Entity name></strong> List</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-datatable table-bordered" id="drillDownDataTable">
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" class="sort-alpha" />
					
						<g:sortableColumn property="password" title="${message(code: 'user.password.label', default: 'Password')}" class="sort-alpha" />
					
						<th><g:message code="user.address.label" default="Address" class="no-sort"/></th>
					
						<g:sortableColumn property="dob" title="${message(code: 'user.dob.label', default: 'Dob')}" class="sort-alpha" />
					
						<g:sortableColumn property="doj" title="${message(code: 'user.doj.label', default: 'Doj')}" class="sort-alpha" />
					
						<g:sortableColumn property="phone" title="${message(code: 'user.phone.label', default: 'Phone')}" class="sort-alpha" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "address")}</td>
					
						<td><g:formatDate date="${userInstance.dob}" /></td>
					
						<td><g:formatDate date="${userInstance.doj}" /></td>
					
						<td>${fieldValue(bean: userInstance, field: "phone")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
				<g:paginate  total="${userInstanceCount ?: 0}"  />
		</div>
        </section>
	</body>
</html>
