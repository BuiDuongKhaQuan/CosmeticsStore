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
                    <h2>Collapse</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Các thành phần</a></li>
                        <li class="breadcrumb-item active">Thu gọn</li>
                    </ul>
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
                            <h2> VÍ DỤ</h2>
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
                                <p>Nhấp vào các nút bên dưới để hiển thị và ẩn một phần tử khác thông qua các thay đổi của lớp. Bạn có thể sử dụng liên kết thuộc tính với <code>href</code>, hoặc sử dụng nút có thuộc tính <code>data-target</code> . Trong cả hai trường hợp điều bắt buột có <code>data-toggle="collapse"</code> </p>
                            <a class="btn btn-default btn-round waves-effect" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false"
                                aria-controls="collapseExample">  href </a>
                            <button class="btn btn-raised l-turquoise btn-round waves-effect" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false"
                                        aria-controls="collapseExample"> button </button>
                            <div class="collapse" id="collapseExample">
                                <div class="well"> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica,
                                    craft beer labore wes anderson cred nesciunt sapiente ea proident. </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Dàn xếp </strong> cơ bản</h2>
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
                            <p>Mở rộng hành vi thu gọn mặc định để tạo một chiếc đàn accordion với thành phần bảng điều khiển.</p>
                            <div class="panel-group" id="accordion_1" role="tablist" aria-multiselectable="true">
                                <div class="panel panel-primary">
                                    <div class="panel-heading" role="tab" id="headingOne_1">
                                        <h4 class="panel-title"> <a role="button" data-toggle="collapse" data-parent="#accordion_1" href="#collapseOne_1" aria-expanded="true" aria-controls="collapseOne_1"> Collapsible Group Item #1 </a> </h4>
                                    </div>
                                    <div id="collapseOne_1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne_1">
                                        <div class="panel-body"> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                            non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
                                            helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                            Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
                                            raw denim aesthetic synth nesciunt you probably haven't heard of them
                                            accusamus labore sustainable VHS. </div>
                                    </div>
                                </div>
                                <div class="panel panel-primary">
                                    <div class="panel-heading" role="tab" id="headingTwo_1">
                                        <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion_1" href="#collapseTwo_1" aria-expanded="false"
                                                aria-controls="collapseTwo_1"> Collapsible Group Item #2 </a> </h4>
                                    </div>
                                    <div id="collapseTwo_1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo_1">
                                        <div class="panel-body"> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                            non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
                                            helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                            Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
                                            raw denim aesthetic synth nesciunt you probably haven't heard of them
                                            accusamus labore sustainable VHS. </div>
                                    </div>
                                </div>
                                <div class="panel panel-primary">
                                    <div class="panel-heading" role="tab" id="headingThree_1">
                                        <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion_1" href="#collapseThree_1" aria-expanded="false"
                                                aria-controls="collapseThree_1"> Collapsible Group Item #3 </a> </h4>
                                    </div>
                                    <div id="collapseThree_1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree_1">
                                        <div class="panel-body"> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                            non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
                                            helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                            Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
                                            raw denim aesthetic synth nesciunt you probably haven't heard of them
                                            accusamus labore sustainable VHS. </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Dàn xếp </strong>đầy đủ </h2>
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
                            <p>Nếu bạn cũng muốn cơ thể đầy màu sắc, bạn cần thêm lớp  để <code>.full-body</code> <code>.panel-group</code></p>
                            <div class="panel-group full-body" id="accordion_5" role="tablist" aria-multiselectable="true">
                                <div class="panel panel-primary">
                                    <div class="panel-heading" role="tab" id="headingOne_5">
                                        <h4 class="panel-title"> <a role="button" data-toggle="collapse" data-parent="#accordion_5" href="#collapseOne_5" aria-expanded="true" aria-controls="collapseOne_5"> Collapsible Group Item #1 </a> </h4>
                                    </div>
                                    <div id="collapseOne_5" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne_5">
                                        <div class="panel-body"> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                            non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
                                            helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                            Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
                                            raw denim aesthetic synth nesciunt you probably haven't heard of them
                                            accusamus labore sustainable VHS. </div>
                                    </div>
                                </div>
                                <div class="panel panel-primary">
                                    <div class="panel-heading" role="tab" id="headingTwo_5">
                                        <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion_5" href="#collapseTwo_5" aria-expanded="false"
                                                aria-controls="collapseTwo_5"> Collapsible Group Item #2 </a> </h4>
                                    </div>
                                    <div id="collapseTwo_5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo_5">
                                        <div class="panel-body"> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                            non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
                                            helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                            Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
                                            raw denim aesthetic synth nesciunt you probably haven't heard of them
                                            accusamus labore sustainable VHS. </div>
                                    </div>
                                </div>
                                <div class="panel panel-primary">
                                    <div class="panel-heading" role="tab" id="headingThree_5">
                                        <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion_5" href="#collapseThree_5" aria-expanded="false"
                                                aria-controls="collapseThree_5"> Collapsible Group Item #3 </a> </h4>
                                    </div>
                                    <div id="collapseThree_5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree_5">
                                        <div class="panel-body"> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                            non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
                                            helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                            Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
                                            raw denim aesthetic synth nesciunt you probably haven't heard of them
                                            accusamus labore sustainable VHS. </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Dàn xếp đầy đủ với </strong>Material Design</h2>
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
                            <p>Nếu bạn cũng muốn cơ thể đầy màu sắc, bạn cần thêm lớp  để <code>.full-body</code><code>.panel-group</code></p>
                            <div class="panel-group full-body" id="accordion_13" role="tablist" aria-multiselectable="true">
                                <div class="panel l-coral">
                                    <div class="panel-heading" role="tab" id="headingOne_13">
                                        <h4 class="panel-title"> <a role="button" data-toggle="collapse" data-parent="#accordion_13" href="#collapseOne_13" aria-expanded="true" aria-controls="collapseOne_13"> Collapsible Group Item #1 </a> </h4>
                                    </div>
                                    <div id="collapseOne_13" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne_13">
                                        <div class="panel-body"> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                            non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
                                            helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                            Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
                                            raw denim aesthetic synth nesciunt you probably haven't heard of them
                                            accusamus labore sustainable VHS. </div>
                                    </div>
                                </div>
                                <div class="panel l-amber">
                                    <div class="panel-heading" role="tab" id="headingTwo_13">
                                        <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion_13" href="#collapseTwo_13" aria-expanded="false"
                                                aria-controls="collapseTwo_13"> Collapsible Group Item #2 </a> </h4>
                                    </div>
                                    <div id="collapseTwo_13" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo_13">
                                        <div class="panel-body"> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                            non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
                                            helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                            Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
                                            raw denim aesthetic synth nesciunt you probably haven't heard of them
                                            accusamus labore sustainable VHS. </div>
                                    </div>
                                </div>
                                <div class="panel l-purple">
                                    <div class="panel-heading" role="tab" id="headingThree_13">
                                        <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion_13" href="#collapseThree_13" aria-expanded="false"
                                                aria-controls="collapseThree_13"> Collapsible Group Item #3 </a> </h4>
                                    </div>
                                    <div id="collapseThree_13" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree_13">
                                        <div class="panel-body"> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                            non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
                                            helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                            Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
                                            raw denim aesthetic synth nesciunt you probably haven't heard of them
                                            accusamus labore sustainable VHS. </div>
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