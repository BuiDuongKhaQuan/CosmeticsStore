<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: File Upload</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="admin-template/assets/plugins/dropify/css/dropify.min.css">

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
                    <h2>Tải file lên</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Forms</a></li>
                        <li class="breadcrumb-item active">Tải file lên</li>
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
                <div class="col-12">
                    <!-- <div class="alert alert-warning" role="alert">
                        <strong>dropify</strong> Taken from: <a target="_blank" href="https://github.com/JeremyFagis/dropify">View More</a>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true"><i class="zmdi zmdi-close"></i></span>
                        </button>
                    </div> -->
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Mặc định</h2>
                        </div>
                        <div class="body">
                            <input type="file" class="dropify">
                        </div>
                    </div>
                    <div class="card">
                        <div class="header">
                            <h2>Với <strong>sự kiện</strong> và tệp mặc định</h2>
                        </div>
                        <div class="body">
                            <p>Cố gắng xóa hình ảnh</p>
                            <input type="file" id="dropify-event" data-default-file="assets/images/image-gallery/1.jpg">
                        </div>
                    </div>                    
                    <div class="card">
                        <div class="header">
                            <h2><strong>Vô hiện hóa</strong> tải file</h2>
                        </div>
                        <div class="body">
                            <input type="file" class="dropify" disabled="disabled">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Giới hạn </strong>kích thước tệp</h2>
                        </div>
                        <div class="body">
                            <p>Chỉ tải lên png hoặc pdf</p>
                            <input type="file" class="dropify" data-allowed-file-extensions="pdf png">
                        </div>
                    </div>
                    <div class="card">
                        <div class="header">
                            <h2><strong>Giới hạn </strong>kích thước tệp</h2>
                        </div>
                        <div class="body">
                            <p>Tải lên tệp lớn hơn 100 KB</p>
                            <input type="file" class="dropify" data-max-file-size="100K">
                        </div>
                    </div>                    
                    <div class="card">
                        <div class="header">
                            <h2>Tin nhắn tùy chỉnh <strong>cho mặc định</strong> </h2>
                        </div>
                        <div class="body">
                            <p>Thay thế, loại bỏ và lỗi</p>
                            <input type="file" class="dropify-fr">
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

<script src="admin-template/assets/plugins/dropify/js/dropify.min.js"></script>

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script>
<script src="admin-template/assets/js/pages/forms/dropify.js"></script>
</body>


</html>