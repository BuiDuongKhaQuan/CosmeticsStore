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

<!-- Page Loader -->
<jsp:include page="header.jsp"></jsp:include>

<!-- Main Content -->
<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Alerts</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Các phần của web</a></li>
                        <li class="breadcrumb-item active">Cảnh báo</li>
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
                            <h2><strong>CẢNH BÁO CƠ BẢN</strong> Alerts
                                <small>Bọc bất kỳ văn bản nào và một nút loại bỏ tùy chọn trong<code>.alert</code>và một trong bốn lớp ngữ cảnh (Vd. <code>.alert-success</code>) cho các tin nhắn cảnh báo cơ bản.</small>
                            </h2>
                        </div>
                        <div class="body">
                            <div class="alert alert-success">
                                <strong>Tốt!</strong> Bạn đã đọc thành công thông báo cảnh báo quan trọng này.
                            </div>
                            <div class="alert alert-info">
                                <strong>Cảnh giác!</strong> Cảnh báo này cần sự chú ý của bạn, nhưng nó không quá quan trọng.
                            </div>
                            <div class="alert alert-warning">
                                <strong>Cảnh báo!</strong> Tốt hơn nên tự kiểm tra, trông có vẻ không tốt lắm.
                            </div>
                            <div class="alert alert-danger">
                                <strong>Nguy hiểm!</strong> Thay đổi một vài điều lên và thử gửi lại.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Links </strong> trong cảnh báo
                                <small>Sử dụng <code>.alert-link</code> lớp tiện ích để nhanh chóng cung cấp các liên kết màu phù hợp trong bất kỳ cảnh báo nào.</small>
                            </h2>
                        </div>
                        <div class="body">
                            <div class="alert alert-success">
                                <strong>Tốt!</strong> Bạn đã đọc thành công<a href="javascript:void(0);" class="alert-link">thông báo cảnh báo quan trọng này</a>.
                            </div>
                            <div class="alert alert-info">
                                <strong>Cảnh giác!</strong>  <a href="javascript:void(0);" class="alert-link">Cảnh báo này cần sự chú ý của bạn</a>, nhưng nó không quá quan trọng.
                            </div>
                            <div class="alert alert-warning">
                                <strong>Cảnh báo!</strong> Tốt hơn nên tự kiểm tra <a href="javascript:void(0);" class="alert-link">trông có vẻ không tốt lắm</a>.
                            </div>
                            <div class="alert alert-danger">
                                <strong>Nguy hiểm!</strong> <a href="javascript:void(0);" class="alert-link">hay đổi một vài điều lên </a> thử gửi lại.
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

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script>
</body>


</html>