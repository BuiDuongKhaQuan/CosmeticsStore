<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Invoice List</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
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
                    <h2>Danh sách hóa đơn</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item active">Pages</li>
                        <li class="breadcrumb-item active">Danh sách hóa đơn</li>
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
                        <div class="table-responsive">
                        <table class="table table-hover c_table theme-color">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Tên</th>
                                    <th>Mô tả</th>
                                    <th>Chức năng</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>01</td>
                                    <td><strong><a href="javascript:void(0);">VBRK</a></strong></td>
                                    <td>Billing Document: Header Data </td>
                                    <td><a href="javascript:void(0);">SD - Billing</a></td>
                                    <td>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-eye"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-print"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-email"></i></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>02</td>
                                    <td><strong><a href="javascript:void(0);">BBAS</a></strong></td>
                                    <td>Document Flow</td>
                                    <td><a href="javascript:void(0);">SD - Basic Functions</a></td>
                                    <td>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-eye"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-print"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-email"></i></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>03</td>
                                    <td><strong><a href="javascript:void(0);">AKSS</a></strong></td>
                                    <td>Document: Item Status</td>
                                    <td><a href="javascript:void(0);">Logistics Execution - Transportation</a></td>
                                    <td>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-eye"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-print"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-email"></i></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>04</td>
                                    <td><strong><a href="javascript:void(0);">BKRT</a></strong></td>
                                    <td>Customer Master <i>sales</i> Data</td>
                                    <td><a href="javascript:void(0);">Logistics - Customer Master</a></td>
                                    <td>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-eye"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-print"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-email"></i></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>05</td>
                                    <td><strong><a href="javascript:void(0);">VBRK</a></strong></td>
                                    <td><i>sales</i> Order to BOM Link</td>
                                    <td><a href="javascript:void(0);">SD - Material Maintenance</a></td>
                                    <td>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-eye"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-print"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-email"></i></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>06</td>
                                    <td><strong><a href="javascript:void(0);">BBAS</a></strong></td>
                                    <td>Organization Unit: Business Area Determination</td>
                                    <td><a href="javascript:void(0);">SD - Basic Functions</a></td>
                                    <td>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-eye"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-print"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-email"></i></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>07</td>
                                    <td><strong><a href="javascript:void(0);">AKSS</a></strong></td>
                                    <td>Customer master credit management: Control area data</td>
                                    <td><a href="javascript:void(0);">Logistics - Bills of Material</a></td>
                                    <td>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-eye"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-print"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-email"></i></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>08</td>
                                    <td><strong><a href="javascript:void(0);">BKRT</a></strong></td>
                                    <td>Packing: Handling Unit Item (Contents)</td>
                                    <td><a href="javascript:void(0);">PP - Master Data</a></td>
                                    <td>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-eye"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-print"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-email"></i></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>09</td>
                                    <td><strong><a href="javascript:void(0);">BKRT</a></strong></td>
                                    <td>Customer Master <i>sales</i> Data</td>
                                    <td><a href="javascript:void(0);">Logistics - Customer Master</a></td>
                                    <td>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-eye"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-print"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-email"></i></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td><strong><a href="javascript:void(0);">VBRK</a></strong></td>
                                    <td><i>sales</i> Order to BOM Link</td>
                                    <td><a href="javascript:void(0);">SD - Material Maintenance</a></td>
                                    <td>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-eye"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-print"></i></button>
                                        <button class="btn btn-default btn-sm"><i class="zmdi zmdi-email"></i></button>
                                    </td>
                                </tr>
                            </tbody>
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

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
</body>


</html>