<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin ::</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- JVectorMap Css -->
<link rel="stylesheet" href="admin-template/assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css"/>
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
                    <h2>JVector Maps</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Aero</a></li>
                        <li class="breadcrumb-item">Map</li>
                        <li class="breadcrumb-item active">JVector Maps</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <!-- Example -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Bản đồ</strong> thế giới</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li><a href="javascript:void(0);">Hành động</a></li>
                                        <li><a href="javascript:void(0);">Hành động khác</a></li>
                                        <li><a href="javascript:void(0);">Khác</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div id="world-map-markers" class="jvector-map"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 col-lg-6">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Bản đồ</strong> Ấn Độ</h2>
                        </div>
                        <div class="body text-center">
                            <div id="india" style="height: 400px"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-6">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Bản đồ</strong> Mỹ</h2>
                        </div>
                        <div class="body text-center">
                            <div id="usa" style="height: 400px"></div>
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

<script src="https://maps.google.com/maps/api/js?v=3&amp;sensor=false"></script> <!-- Google Maps API Js --> 
<script src="admin-template/assets/bundles/jvectormap.bundle.js"></script> <!-- JVectorMap Plugin Js -->
<script src="admin-template/assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="admin-template/assets/plugins/jvectormap/jquery-jvectormap-in-mill.js"></script><!-- India Map Js -->
<script src="admin-template/assets/plugins/jvectormap/jquery-jvectormap-us-aea-en.js"></script><!-- USA Map Js -->
<script src="admin-template/assets/plugins/jvectormap/jquery-jvectormap-uk-mill-en.js"></script><!-- UK Map Js -->
<script src="admin-template/assets/plugins/jvectormap/jquery-jvectormap-au-mill.js"></script><!-- Australia Map Js -->

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
<script src="admin-template/assets/js/pages/maps/jvectormap.js"></script> <!-- Custom Js -->
</body>


</html>