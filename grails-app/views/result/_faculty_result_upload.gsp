<head>
    <link rel="stylesheet" href="../js/plugins/tabdrop/css/tabdrop.css">
    <link rel="stylesheet" href="../css/chosen.min.css">
    <link rel="stylesheet" href="../css/chosen-bootstrap.css">
    <link rel="stylesheet" href="../css/webkiosk.css">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/animate.min.css">
    <script src="../js/jquery.fileupload.js" type="text/javascript"></script>
    <script src="../js/bootstrap-fileupload.js" type="text/javascript"></script>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="../js/plugins/chosen/chosen.jquery.min.js"></script>
</head>


<div class="col-md-6" xmlns="http://www.w3.org/1999/html">
<section class="tile">
    <!-- Upload result Tile -->
    <div class="tile-header transparent">
        <h1><strong>Upload</strong> Result</h1>
        <div class="controls">
            <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
        </div>
    </div>
    <!-- /tile header -->

    <div class="col-lg-10">

        <g:form url="[action:'fileUpload', controller:'result']"  method="POST" enctype="multipart/form-data">
            <div class="input-group  margin-bottom-20" data-provides="fileupload">
                <div class="form-control" style="overflow: hidden"><span class="fileupload-preview"></span>
                </div><span class="btn btn-file" style="float: right" >
                <button class="fileupload-buttonbar btn btn-default" type="button">Select File</button>
                    <input type="file" /></span>
                </div>
            </div>

            <button type="submit" class="btn btn-cyan start" value="clicked">
                <i class="fa fa-upload"></i>
                <span> Start upload</span>
            </button>


        </g:form>

</section>
%{--</div>--}%


%{--<div class="col-md-6" xmlns="http://www.w3.org/1999/html">--}%
    <section class="tile">

        <form role="form">
        <div class="form-group">
            <label for="chosen">Select Examination </label>
            <g:select name="exam" data-placeholder="Select Examination..." tabindex="3" class="chosen-select form-control" id="chosen" from="${examList}"
                      optionKey="id" optionValue="toString()" />
        </div>
        </form>

        <g:link action="download" type="submit" class="btn btn-orange end" value="Download">
            <i class="fa fa-download"></i>
            <span> Download Template</span>
        </g:link>
    </section>
</div>





<div class="col-md-6" xmlns="http://www.w3.org/1999/html">

    <!-- Recent exams tile -->
    <section class="tile">

    <!-- tile header -->
    <div class="tile-header transparent">
        <h1><strong>Recent</strong> Exams</h1>
        <div class="controls">
            <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
        </div>
    </div>
    <!-- /tile header -->

    <div class="tile-widget nopadding">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs tabdrop">
            <li class="active"><a href="#users-tab" data-toggle="tab"><i class="fa fa-users"></i></a></li>
            <li><a href="#orders-tab" data-toggle="tab"><i class="fa fa-shopping-cart"></i></a></li>
            <li><a href="#messages-tab" data-toggle="tab"><i class="fa fa-envelope"></i></a></li>
            <li><a href="#tasks-tab" data-toggle="tab"><i class="fa fa-tasks"></i></a></li>
            <li><a href="#comments-tab" data-toggle="tab"><i class="fa fa-comments"></i></a></li>
        </ul>

        <!-- tile body -->
        <div class="tile-body tab-content nopadding">
            <!-- Tab panes -->

            <ul id="users-tab" class="tab-pane fade in active">
                <li>
                    <span class="date">08.01.2014</span>
                    <span class="icon"><i class="fa fa-user fa-lg amethyst-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">Peter Kay</a> ubanned</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">08.01.2014</span>
                    <span class="icon"><i class="fa fa-user fa-lg amethyst-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">Arnold Karlsberg</a> ubanned</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">06.01.2014</span>
                    <span class="icon"><i class="fa fa-user fa-lg red-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">Arnold Karlsberg</a> banned</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">04.01.2014</span>
                    <span class="icon"><i class="fa fa-user fa-lg cyan-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">Ing. Imrich Kamarel</a> has been updated</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">03.01.2014</span>
                    <span class="icon"><i class="fa fa-user fa-lg red-text"></i></span>
                    <span class="subject">New User <a href="#" class="maincolor">Arnold Karlsberg</a> registered</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">30.12.2013</span>
                    <span class="icon"><i class="fa fa-user fa-lg red-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">Peter Kay</a> banned</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">27.12.2013</span>
                    <span class="icon"><i class="fa fa-user fa-lg green-text"></i></span>
                    <span class="subject">New user <a href="#" class="maincolor">Peter Kay</a> registered</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">26.12.2013</span>
                    <span class="icon"><i class="fa fa-user fa-lg red-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">George McCain</a> banned</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">22.12.2013</span>
                    <span class="icon"><i class="fa fa-user fa-lg green-text"></i></span>
                    <span class="subject">New user <a href="#" class="maincolor">Ing. Imrich Kamarel</a> registered</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
            </ul>

            <ul id="orders-tab" class="tab-pane fade">
                <li>
                    <span class="date">01.01.2014</span>
                    <span class="icon"><i class="fa fa-shopping-cart fa-lg green-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">Arnold Karlsberg</a> make a new order for 116$ (<a href="#" class="maincolor">OR_00012014</a>)</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">23.12.2013</span>
                    <span class="icon"><i class="fa fa-shopping-cart fa-lg cyan-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">George McCain</a> change an order for 24$ (<a href="#" class="maincolor">OR_02172013</a>)</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">23.12.2013</span>
                    <span class="icon"><i class="fa fa-shopping-cart fa-lg green-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">George McCain</a> make a new order for 24$ (<a href="#" class="maincolor">OR_02172013</a>)</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">19.12.2013</span>
                    <span class="icon"><i class="fa fa-shopping-cart fa-lg red-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">Peter Kay</a> cancelled order for 312$ (<a href="#" class="maincolor">OR_02162013</a>)</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">18.12.2013</span>
                    <span class="icon"><i class="fa fa-shopping-cart fa-lg green-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">Peter Kay</a> make a new order for 312$ (<a href="#" class="maincolor">OR_02162013</a>)</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">14.12.2013</span>
                    <span class="icon"><i class="fa fa-shopping-cart fa-lg green-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">Ing. Imrich Kamarel</a> make a new order for 154$ (<a href="#" class="maincolor">OR_02152013</a>)</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
                <li>
                    <span class="date">11.12.2013</span>
                    <span class="icon"><i class="fa fa-shopping-cart fa-lg green-text"></i></span>
                    <span class="subject">User <a href="#" class="maincolor">Ing. Imrich Kamarel</a> make a new order for 65$ (<a href="#" class="maincolor">OR_02142013</a>)</span>
                    <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                </li>
            </ul>
        </div>

            <!-- / Nav tabs -->
    </div>
        </section>

    </div>
    <!-- /tile widget -->

 <script>
    $(function(){
        //initialize chosen
        $(".chosen-select").chosen({disable_search_threshold: 10});
    });
</script>
