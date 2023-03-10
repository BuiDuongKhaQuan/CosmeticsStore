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
<link rel="stylesheet" href="admin-template/assets/plugins/sweetalert/sweetalert.css"/>

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
                    <h2>Dialogs</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Các thành phần</a></li>
                        <li class="breadcrumb-item active">Dialogs</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>                                
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row clearfix js-sweetalert">
                <div class="col-md-12">
                    <div class="card">
                        <div class="table-responsive">
                            <table class="table table-hover mb-0 c_table">
                                <tr>
                                    <td><button class="btn btn-raised btn-primary waves-effect" data-type="basic">NHẤN</button></td>
                                    <td><span>Một thông điệp cơ bản</span></td>
                                </tr>
                                <tr>
                                    <td><button class="btn btn-raised btn-primary waves-effect" data-type="with-title">NHẤN</button></td>
                                    <td><span>Một thông điệp cơ bản</span></td>
                                </tr>
                                <tr>
                                    <td><button class="btn btn-raised btn-primary waves-effect" data-type="success">NHẤN</button></td>
                                    <td><span>Một thông điệp cơ bản</span></td>
                                </tr>
                                <tr>
                                    <td><button class="btn btn-raised btn-primary waves-effect" data-type="confirm">NHẤN</button></td>
                                    <td><span>Một thông báo cảnh báo, với một chức năng được đính kèm với nút <b>Xác nhận</b></span></td>
                                </tr>
                                <tr>
                                    <td><button class="btn btn-raised btn-primary waves-effect" data-type="html-message">NHẤN</button></td>
                                    <td><span>Thư HTML</span></td>
                                </tr>
                                <tr>
                                    <td><button class="btn btn-raised btn-primary waves-effect" data-type="autoclose-timer">NHẤN</button></td>
                                    <td><span>Tin nhắn có hẹn giờ tự động đóng</span></td>
                                </tr>
                                <tr>
                                    <td><button class="btn btn-raised btn-primary waves-effect" data-type="we-set-buttons">NHẤN</button></td>
                                    <td><span>Trong ví dụ dưới đây, chúng tôi đặt 3 nút</span></td>
                                </tr>
                                <tr>
                                    <td><button class="btn btn-raised btn-primary waves-effect" data-type="AJAX-requests">NHẤN</button></td>
                                    <td><span>Yêu cầu AJAX</span></td>
                                </tr>
                                <tr>
                                    <td><button class="btn btn-raised btn-primary waves-effect" data-type="DOM-content">NHẤN</button></td>
                                    <td><span>Sử dụng các nút DOM làm nội dung</span></td>
                                </tr>
                            </table>
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

<script src="admin-template/assets/plugins/sweetalert/sweetalert.min.js"></script> <!-- SweetAlert Plugin Js --> 

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
<script src="admin-template/assets/js/pages/ui/sweetalert.js"></script>
</body>


</html>