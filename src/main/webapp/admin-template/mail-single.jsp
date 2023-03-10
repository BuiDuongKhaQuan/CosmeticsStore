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
                    <h2>Hộp thư đến</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="mail-inbox.jsp">Hộp thư đến</a></li>
                        <li class="breadcrumb-item active">Xem Email</li>
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
                                <a href="mail-compose.jsp" class="btn btn-danger btn-block">Soạn</a>
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
                                    <div class="d-flex justify-content-between flex-wrap-reverse">
                                        <h5 class="mt-0 mb-0 font-17">Your updated item Aero Admin</h5>
                                        <div>
                                            <small>Jan 9, 2019, 9:55 PM</small>
                                            <a href="javascript:void(0);" class="p-2"><i class="zmdi zmdi-star-outline"></i></a>
                                            <a href="javascript:void(0);" class="p-2"><i class="zmdi zmdi-mail-reply"></i></a>
                                            <a href="javascript:void(0);" class="p-2"><i class="zmdi zmdi-delete text-danger"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="body mb-2">
                                    <ul class="list-unstyled d-flex justify-content-md-start mb-0">
                                        <li><img class="rounded w40" src="admin-template/assets/images/xs/avatar7.jpg" alt=""></li>
                                        <li class="ml-3">
                                            <p class="mb-0"><span class="text-muted">Từ:</span> <a href="javascript:void(0);">woodwalton@info.com</a>, <a href="javascript:void(0);">info@examples.com</a></p>
                                            <p class="mb-0"><span class="text-muted">Đến:</span> Me</p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="body mb-2">
                                    <h6>Hello,</h6>
                                    <br>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <p>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.</p>
                                    <ul>
                                        <li>standard dummy text ever since the 1500s, when an unknown printer</li>
                                        <li>Lorem Ipsum has been the industry's standard dummy</li>
                                    </ul>
                                    <p class="text-info">Purchase: Aero has not yet purchased this item from you.</p>
                                    <br>
                                    <div class="file_folder">
                                        <a href="javascript:void(0);">
                                            <div class="icon">
                                                <i class="zmdi zmdi-chart text-success"></i>
                                            </div>
                                            <div class="file-name">
                                                <p class="mb-0 text-muted">Report2017.xls</p>
                                                <small>Size: 68KB</small>
                                            </div>
                                        </a>
                                        <a href="javascript:void(0);">
                                            <div class="icon">
                                                <i class="zmdi zmdi-collection-text text-primary"></i>
                                            </div>
                                            <div class="file-name">
                                                <p class="mb-0 text-muted">Report2017.doc</p>
                                                <small>Size: 68KB</small>
                                            </div>
                                        </a>
                                        <a href="javascript:void(0);">
                                            <div class="icon">
                                                <i class="zmdi zmdi-collection-pdf text-danger"></i>
                                            </div>
                                            <div class="file-name">
                                                <p class="mb-0 text-muted">Report2017.pdf</p>
                                                <small>Size: 68KB</small>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="body">
                                    <a href="mail-compose.jsp" class="p-2"><i class="zmdi zmdi-mail-reply"></i> Phản hồi</a> hoặc
                                    <a href="mail-compose.jsp" class="p-2"><i class="zmdi zmdi-mail-send"></i> Tiếp</a>
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