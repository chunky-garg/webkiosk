<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
    <title>  <g:layoutTitle/></title>

    <link rel="icon" type="image/x-ico" href="${resource(dir: 'images', file: 'favicon.ico')}" />
    <!-- Bootstrap -->

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'animate.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-checkbox.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'webkiosk.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'chosen.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'chosen-bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'dataTables.bootstrap.css')}" type="text/css">

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

    %{--<link rel="stylesheet" href="css/rickshaw.min.css">--}%
    %{--<link rel="stylesheet" href="css/summernote.css">--}%
    %{--<link rel="stylesheet" href="css/summernote-bs3.css">--}%
    %{--<link rel="stylesheet" href="css/owl.carousel.css">--}%
    %{--<link rel="stylesheet" href="css/owl.theme.css">--}%
    %{--<link rel="stylesheet" href="js/plugins/tabdrop/css/tabdrop.css">--}%

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script  rel="script"  src="${resource(dir: 'js', file: 'bootstrap.min.js')}" type="text/javascript"></script>
    <script  rel="script"  src="${resource(dir: 'js/plugins', file: 'jquery.nicescroll.min.js')}" type="text/javascript"></script>
    <script  rel="script"  src="${resource(dir: 'js', file: 'webkiosk.min.js')}" type="text/javascript"></script>
    <script  rel="script"  src="${resource(dir: 'js/plugins/blockui', file: 'jquery.blockUI.js')}" type="text/javascript"></script>
    %{--<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&amp;skin=sons-of-obsidian"></script>--}%


    <g:layoutHead/>
    <r:layoutResources />

</head>
	<body class="brownish-scheme">
    <div id="wrap">
    <div class="row">

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">



    <!-- Branding -->
    <div class="navbar-header col-md-2">
        <a class="navbar-brand" href="index.html">
            <strong>WEB</strong> <span class="divider vertical"></span> KIOSK
        </a>
        <div class="sidebar-collapse">
            <a href="#">
                <i class="fa fa-bars"></i>
            </a>
        </div>
    </div>
    <!-- Branding end -->


    <!-- .nav-collapse -->
    <div class="navbar-collapse">



    <!-- Content collapsing at 768px to sidebar -->
    <div class="collapsing-content">




    <!-- Quick Actions -->
    <ul class="nav navbar-nav">
        <li class="divided">
            <a href="#" class="page-refresh"><i class="fa fa-refresh"></i></a>
            <span class="divider vertical"></span>
        </li>

        <li class="dropdown quick-action tasks">
            <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                <i class="fa fa-tasks"></i>
                <span class="overlay-label green">5</span>
            </a>
            <ul class="dropdown-menu wide arrow green nopadding">
                <li><h1>You have <strong>5</strong> new tasks</h1></li>
                <li>
                    <a href="#">
                        <div class="task-info">
                            <div class="desc">Layout</div>
                            <div class="percent">80%</div>
                        </div>
                        <div class="progress progress-striped progress-thin">
                            <div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                <span class="sr-only">40% Complete (success)</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info">
                            <div class="desc">Schemes</div>
                            <div class="percent">15%</div>
                        </div>
                        <div class="progress progress-striped active progress-thin">
                            <div class="progress-bar progress-bar-cyan" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 15%">
                                <span class="sr-only">45% Complete</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info">
                            <div class="desc">Forms</div>
                            <div class="percent">5%</div>
                        </div>
                        <div class="progress progress-striped progress-thin">
                            <div class="progress-bar progress-bar-orange" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 5%">
                                <span class="sr-only">5% Complete (warning)</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info">
                            <div class="desc">JavaScript</div>
                            <div class="percent">30%</div>
                        </div>
                        <div class="progress progress-striped progress-thin">
                            <div class="progress-bar progress-bar-red" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                <span class="sr-only">30% Complete (danger)</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info">
                            <div class="desc">Dropdowns</div>
                            <div class="percent">60%</div>
                        </div>
                        <div class="progress progress-striped progress-thin">
                            <div class="progress-bar progress-bar-amethyst" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                <span class="sr-only">60% Complete</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li><a href="#">Check all tasks <i class="fa fa-angle-right"></i></a></li>
            </ul>
        </li>

        <li class="dropdown quick-action notifications">
            <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                <i class="fa fa-bell"></i>
                <span class="overlay-label orange">12</span>
            </a>
            <ul class="dropdown-menu wide arrow orange nopadding">
                <li><h1>You have <strong>12</strong> new notifications</h1></li>

                <li>
                    <a href="#">
                        <span class="label label-green"><i class="fa fa-user"></i></span>
                        New user registered.
                        <span class="small">18 mins</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="label label-red"><i class="fa fa-power-off"></i></span>
                        Server down.
                        <span class="small">27 mins</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="label label-orange"><i class="fa fa-plus"></i></span>
                        New order.
                        <span class="small">36 mins</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="label label-cyan"><i class="fa fa-power-off"></i></span>
                        Server restared.
                        <span class="small">45 mins</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="label label-amethyst"><i class="fa fa-power-off"></i></span>
                        Server started.
                        <span class="small">50 mins</span>
                    </a>
                </li>

                <li><a href="#">Check all notifications <i class="fa fa-angle-right"></i></a></li>
            </ul>
        </li>

    </ul>
    <!-- Quick Actions end -->





    <!-- Search -->
    <div class="search">
        <input type="text" placeholder="&#61442; Search in dashboard...">
    </div>
    <!-- Search end -->





    <!-- User Controls -->
    <div class="user-controls">
        <ul>


            <li class="dropdown messages">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <span class="badge badge-red" id="user-new-messages">3</span> ${userInstance.firstName} <strong>${userInstance.lastName}</strong> <i class="fa fa-angle-down"></i>
                </a>
                <div class="profile-photo">
                    <g:img file="${userInstance.tzDpPath}" ></g:img>
                </div>
                <ul class="dropdown-menu wide arrow red nopadding">
                    <li><h1>You have <strong>3</strong> new messages</h1></li>

                    <li>
                        <a class="cyan" href="#">
                            <div class="profile-photo">
                                <img src="../images/ici-avatar.jpg" alt />
                            </div>
                            <div class="message-info">
                                <span class="sender">Ing. Imrich Kamarel</span>
                                <span class="time">12 mins</span>
                                <div class="message-content">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum</div>
                            </div>
                        </a>
                    </li>

                    <li>
                        <a class="green" href="#">
                            <div class="profile-photo">
                                <img src="../images/arnold-avatar.jpg" alt />
                            </div>
                            <div class="message-info">
                                <span class="sender">Arnold Karlsberg</span>
                                <span class="time">1 hour</span>
                                <div class="message-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
                            </div>
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <div class="profile-photo">
                                <img src="images/profile-photo.jpg" alt />
                            </div>
                            <div class="message-info">
                                <span class="sender">${userInstance.firstName} ${userInstance.lastName}</span>
                                <span class="time">3 hours</span>
                                <div class="message-content">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</div>
                            </div>
                        </a>
                    </li>

                    <li>
                        <a class="red" href="#">
                            <div class="profile-photo">
                                <img src="images/peter-avatar.jpg" alt />
                            </div>
                            <div class="message-info">
                                <span class="sender">Peter Kay</span>
                                <span class="time">5 hours</span>
                                <div class="message-content">Ut enim ad minim veniam, quis nostrud exercitation</div>
                            </div>
                        </a>
                    </li>

                    <li>
                        <a class="orange" href="#">
                            <div class="profile-photo">
                                <img src="images/george-avatar.jpg" alt />
                            </div>
                            <div class="message-info">
                                <span class="sender">George McCain</span>
                                <span class="time">6 hours</span>
                                <div class="message-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
                            </div>
                        </a>
                    </li>


                    <li><a href="#">Check all messages <i class="fa fa-angle-right"></i></a></li>
                </ul>
            </li>

            <li class="dropdown settings">
                <a class="dropdown-toggle options" data-toggle="dropdown" href="#">
                    <i class="fa fa-cog"></i>
                </a>

                <ul class="dropdown-menu arrow">

                    <li>
                        <h3>Color schemes:</h3>
                        <ul id="color-schemes">
                            <li><a href="#" class="brownish-scheme" title="Brownish"></a></li>
                            <li><a href="#" class="darkgrey-scheme" title="Dark Grey"></a></li>
                            <li><a href="#" class="lightgrey-scheme" title="Light Grey"></a></li>
                            <li><a href="#" class="cyan-scheme" title="Cyan"></a></li>
                            <li><a href="#" class="red-scheme" title="Red"></a></li>
                            <li><a href="#" class="orange-scheme" title="Orange"></a></li>
                            <li><a href="#" class="green-scheme" title="Green"></a></li>
                            <li><a href="#" class="amethyst-scheme" title="Amethyst"></a></li>
                        </ul>
                    </li>

                    <li class="divider"></li>

                    <li>
                        <a href="#"><i class="fa fa-user"></i> Profile</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-calendar"></i> Calendar</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-envelope"></i> Inbox <span class="badge badge-red" id="user-inbox">3</span></a>
                    </li>

                    <li class="divider"></li>

                    <li>
                        <g:link controller="logout"> <i class="fa fa-power-off"> Logout</i></g:link>
                    </li>
                </ul>
            </li>

        </ul>
    </div>
    <!-- User Controls end -->





    </div>
    <!-- /Content collapsing at 768px to sidebar -->



    <!-- Sidebar -->
    <ul class="nav navbar-nav side-nav" id="navigation">
    <li class="collapsed-content">
        <!-- Collapsed content pasting here at 768px -->
    </li>
    <li class="user-status status-online" id="user-status">
        <div class="profile-photo">
            <g:img file="${userInstance.tzDpPath}" ></g:img>
        </div>
        <div class="user">
            ${userInstance.firstName} <strong>${userInstance.lastName}</strong>
            <span class="role">Administrator</span>
            <div class="status">
                <ul>
                    <li class="dropdown change-status">
                        <a class="dropdown-toggle my-status" data-toggle="dropdown" href="#">Online</a>

                        <ul class="dropdown-menu arrow">
                            <li>
                                <a href="#" id="status-online" data-status="status-online">Online</a>
                            </li>

                            <li>
                                <a href="#" id="status-away" data-status="status-away">Away</a>
                            </li>

                            <li>
                                <a href="#" id="status-invisible" data-status="status-invisible">Invisible</a>
                            </li>
                        </ul>
                    </li>
                </ul>


            </div>
        </div>
    </li>
    <li class="${controllerName == 'dashboard'?'active':''}">
        <a href="#"  title="Dashboard">
            <i class="fa fa-dashboard">
                <span class="overlay-label red"></span>
            </i>
            Dashboard
        </a>
    </li>
    <li class="dropdown ${controllerName == 'result'?'active open':''}">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Examination">
            <i class="fa fa-list">
                <span class="overlay-label green"></span>
            </i>
            Results <b class="fa fa-angle-left dropdown-arrow"></b>
        </a>
        <ul class="dropdown-menu active">
            <li  class="${actionName == 'view'?'active':''}">
            <g:link title="View" controller="result" action="view">
                    <i class="fa fa-thumb-tack"><span class="overlay-label green80"></span></i>
                    View
            </g:link>
            </li>
            <li  class="${actionName == 'upload'?'active':''}">
                <g:link title="Upload" controller="result" action="upload">
                    <i class="fa fa-check-square"><span class="overlay-label green60"></span></i>
                    Upload
                </g:link>
            </li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Interface">
            <i class="fa fa-pencil">
                <span class="overlay-label amethyst"></span>
            </i>
            Examination <b class="fa fa-angle-left dropdown-arrow"></b>
        </a>
        <ul class="dropdown-menu">
            <li>
                <a href="ui-elements.html" title="UI Elements">
                    <i class="fa fa-puzzle-piece"><span class="overlay-label amethyst80"></span></i>
                    UI Elements
                </a>
            </li>
            <li>
                <a href="typography.html" title="Typography">
                    <i class="fa fa-font"><span class="overlay-label amethyst60"></span></i>
                    Typography
                </a>
            </li>
            <li>
                <a href="tiles.html" title="Tiles">
                    <i class="fa fa-th"><span class="overlay-label amethyst40"></span></i>
                    Tiles
                </a>
            </li>
        </ul>
    </li>
    <li>
        <a href="buttons.html" title="Buttons & Icons">
            <i class="fa fa-calendar">
                <span class="overlay-label orange"></span>
            </i>
            Calendar
        </a>
    </li>

    <li>
        <a href="login.html" title="Login Page">
            <i class="fa fa-user"><span class="overlay-label drank80"></span></i>
            Planner
        </a>
    </li>

    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Example Pages">
            <i class="fa fa-user">
                <span class="overlay-label drank"></span>
            </i>
            Profile <b class="fa fa-angle-left dropdown-arrow"></b>
        </a>
        <ul class="dropdown-menu">

            <li>
                <a href="calendar.html" title="Calendar">
                    <i class="fa fa-calendar"><span class="overlay-label drank60"></span></i>
                    Calendar
                </a>
            </li>
            <li>
                <a href="page404.html" title="Page 404">
                    <i class="fa fa-exclamation-circle"><span class="overlay-label drank40"></span></i>
                    Page 404
                </a>
            </li>
            <li>
                <a href="gallery.html" title="Gallery">
                    <i class="fa fa-camera"><span class="overlay-label drank20"></span></i>
                    Gallery
                </a>
            </li>
            <li>
                <a href="timeline.html" title="Timeline">
                    <i class="fa fa-clock-o"><span class="overlay-label drank20"></span></i>
                    Timeline
                </a>
            </li>
            <li class="dropdown-submenu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown-submenu" title="Mail">
                    <i class="fa fa-envelope"><span class="overlay-label drank20"></span></i>
                    Mail <b class="fa fa-angle-left dropdown-arrow"></b>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="mail.html" title="Vertical View">
                            <i class="fa fa-level-up"></i>
                            Vertical View
                        </a>
                    </li>
                    <li>
                        <a href="mail-horizontal.html" title="Horizontal View">
                            <i class="fa fa-level-up"></i>
                            Horizontal View
                        </a>
                    </li>
                </ul>
            </li>
            <li class="dropdown-submenu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown-submenu" title="Maps">
                    <i class="fa fa-map-marker"><span class="overlay-label drank20"></span></i>
                    Profile <b class="fa fa-angle-left dropdown-arrow"></b>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="vector-maps.html" title="Vector Maps">
                            <i class="fa fa-level-up"></i>
                            Vector Maps
                        </a>
                    </li>
                    <li>
                        <a href="google-maps.html" title="Google Maps">
                            <i class="fa fa-level-up"></i>
                            Google Maps
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </li>
    <li>
        <a href="widgets.html" title="Widgets">
            <i class="fa fa-envelope">
                <span class="overlay-label hotpink"></span>
            </i>
            Mail
        </a>
    </li>
    <li>
        <a href="charts.html" title="Charts & Graphs">
            <i class="fa fa-bar-chart-o">
                <span class="overlay-label dutch"></span>
            </i>
            Analytics
        </a>
    </li>

    <li>
        <a href="datatables.html" title="DataTables">
            <i class="fa fa-lightbulb-o"><span class="overlay-label greensea60"></span></i>
            Ideabook
        </a>
    </li>
    </ul>
    <!-- Sidebar end -->





    </div>
    <!--/.nav-collapse -->
    </div>

    <div tabindex="5000" style="overflow: hidden; padding-left: 265px;" id="content" class="col-md-12">

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
                    <li  class="${item.active ? 'active' : ''}">
                        <g:link controller="${item.controller}" action="${item.action}"><g:message code="${item.title}"/></g:link>
                    </li>
                </nav:eachItem>
            </sec:ifAllGranted>

            <sec:ifAllGranted roles="ROLE_FACULTY_ADMIN">
            <nav:eachItem group="faculty" var="item">
                <li  class="${item.active ? 'active' : ''}">
                    <g:link controller="${item.controller}" action="${item.action}"><g:message code="${item.title}"/></g:link>
                </li>
            </nav:eachItem>
            </sec:ifAllGranted>
        </ul>
    </div>
    <!-- /submenu -->


    <div class="main">
        <g:if test="${flash.message}">
            <g:if test = "${flash.status == 'ERROR'}">
                <div class="alert alert-red">
            </g:if>
            <g:else>
                <div class="alert alert-success">
            </g:else>

            ${flash.message}
            </div>
        </g:if>

        <g:layoutBody/>
    </div>

                <div style="text-align: center; background-color: #d6d2cc; text-decoration-color: #7d7264" class="footer" role="contentinfo">
                   <span >All rights reserved </span>
                </div>
                <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"></g:message></div>
                <g:javascript library="application"/>
                <g:javascript library="application"/>
            </div>
         </div>
    </div>

    <r:layoutResources />
	</body>
</html>
