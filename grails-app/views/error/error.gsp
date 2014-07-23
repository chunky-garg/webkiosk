
<!DOCTYPE html>
<html>
<head>
    %{--<meta name="a" content="main">--}%
    <title> Access Denied in ERROR</title>
    <link rel="icon" type="image/x-ico" href="${resource(dir: 'images', file: 'favicon.ico')}" />
    <!-- Bootstrap -->

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-checkbox.css')}" type="text/css">--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'webkiosk.css')}" type="text/css">

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    %{--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>--}%
    %{--<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>--}%

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&amp;skin=sons-of-obsidian"></script>
    <script  rel="script"  src="${resource(dir: 'js/plugins/blockui', file: 'jquery.blockUI.js')}" type="text/javascript"></script>
</head>
<body>
<!-- Preloader -->
<div class="mask"><div id="loader"></div></div>
<!--/Preloader -->

<!-- Wrap all page content here -->
<div id="wrap">




    <!-- Make page fluid -->
    <div class="row">






        <!-- Page content -->
        <div id="content" class="col-md-12 full-page error">

            <div class="input-group search">
                <input type="text" class="form-control">
                <span class="input-group-btn">
                    <button class="btn btn-red" type="button">Search!</button>
                </span>
            </div><!-- /input-group -->


            <i class="fa fa-exclamation mark"></i>


            <h1 class="error">Error <strong>500</strong></h1>
            <p class="lead">Naaah, Dear User you does not have permission to access here</p>

            <div class="controls">
                <button class="btn btn-cyan"><i class="fa fa-refresh"></i> Try Again</button>
                <button class="btn btn-greensea"><i class="fa fa-home"></i> Return to home</button>
                <button class="btn btn-red"><i class="fa fa-envelope"></i> Contact Support</button>
            </div>


        </div>
        <!-- Page content end -->






    </div>
    <!-- Make page fluid-->




</div>
<!-- Wrap all page content end -->

</body>

</html>