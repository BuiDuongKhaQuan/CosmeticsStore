<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: JQuery Knob</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
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
                    <h2>JQuery Knob</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Biểu đồ</a></li>
                        <li class="breadcrumb-item active">JQuery Knob</li>
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
                <div class="col-lg-3">
                    <div class="card">                   
                        <div class="body text-center">
                            <input type="text" class="knob" value="86" data-width="125" data-height="125" data-thickness="0.25" data-fgColor="#ff598f">
                            <p class="text-muted m-b-0">VÍ DỤ CƠ BẢN</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card">                   
                        <div class="body text-center">
                            <input type="text" class="knob" data-linecap="round" value="56" data-width="125" data-height="125" data-thickness="0.25"data-fgColor="#64c8c0">
                            <p class="text-muted m-b-0">GÓC TRÒN</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card">                   
                        <div class="body text-center">                            
                            <input type="text" class="knob" value="65" data-width="125" data-height="125" data-thickness="0.25" data-fgColor="#cb8fe7" readonly>
                            <p class="text-muted m-b-0">CHỈ ĐỌC</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card">                   
                        <div class="body text-center">                            
                                <input type="text" class="knob" data-skin="tron" value="100" data-width="125" data-height="125" data-thickness="0.2" data-angleArc="270"
                                data-angleoffset="90" data-fgColor="#fc967f">
                            <p class="text-muted m-b-0">PHONG CÁCH TRON</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Kích thước</strong> khác nhau</h2>
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
                            <div class="row clearfix">
                                <div class="col-md-2">
                                    <input type="text" class="knob" value="86" data-width="90" data-height="90" data-thickness="0.05" data-fgColor="#ff598f">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="knob" value="92" data-width="120" data-height="120" data-thickness="0.32" data-fgColor="#64c8c0">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="knob" value="93" data-width="120" data-height="120" data-thickness="0.50" data-fgColor="#ffcd29">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="knob" value="89" data-width="80" data-height="80" data-thickness="0.16" data-fgColor="#cb8fe7">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="knob" value="91" data-width="75" data-height="75" data-thickness="0.2" data-fgColor="#fc967f">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="knob" value="93" data-width="120" data-height="120" data-thickness="0.12" data-fgColor="#8bc3fe">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Góc và bù</strong> khác</h2>
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
                            <div class="row clearfix">
                                <div class="col-md-2">
                                    <input type="text" class="knob" value="35" data-width="125" data-height="125" data-thickness="0.25" data-angleArc="250" data-angleoffset="-125"
                                            data-fgColor="#ff598f">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="knob" value="45" data-width="125" data-height="125" data-thickness="0.25" data-angleArc="250" data-angleoffset="-305"
                                            data-fgColor="#64c8c0">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="knob" value="40" data-width="125" data-height="125" data-thickness="0.25" data-angleArc="250" data-angleoffset="-35"
                                            data-fgColor="#ffcd29">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="knob" value="36" data-width="125" data-height="125" data-thickness="0.25" data-angleArc="250" data-angleoffset="145"
                                            data-fgColor="#cb8fe7">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="knob" value="43" data-width="125" data-height="125" data-thickness="0.25" data-angleArc="270" data-angleoffset="-0"
                                            data-fgColor="#fc967f">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="knob" value="52" data-width="125" data-height="125" data-thickness="0.25" data-angleArc="270" data-angleoffset="90"
                                            data-fgColor="#8bc3fe">
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

<script src="admin-template/assets/plugins/jquery-knob/jquery.knob.min.js"></script> <!-- Jquery Knob Plugin Js --> 

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
<script src="admin-template/assets/js/pages/charts/jquery-knob.js"></script>
</body>


</html>