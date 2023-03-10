<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin ::</title>
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
                    <h2>Colors</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Các thành phần</a></li>
                        <li class="breadcrumb-item active">Màu sắc</li>
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
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Màu sắc</strong></h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Chỉnh sửa </a></li>
                                        <li><a href="javascript:void(0);">Xóa</a></li>
                                        <li><a href="javascript:void(0);">Báo cáo</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                                   <div class="clearfix row">
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-red">
                                        <div class="color-name">Đỏ</div>
                                        <div class="color-code">#ee2558</div>
                                        <div class="color-class-name">bg-red</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-pink">
                                        <div class="color-name">HỒNG</div>
                                        <div class="color-code">#ff4dab</div>
                                        <div class="color-class-name">bg-pink</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-purple">
                                        <div class="color-name">TÍM</div>
                                        <div class="color-code">#b588ff</div>
                                        <div class="color-class-name">bg-purple</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-deep-purple">
                                        <div class="color-name">TÍM ĐẬM</div>
                                        <div class="color-code">#673AB7</div>
                                        <div class="color-class-name">bg-deep-purple</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-indigo">
                                        <div class="color-name">CHÀM</div>
                                        <div class="color-code">#9988ff</div>
                                        <div class="color-class-name">bg-indigo</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-blue">
                                        <div class="color-name">XANH DA TRỜI</div>
                                        <div class="color-code">#46b6fe</div>
                                        <div class="color-class-name">bg-blue</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-light-blue">
                                        <div class="color-name">XANH ĐẬM</div>
                                        <div class="color-code">#03A9F4</div>
                                        <div class="color-class-name">bg-light-blue</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-cyan">
                                        <div class="color-name">LỤC LAM</div>
                                        <div class="color-code">#5CC5CD</div>
                                        <div class="color-class-name">bg-cyan</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-teal">
                                        <div class="color-name">XANH LỤC ĐẬM</div>
                                        <div class="color-code">#009688</div>
                                        <div class="color-class-name">bg-teal</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-green">
                                        <div class="color-name">XANH LÁ CÂY</div>
                                        <div class="color-code">#04BE5B</div>
                                        <div class="color-class-name">bg-green</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-light-green">
                                        <div class="color-name">XANH LÁ CÂY NHẠT</div>
                                        <div class="color-code">#8BC34A</div>
                                        <div class="color-class-name">bg-light-green</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-lime">
                                        <div class="color-name">XANH VÀNG</div>
                                        <div class="color-code">#82c885</div>
                                        <div class="color-class-name">bg-lime</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-yellow">
                                        <div class="color-name">VÀNG</div>
                                        <div class="color-code">#fdd932</div>
                                        <div class="color-class-name">bg-yellow</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-amber">
                                        <div class="color-name">VÀNG ÁNH DA CAM</div>
                                        <div class="color-code">#f9bd65</div>
                                        <div class="color-class-name">bg-amber</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-orange">
                                        <div class="color-name">CAM</div>
                                        <div class="color-code">#FF9948</div>
                                        <div class="color-class-name">bg-orange</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-deep-orange">
                                        <div class="color-name">CAM ĐẬM</div>
                                        <div class="color-code">#FF5722</div>
                                        <div class="color-class-name">bg-deep-orange</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-brown">
                                        <div class="color-name">NÂU</div>
                                        <div class="color-code">#795548</div>
                                        <div class="color-class-name">bg-brown</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-grey">
                                        <div class="color-name">XÁM</div>
                                        <div class="color-code">#9E9E9E</div>
                                        <div class="color-class-name">bg-grey</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-blue-grey">
                                        <div class="color-name">XANH XÁM</div>
                                        <div class="color-code">#607D8B</div>
                                        <div class="color-class-name">bg-blue-grey</div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-3 col-lg-3">
                                    <div class="demo-color-box m-b-10 bg-black">
                                        <div class="color-name">ĐEN</div>
                                        <div class="color-code">#000000</div>
                                        <div class="color-class-name">bg-black</div>
                                    </div>
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