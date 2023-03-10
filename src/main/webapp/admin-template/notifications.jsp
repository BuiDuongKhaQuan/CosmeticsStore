<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Notification</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet" href="admin-template/assets/css/style.min.css">

</head>

<body class="theme-blush">

<jsp:include page="header.jsp"></jsp:include>



<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Notification</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Aero</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Components</a></li>
                        <li class="breadcrumb-item active">Notification</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2> <strong>Notification</strong> Positions</h2>
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
                            <div class="jsdemo-notification-button">
                                <button type="button" class="btn btn-raised m-b-10 btn-primary waves-effect" data-placement-from="top" data-placement-align="left" data-animate-enter="" data-animate-exit="" data-color-name="bg-black"> TOP LEFT </button>
                                <button type="button" class="btn btn-raised m-b-10 btn-primary waves-effect" data-placement-from="top" data-placement-align="center" data-animate-enter="" data-animate-exit="" data-color-name="bg-black"> TOP CENTER </button>
                                <button type="button" class="btn btn-raised m-b-10 btn-primary waves-effect" data-placement-from="top" data-placement-align="right" data-animate-enter="" data-animate-exit="" data-color-name="bg-black"> TOP RIGHT </button>
                                <button type="button" class="btn btn-raised m-b-10 btn-primary waves-effect" data-placement-from="bottom" data-placement-align="left" data-animate-enter="" data-animate-exit="" data-color-name="bg-black"> BOTTOM LEFT </button>
                                <button type="button" class="btn btn-raised m-b-10 btn-primary waves-effect" data-placement-from="bottom" data-placement-align="center" data-animate-enter="" data-animate-exit="" data-color-name="bg-black"> BOTTOM CENTER </button>
                                <button type="button" class="btn btn-raised m-b-10 btn-primary waves-effect" data-placement-from="bottom" data-placement-align="right" data-animate-enter="" data-animate-exit="" data-color-name="bg-black"> BOTTOM RIGHT </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Notification Types -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Notification</strong> Types </h2>
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
                            <div class="jsdemo-notification-button">
                                <button type="button" class="btn btn-raised m-b-10 btn-danger waves-effect" data-placement-from="bottom" data-placement-align="left" data-animate-enter="" data-animate-exit="" data-color-name="alert-danger"> DANGER </button>
                                <button type="button" class="btn btn-raised m-b-10 btn-success waves-effect" data-placement-from="bottom" data-placement-align="center" data-animate-enter="" data-animate-exit="" data-color-name="alert-success"> SUCCESS </button>
                                <button type="button" class="btn btn-raised m-b-10 btn-warning waves-effect" data-placement-from="bottom" data-placement-align="right" data-animate-enter="" data-animate-exit="" data-color-name="alert-warning"> WARNING </button>
                                <button type="button" class="btn btn-raised m-b-10 btn-info waves-effect" data-placement-from="bottom" data-placement-align="left" data-animate-enter="" data-animate-exit="" data-color-name="alert-info"> INFO </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Notification Types --> 
            <!-- With Material Design Colors -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>With Material</strong> Design Colors</h2>
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
                            <p>You can use the material design colors which example class are <code>.bg-pink, .bg-green</code></p>
                            <div class="jsdemo-notification-button">
                                <button type="button" class="btn btn-raised m-b-10 bg-red waves-effect" data-placement-from="bottom" data-placement-align="left" data-animate-enter="" data-animate-exit="" data-color-name="bg-red"> RED </button>
                                <button type="button" class="btn btn-raised m-b-10 bg-green waves-effect" data-placement-from="bottom" data-placement-align="center" data-animate-enter="" data-animate-exit="" data-color-name="bg-green"> GREEN </button>
                                <button type="button" class="btn btn-raised m-b-10 bg-orange waves-effect" data-placement-from="bottom" data-placement-align="right" data-animate-enter="" data-animate-exit="" data-color-name="bg-orange"> ORANGE </button>
                                <button type="button" class="btn btn-raised m-b-10 bg-blue waves-effect" data-placement-from="bottom" data-placement-align="left" data-animate-enter="" data-animate-exit="" data-color-name="bg-blue"> BLUE </button>
                                <button type="button" class="btn btn-raised m-b-10 bg-teal waves-effect" data-placement-from="bottom" data-placement-align="right" data-animate-enter="" data-animate-exit="" data-color-name="bg-teal"> TEAL </button>
                                <button type="button" class="btn btn-raised m-b-10 bg-cyan waves-effect" data-placement-from="bottom" data-placement-align="center" data-animate-enter="" data-animate-exit="" data-color-name="bg-cyan"> CYAN </button>
                                <button type="button" class="btn btn-raised m-b-10 bg-pink waves-effect" data-placement-from="bottom" data-placement-align="left" data-animate-enter="" data-animate-exit="" data-color-name="bg-pink"> PINK </button>
                                <button type="button" class="btn btn-raised m-b-10 bg-purple waves-effect" data-placement-from="bottom" data-placement-align="center" data-animate-enter="" data-animate-exit="" data-color-name="bg-purple"> PURPLE </button>
                                <button type="button" class="btn btn-raised m-b-10 bg-blue-grey waves-effect" data-placement-from="bottom" data-placement-align="right" data-animate-enter="" data-animate-exit="" data-color-name="bg-blue-grey"> BLUE GREY </button>
                                <button type="button" class="btn btn-raised m-b-10 bg-deep-orange waves-effect" data-placement-from="bottom" data-placement-align="left" data-animate-enter="" data-animate-exit="" data-color-name="bg-deep-orange"> DEEP ORANGE </button>
                                <button type="button" class="btn btn-raised m-b-10 bg-light-green waves-effect" data-placement-from="bottom" data-placement-align="center" data-animate-enter="" data-animate-exit="" data-color-name="bg-light-green"> LIGHT GREEN </button>
                                <button type="button" class="btn btn-raised m-b-10 bg-black waves-effect" data-placement-from="bottom" data-placement-align="right" data-animate-enter="" data-animate-exit="" data-color-name="bg-black"> BLACK </button>
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

<script src="admin-template/assets/plugins/bootstrap-notify/bootstrap-notify.js"></script> <!-- Bootstrap Notify Plugin Js -->

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="admin-template/assets/js/pages/ui/notifications.js"></script> <!-- Custom Js -->
</body>


</html>