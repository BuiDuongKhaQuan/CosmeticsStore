<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: C3 Chart</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="admin-template/assets/plugins/charts-c3/plugin.css"/>

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
                    <h2>C3 Chart</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Biểu đồ</a></li>
                        <li class="breadcrumb-item active">C3</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Sự phát triển của các bộ phận</strong> </h2>
                        </div>
                        <div class="body">
                            <div id="chart-employment" class="c3_chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Nhiệt độ trung bình tháng</strong></h2>
                        </div>
                        <div class="body">
                            <div id="chart-temperature" class="c3_chart"></div>
                        </div>
                    </div>                
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Biểu đồ</strong> Khu vự</h2>
                        </div>
                        <div class="body">
                            <div id="chart-area" class="c3_chart"></div>
                        </div>
                    </div>                
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Lorem</strong> ipsum</h2>
                        </div>
                        <div class="body">
                            <div id="chart-area-spline" class="c3_chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Biểu đồ khu vực</strong> Sracked</h2>
                        </div>
                        <div class="body">
                            <div id="chart-area-spline-sracked" class="c3_chart"></div>
                        </div>
                    </div>                    
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Tốc đọ gió trong</strong>2  ngày</h2>
                        </div>
                        <div class="body">
                            <div id="chart-spline" class="c3_chart"></div>
                        </div>
                    </div>                
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Biểu đồ </strong> xoay</h2>
                        </div>
                        <div class="body">
                            <div id="chart-spline-rotated" class="c3_chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Biểu đồ </strong> bậc</h2>
                        </div>
                        <div class="body">
                            <div id="chart-step" class="c3_chart"></div>
                        </div>
                    </div>                
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Biểu đồ </strong> bậc theo miền</h2>
                        </div>
                        <div class="body">
                            <div id="chart-area-step" class="c3_chart"></div>
                        </div>
                    </div>                
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Biêu đồ </strong> cột đôi</h2>
                        </div>
                        <div class="body">
                            <div id="chart-bar" class="c3_chart"></div>
                        </div>
                    </div>                
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Biểu đồ </strong> cột ngang</h2>
                        </div>
                        <div class="body">
                            <div id="chart-bar-rotated" class="c3_chart"></div>
                        </div>
                    </div>                
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Biểu đồ</strong>xếp chồng</h2>
                        </div>
                        <div class="body">
                            <div id="chart-bar-stacked" class="c3_chart"></div>
                        </div>
                    </div>                
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Biểu đồ </strong> tròn</h2>
                        </div>
                        <div class="body">
                            <div id="chart-pie" class="c3_chart"></div>
                        </div>
                    </div>                
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Biểu đồ</strong> Donut</h2>
                        </div>
                        <div class="body">
                            <div id="chart-donut" class="c3_chart"></div>
                        </div>
                    </div>                    
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Biểu đồ</strong> Scatter</h2>
                        </div>
                        <div class="body">
                            <div id="chart-scatter" class="c3_chart"></div>
                        </div>
                    </div>                
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Biểu đồ</strong> kết hợp</h2>
                        </div>
                        <div class="body">
                            <div id="chart-combination" class="c3_chart"></div>
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

<script src="admin-template/assets/bundles/c3.bundle.js"></script>

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="admin-template/assets/js/pages/charts/c3.js"></script>
</body>


</html>