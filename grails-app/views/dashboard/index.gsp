
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Webkiosk</title>
</head>

<body class="brownish-scheme">
<div id="wrap">
    <div class="row">
        <g:render template="/commons/header" model="[userInstance:userInstance]" />

        <div id="content" class="col-md-12">
            <!-- breadcrumbs -->
            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="index.html">Dashboard</a></li>
                    <li class="active">Overview</li>
                </ol>
            </div>
            <!-- /breadcrumbs -->

            <!-- submenu -->
            <div class="submenu">
                <h1>Dashboard</h1>
                <div class="collapsed">
                    <a href="#" id="submenutoggle"><h1>Dashboard <i class="fa fa-bars"></i></h1></a>
                </div>
                <ul class="nav nav-tabs">
                    <sec:ifAllGranted roles="ROLE_ADMIN_PRINCIPAL">
                        <nav:eachItem group="meta" var="item">
                            <li  class="${item.active ? 'current' : ''}">
                                <g:link controller="${item.controller}" action="${item.action}"><g:message code="${item.title}"/></g:link>
                            </li>
                        </nav:eachItem>
                    </sec:ifAllGranted>
                </ul>
            </div>
            <!-- /submenu -->

    </div>
        </div>


</body>
</html>