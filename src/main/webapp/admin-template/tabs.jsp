<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Tabs</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link  rel="stylesheet" href="admin-template/assets/css/style.min.css">

</head>

<body class="theme-blush">

<jsp:include page="header.jsp"></jsp:include>


<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Tabs</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Aero</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Components</a></li>
                        <li class="breadcrumb-item active">Tabs</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <!-- Example Tab -->
            <div class="row clearfix">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Example</strong> Tab</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <p>Tab with theme color otion</p>

                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs p-0 mb-3">
                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home">HOME</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#profile">PROFILE</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#messages">MESSAGES</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#settings">SETTINGS</a></li>
                            </ul>                        
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane in active" id="home">
                                    <b>Home Content</b>
                                    <p> Lorem ipsum dolor sit amet, Pri ut tation electram moderatius.
                                        Per te suavitate democritum. Duis nemore probatus ne quo, ad liber essent aliquid
                                        pro. Et eos nusquam accumsan, vide mentitum fabellas ne est, eu munere gubergren
                                        sadipscing mel. </p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="profile">
                                    <b>Profile Content</b>
                                    <p> Lorem ipsum dolor sit amet, ut duo atqui exerci dicunt, ius impedit mediocritatem an. Pri ut tation electram moderatius.
                                        Per te suavitate essent aliquid
                                        pro. Et eos nusquam accumsan, vide mentitum fabellas ne est, eu munere gubergren
                                        sadipscing mel. </p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="messages">
                                    <b>Message Content</b>
                                    <p> ius impedit mediocritatem an. Pri ut tation electram moderatius.
                                        Per te suavitate democritum. Duis nemore probatus ne quo, ad liber essent aliquid
                                        pro. Et eos nusquam accumsan, vide mentitum fabellas ne est, eu munere gubergren
                                        sadipscing mel. </p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="settings">
                                    <b>Settings Content</b>
                                    <p> Lorem ipsum dolor sit amet, ut duo atqui exerci dicunt, ius impedit mediocritatem an. Pri ut tation electram moderatius.
                                        Per te suavitate democritum. Duis nemore probatus ne quo, ad liber essent aliquid
                                        pro. </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Tabs With Only Icon Title -->
            <div class="row clearfix">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Tabs</strong> With Only Icon Title</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body"> 
                            <p>Tabs Warning, add class with <code>.nav-tabs-warning</code></p>
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs p-0 mb-3 nav-tabs-warning">
                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home_only_icon_title"><i class="zmdi zmdi-home"></i></a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#profile_only_icon_title"><i class="zmdi zmdi-account"></i></a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#messages_only_icon_title"><i class="zmdi zmdi-email"></i></a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#settings_only_icon_title"><i class="zmdi zmdi-settings"></i></a></li>
                            </ul>                        
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane in active" id="home_only_icon_title">
                                    <b>Home Content</b>
                                    <p> Lorem ipsum dolor sit amet, ut duo atqui exerci dicunt, ius impedit mediocritatem an. Pri ut tation electram moderatius.
                                        Per te suavitate democritum. Et eos nusquam accumsan, vide mentitum fabellas ne est, eu munere gubergren sadipscing mel. </p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="profile_only_icon_title">
                                    <b>Profile Content</b>
                                    <p> Lorem ipsum dolor sit amet, Pri ut tation electram moderatius. Per te suavitate democritum. Duis nemore probatus ne quo,
                                        vide mentitum fabellas ne est, eu munere gubergren sadipscing mel. </p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="messages_only_icon_title">
                                    <b>Message Content</b>
                                    <p> Lorem ipsum dolor sit amet, ut duo atqui exerci dicunt, ius impedit mediocritatem an. Pri ut tation electram moderatius.
                                        Per te suavitate pro. Et eos nusquam accumsan, vide mentitum fabellas ne est, eu munere gubergrensadipscing mel. </p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="settings_only_icon_title">
                                    <b>Settings Content</b>
                                    <p>Pri ut tation electram moderatius. Per te suavitate democritum. Duis nemore probatus ne quo, ad liber essent aliquid
                                        pro. Et eos nusquam accumsan, vide mentitum fabellas ne est, eu munere gubergren sadipscing mel. </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Tabs With Icon Title -->
            <div class="row clearfix">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Tabs</strong> With Icon Title</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <p>Tabs Success, add class with <code>.nav-tabs-success</code></p>
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs p-0 mb-3 nav-tabs-success" role="tablist">
                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home_with_icon_title"> <i class="zmdi zmdi-home"></i> HOME </a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#profile_with_icon_title"><i class="zmdi zmdi-account"></i> PROFILE </a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#messages_with_icon_title"><i class="zmdi zmdi-email"></i> MESSAGES </a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#settings_with_icon_title"><i class="zmdi zmdi-settings"></i> SETTINGS </a></li>
                            </ul>
                            
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane in active" id="home_with_icon_title"> <b>Home Content</b>
                                    <p> Lorem ipsum dolor sit amet, ut duo atqui exerci dicunt, ius impedit mediocritatem an. Pri ut tation electram moderatius.
                                        Per te suavitate democritum. Duis nemore probatus ne quo, ad liber essent aliquid
                                        pro. Et eos nusquam accumsan, vide mentitum fabellas ne est, eu munere gubergren
                                        sadipscing mel. </p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="profile_with_icon_title"> <b>Profile Content</b>
                                    <p> Lorem ipsum dolor sit amet, ut duo atqui exerci dicunt, ius impedit mediocritatem an. Pri ut tation electram moderatius.
                                        Per te suavitate democritum. Duis nemore probatus ne quo, ad liber essent aliquid
                                        pro. Et eos nusquam accumsan, vide mentitum fabellas ne est, eu munere gubergren
                                        sadipscing mel. </p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="messages_with_icon_title"> <b>Message Content</b>
                                    <p> Lorem ipsum dolor sit amet, ut duo atqui exerci dicunt, ius impedit mediocritatem an. Pri ut tation electram moderatius.
                                        Per te suavitate democritum. Duis nemore probatus ne quo, ad liber essent aliquid
                                        pro. Et eos nusquam accumsan, vide mentitum fabellas ne est, eu munere gubergren
                                        sadipscing mel. </p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="settings_with_icon_title"> <b>Settings Content</b>
                                    <p> Lorem ipsum dolor sit amet, ut duo atqui exerci dicunt, ius impedit mediocritatem an. Pri ut tation electram moderatius.
                                        Per te suavitate democritum. Duis nemore probatus ne quo, ad liber essent aliquid
                                        pro. Et eos nusquam accumsan, vide mentitum fabellas ne est, eu munere gubergren
                                        sadipscing mel. </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- Jquery Core Js --> 
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
</body>

</html>