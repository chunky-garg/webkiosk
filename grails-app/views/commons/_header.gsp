<%--
  Created by IntelliJ IDEA.
  User: chunkygarg
  Date: 19/07/14
  Time: 1:32 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <link rel="icon" type="image/x-ico" href="${resource(dir: 'images', file: 'favicon.ico')}" />
    <!-- Bootstrap -->

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'animate.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-checkbox.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'webkiosk.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'chosen.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'chosen-bootstrap.css')}" type="text/css">

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
    <script src="js/bootstrap.min.js"></script>
    %{--<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&amp;skin=sons-of-obsidian"></script>--}%

    <script src="js/plugins/jquery.nicescroll.min.js"></script>

    <script src="js/plugins/blockui/jquery.blockUI.js"></script>
    <script src="js/webkiosk.min.js"></script>


</head>



<body>


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
                                <img src="images/ici-avatar.jpg" alt />
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
                                <img src="images/arnold-avatar.jpg" alt />
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
    <li class="dropdown open">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Dashboard">
            <i class="fa fa-dashboard">
                <span class="overlay-label red"></span>
            </i>
            Dashboard <b class="fa fa-angle-left dropdown-arrow"></b>
        </a>
        <ul class="dropdown-menu">
            <li class="active">
                <a href="index.html" title="Overview">
                    <i class="fa fa-eye"><span class="overlay-label red80"></span></i>
                    Overview
                </a>
            </li>
            <li>
                <a href="mail.html" title="Inbox">
                    <i class="fa fa-envelope"><span class="overlay-label red60"></span></i>
                    Inbox
                </a>
            </li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Forms">
            <i class="fa fa-list">
                <span class="overlay-label green"></span>
            </i>
            Forms <b class="fa fa-angle-left dropdown-arrow"></b>
        </a>
        <ul class="dropdown-menu">
            <li>
                <a href="form-elements.html" title="Common Elements">
                    <i class="fa fa-thumb-tack"><span class="overlay-label green80"></span></i>
                    Common Elements
                </a>
            </li>
            <li>
                <a href="validation-elements.html" title="Validation">
                    <i class="fa fa-check-square"><span class="overlay-label green60"></span></i>
                    Validation
                </a>
            </li>
            <li>
                <a href="form-wizard.html"  title="Form Wizard">
                    <i class="fa fa-shield"><span class="overlay-label green40"></span></i>
                    Form Wizard
                </a>
            </li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Interface">
            <i class="fa fa-pencil">
                <span class="overlay-label amethyst"></span>
            </i>
            Interface <b class="fa fa-angle-left dropdown-arrow"></b>
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
            <i class="fa fa-tint">
                <span class="overlay-label orange"></span>
            </i>
            Buttons & Icons
        </a>
    </li>
    <li>
        <a href="grid.html" title="Grid Layout">
            <i class="fa fa-th">
                <span class="overlay-label cyan"></span>
            </i>
            Grid Layout
        </a>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Tables">
            <i class="fa fa-th-large">
                <span class="overlay-label greensea"></span>
            </i>
            Tables <b class="fa fa-angle-left dropdown-arrow"></b>
        </a>
        <ul class="dropdown-menu">
            <li>
                <a href="tables.html" title="Bootstrap Tables">
                    <i class="fa fa-puzzle-piece"><span class="overlay-label greensea80"></span></i>
                    Bootstrap Tables
                </a>
            </li>
            <li>
                <a href="datatables.html" title="DataTables">
                    <i class="fa fa-lightbulb-o"><span class="overlay-label greensea60"></span></i>
                    DataTables
                </a>
            </li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Example Pages">
            <i class="fa fa-desktop">
                <span class="overlay-label drank"></span>
            </i>
            Example Pages <b class="fa fa-angle-left dropdown-arrow"></b>
        </a>
        <ul class="dropdown-menu">
            <li>
                <a href="login.html" title="Login Page">
                    <i class="fa fa-user"><span class="overlay-label drank80"></span></i>
                    Login Page
                </a>
            </li>
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
                    Maps <b class="fa fa-angle-left dropdown-arrow"></b>
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
            <i class="fa fa-play-circle">
                <span class="overlay-label hotpink"></span>
            </i>
            Widgets
        </a>
    </li>
    <li>
        <a href="charts.html" title="Charts & Graphs">
            <i class="fa fa-bar-chart-o">
                <span class="overlay-label dutch"></span>
            </i>
            Charts & Graphs
        </a>
    </li>
    </ul>
    <!-- Sidebar end -->





    </div>
    <!--/.nav-collapse -->





    </div>
    <!-- Fixed navbar end -->
</body>
</html>