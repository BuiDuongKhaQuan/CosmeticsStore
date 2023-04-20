<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Form Validation</title>
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
                    <h2>Xác thực form</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Forms</a></li>
                        <li class="breadcrumb-item active">Xác thực form</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>                                
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <!-- Basic Validation -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Xác thực</strong> cơ bản</h2>
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
                            <form id="form_validation" method="POST">
                                <div class="form-group form-float">
                                    <input type="text" class="form-control" placeholder="Tên" name="name" required>
                                </div>
                                <div class="form-group form-float">
                                    <input type="text" class="form-control" placeholder="Họ" name="surname" required>
                                </div>
                                <div class="form-group form-float">
                                    <input type="email" class="form-control" placeholder="Email" name="email" required>
                                </div>
                                <div class="form-group">
                                    <div class="radio inlineblock m-r-20">
                                        <input type="radio" name="gender" id="male" class="with-gap" value="option1">
                                        <label for="male">Nam</label>
                                    </div>                                
                                    <div class="radio inlineblock">
                                        <input type="radio" name="gender" id="Female" class="with-gap" value="option2" checked="">
                                        <label for="Female">Nữ</label>
                                    </div>
                                </div>
                                <div class="form-group form-float">
                                    <textarea name="description" cols="30" rows="5" placeholder="Mô tả" class="form-control no-resize" required></textarea>
                                </div>
                                <div class="form-group form-float">
                                    <input type="password" class="form-control" placeholder="Mật khẩu" name="password" required>
                                </div>
                                <div class="form-group">
                                    <div class="checkbox">
                                        <input id="checkbox" type="checkbox">
                                        <label for="checkbox">Tôi đã đọc và chấp nhận các điều khoản</label>
                                    </div>
                                </div>
                                <button class="btn btn-raised btn-primary waves-effect" type="submit">GỬI</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Advanced Validation -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Xác nhận</strong> nâng cao</h2>
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
                            <form id="form_advanced_validation" method="POST">
                                <div class="form-group form-float">
                                    <input type="text" class="form-control" name="minmaxlength" maxlength="10" minlength="3" required>                                
                                    <div class="help-info">Tối thiểu. 3, Tối đa. 10 kí tự</div>
                                </div>
                                <div class="form-group form-float">
                                    <input type="text" class="form-control" name="minmaxvalue" min="10" max="200" required>                                
                                    <div class="help-info">Giá trị tối thiểu: 10, Giá trị tối đa: 200</div>
                                </div>
                                <div class="form-group form-float">
                                    <input type="url" class="form-control" name="url" required>                                
                                    <div class="help-info">Bắt đầu với http://, https://, ftp:// v.v</div>
                                </div>
                                <div class="form-group form-float">
                                    <input type="text" class="form-control" name="date" required>                                
                                    <div class="help-info">Định dạng YYYY-MM-DD </div>
                                </div>
                                <div class="form-group form-float">
                                    <input type="number" class="form-control" name="number" required>                                
                                    <div class="help-info">Chỉ chấp nhận chữ số</div>
                                </div>
                                <div class="form-group form-float">
                                    <input type="text" class="form-control" name="creditcard" pattern="[0-9]{13,16}" required>                                
                                    <div class="help-info">Ví dụ: 1234-5678-9012-3456</div>
                                </div>
                                <button class="btn btn-raised btn-primary waves-effect" type="submit">GỬI</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Validation Stats -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Thống kê</strong> xác nhận </h2>
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
                            <form id="form_validation_stats">
                                <div class="form-group has-success">
                                    <input type="text" value="Thành công" class="form-control form-control-success">
                                </div>
                                <div class="form-group has-danger">
                                    <input type="email" value="Lỗi đầu vào" class="form-control form-control-danger">
                                </div>
                                <div class="form-group has-warning">
                                    <input type="email" value="Cảnh báo" class="form-control form-control-warning">
                                </div>
                            </form>
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

<script src="admin-template/assets/plugins/jquery-validation/jquery.validate.js"></script> <!-- Jquery Validation Plugin Css --> 
<script src="admin-template/assets/plugins/jquery-steps/jquery.steps.js"></script> <!-- JQuery Steps Plugin Js --> 

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
<script src="admin-template/assets/js/pages/forms/form-validation.js"></script> 
</body>


</html>