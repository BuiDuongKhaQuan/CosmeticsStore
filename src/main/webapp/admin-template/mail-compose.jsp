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
<!-- Font Icon -->
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="admin-template/assets/plugins/summernote/dist/summernote.css"/>
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap-select/css/bootstrap-select.css" />
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
                    <h2>Soạn thư</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="mail-inbox.jsp">Hộp thư đến</a></li>
                        <li class="breadcrumb-item active">Soạn thư</li>
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
                <div class="col-md-12">
                    <div class="d-flex">
                        <div class="mobile-left">
                            <a class="btn btn-info btn-icon toggle-email-nav collapsed" data-toggle="collapse" href="#email-nav" role="button" aria-expanded="false" aria-controls="email-nav">
                                <span class="btn-label"><i class="zmdi zmdi-more"></i></span>
                            </a>
                        </div>
                        <div class="inbox left" id="email-nav">
                            <div class="mail-compose mb-4">
                                <a href="javascript:void(0);" class="btn btn-danger btn-block">Soạn thư</a>
                            </div>
                            <div class="mail-side">
                                <ul class="nav">
                                    <li class="active"><a href="mail-inbox.jsp"><i class="zmdi zmdi-inbox"></i>Hộp thư đến<span class="badge badge-primary">6</span></a></li>
                                    <li><a href="javascript:void(0);"><i class="zmdi zmdi-mail-send"></i>Gửi</a></li>
                                    <li><a href="javascript:void(0);"><i class="zmdi zmdi-badge-check"></i>Quan trọng </a></li>
                                    <li><a href="javascript:void(0);"><i class="zmdi zmdi-file"></i>Dự thảo<span class="badge badge-info">3</span></a></li>
                                    <li><a href="javascript:void(0);"><i class="zmdi zmdi-email"></i>Tất cả các thưl</a></li>
                                    <li><a href="javascript:void(0);"><i class="zmdi zmdi-alert-circle"></i>Spam<span class="badge badge-warning">6</span></a></li>
                                    <li><a href="javascript:void(0);"><i class="zmdi zmdi-delete"></i>Rác<span class="badge badge-danger">9</span></a></li>
                                </ul>
                                <h3 class="label">Labels</h3>
                                <ul class="nav">
                                    <li><a href="javascript:void(0);"><i class="zmdi zmdi-label text-danger"></i>Dự án UI <span class="badge badge-primary">5</span></a></li>
                                    <li><a href="javascript:void(0);"><i class="zmdi zmdi-label text-info"></i>Marketing</a></li>
                                    <li><a href="javascript:void(0);"><i class="zmdi zmdi-label text-dark"></i>Thanh toán</a></li>
                                    <li><a href="javascript:void(0);"><i class="zmdi zmdi-label text-primary"></i>Hội nghị</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="inbox right">
                            <div class="card">
                                <div class="body mb-2">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Đến" />
                                    </div>
                                    <div class="form-group mb-0">
                                        <input type="text" class="form-control" placeholder="Chủ đề" />
                                    </div>
                                </div>
                                <div class="body">
                                    <div class="summernote">
                                        Hello there,
                                        <br/>
                                        <p>The toolbar can be customized and it also supports various callbacks such as <code>oninit</code>, <code>onfocus</code>, <code>onpaste</code> and many more.</p>
                                        <p>Please try <b>paste some texts</b> here</p>
                                    </div>
                                    <button type="button" class="btn btn-info waves-effect m-t-20">GỬI</button>
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

<script src="admin-template/assets/plugins/dropzone/dropzone.js"></script> <!-- Dropzone Plugin Js --> 

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="admin-template/assets/plugins/summernote/dist/summernote.js"></script>
</body>


</html>