<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

    <title>:: Aero Bootstrap4 Admin ::</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Favicon-->
    <link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="admin-template/assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css" />
    <link rel="stylesheet" href="admin-template/assets/plugins/charts-c3/plugin.css" />
    <!-- Custom Css -->
    <link rel="stylesheet" href="admin-template/assets/css/style.min.css">
</head>

<body class="theme-blush">

<jsp:include page="../../../../../../ShopMyPham_v9.1.5/ShopMyPham_v9.1.5/src/main/webapp/admin-template/header.jsp"></jsp:include>

<section class="content">
        <div class="body_scroll">
            <div class="block-header">
                <div class="row">
                    <div class="col-lg-7 col-md-6 col-sm-12">
                        <h2>Quản lí Blog</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="../../../../../../ShopMyPham_v9.1.5/ShopMyPham_v9.1.5/src/main/webapp/admin-template/index.jsp"><i class="zmdi zmdi-home"></i> Admin</a>
                            </li>
                            <li class="breadcrumb-item"><a href="blog-dashboard.jsp">Blog</a></li>
                            <li class="breadcrumb-item active">Tổng quan</li>
                        </ul>
                        <button class="btn btn-primary btn-icon mobile_menu" type="button"><i
                                class="zmdi zmdi-sort-amount-desc"></i></button>
                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-12">
                        <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i
                                class="zmdi zmdi-arrow-right"></i></button>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row clearfix">
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="body xl-blue">
                                <h4 class="mt-0 mb-0">2,048</h4>
                                <p class="mb-0">Tổng số khách hàng tiềm năng</p>
                                <div class="sparkline" data-type="line" data-spot-Radius="1"
                                    data-highlight-Spot-Color="rgb(233, 30, 99)" data-highlight-Line-Color="#222"
                                    data-min-Spot-Color="rgb(233, 30, 99)" data-max-Spot-Color="rgb(0, 150, 136)"
                                    data-spot-Color="rgb(0, 188, 212)" data-offset="90" data-width="100%"
                                    data-height="40px" data-line-Width="2" data-line-Color="#FFFFFF"
                                    data-fill-Color="transparent"> 7,6,7,8,5,9,8,6,7 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="body xl-purple">
                                <h4 class="mt-0 mb-0">521</h4>
                                <p class="mb-0 ">Tổng số kết nối</p>
                                <div class="sparkline" data-type="line" data-spot-Radius="1"
                                    data-highlight-Spot-Color="rgb(233, 30, 99)" data-highlight-Line-Color="#222"
                                    data-min-Spot-Color="rgb(233, 30, 99)" data-max-Spot-Color="rgb(0, 150, 136)"
                                    data-spot-Color="rgb(0, 188, 212)" data-offset="90" data-width="100%"
                                    data-height="42px" data-line-Width="2" data-line-Color="#FFFFFF"
                                    data-fill-Color="transparent"> 6,5,7,4,5,3,8,6,5 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="body xl-green">
                                <h4 class="mt-0 mb-0">73</h4>
                                <p class="mb-0 ">Bài viết</p>
                                <div class="sparkline" data-type="line" data-spot-Radius="1"
                                    data-highlight-Spot-Color="rgb(233, 30, 99)" data-highlight-Line-Color="#222"
                                    data-min-Spot-Color="rgb(233, 30, 99)" data-max-Spot-Color="rgb(0, 150, 136)"
                                    data-spot-Color="rgb(0, 188, 212)" data-offset="90" data-width="100%"
                                    data-height="45px" data-line-Width="2" data-line-Color="#FFFFFF"
                                    data-fill-Color="transparent"> 8,7,7,5,5,4,8,7,5 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="body xl-pink">
                                <h4 class="mt-0 mb-0">15</h4>
                                <p class="mb-0">Danh mục</p>
                                <div class="sparkline" data-type="line" data-spot-Radius="1"
                                    data-highlight-Spot-Color="rgb(233, 30, 99)" data-highlight-Line-Color="#222"
                                    data-min-Spot-Color="rgb(233, 30, 99)" data-max-Spot-Color="rgb(0, 150, 136)"
                                    data-spot-Color="rgb(0, 188, 212)" data-offset="90" data-width="100%"
                                    data-height="45px" data-line-Width="2" data-line-Color="#FFFFFF"
                                    data-fill-Color="transparent"> 7,6,7,8,5,9,8,6,7 </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-lg-12 col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2><strong>LOẠI </strong> PHỔ BIẾN</h2>
                                <ul class="header-dropdown">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                            data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
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
                                <div id="chart-bar" style="height: 16rem"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="header">
                                <h2><strong>PHƯƠNG TIỆN XÃ HỘI</strong> </h2>
                                <ul class="header-dropdown">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                            data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
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
                            <div class="table-responsive social_media_table">
                                <table class="table table-hover c_table">
                                    <thead>
                                        <tr>
                                            <th>Phương tiện xã hội</th>
                                            <th>Tên</th>
                                            <th>Lượt thích</th>
                                            <th>Ý kiến</th>
                                            <th>Chia sẻ </th>
                                            <th>Thành viên</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><span class="social_icon linkedin"><i
                                                        class="zmdi zmdi-linkedin"></i></span>
                                            </td>
                                            <td><span class="list-name">Linked In</span>
                                                <span class="text-muted">Florida, United States</span>
                                            </td>
                                            <td>19K</td>
                                            <td>14K</td>
                                            <td>10K</td>
                                            <td>
                                                <span class="badge badge-success">2341</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span class="social_icon twitter-table"><i
                                                        class="zmdi zmdi-twitter"></i></span>
                                            </td>
                                            <td><span class="list-name">Twitter</span>
                                                <span class="text-muted">Arkansas, United States</span>
                                            </td>
                                            <td>7K</td>
                                            <td>11K</td>
                                            <td>21K</td>
                                            <td>
                                                <span class="badge badge-success">952</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span class="social_icon facebook"><i
                                                        class="zmdi zmdi-facebook"></i></span>
                                            </td>
                                            <td><span class="list-name">Facebook</span>
                                                <span class="text-muted">Illunois, United States</span>
                                            </td>
                                            <td>15K</td>
                                            <td>18K</td>
                                            <td>8K</td>
                                            <td>
                                                <span class="badge badge-success">6127</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span class="social_icon google"><i
                                                        class="zmdi zmdi-google-plus"></i></span>
                                            </td>
                                            <td><span class="list-name">Google Plus</span>
                                                <span class="text-muted">Arizona, United States</span>
                                            </td>
                                            <td>15K</td>
                                            <td>18K</td>
                                            <td>154</td>
                                            <td>
                                                <span class="badge badge-success">325</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span class="social_icon youtube"><i
                                                        class="zmdi zmdi-youtube-play"></i></span>
                                            </td>
                                            <td><span class="list-name">YouTube</span>
                                                <span class="text-muted">Alaska, United States</span>
                                            </td>
                                            <td>15K</td>
                                            <td>18K</td>
                                            <td>200</td>
                                            <td>
                                                <span class="badge badge-success">160</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2><strong>Sử dụng trình duyệt</strong> </h2>
                                <ul class="header-dropdown">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                            data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
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
                                <div class="row clearfix">
                                    <div class="col-lg-6 col-md-12">
                                        <div id="chart-donut" style="height: 17rem"></div>
                                    </div>
                                    <div class="col-lg-6 col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover c_table mb-0">
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Chrome</td>
                                                        <td>6985 <i class="zmdi zmdi-caret-up text-success"></i></td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>Other</td>
                                                        <td>2697 <i class="zmdi zmdi-caret-up text-success"></i></td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td>Safari</td>
                                                        <td>3597 <i class="zmdi zmdi-caret-down text-danger"></i></td>
                                                    </tr>
                                                    <tr>
                                                        <td>4</td>
                                                        <td>Firefox</td>
                                                        <td>2145 <i class="zmdi zmdi-caret-up text-success"></i></td>
                                                    </tr>
                                                    <tr>
                                                        <td>5</td>
                                                        <td>IE</td>
                                                        <td>54 <i class="zmdi zmdi-caret-down text-danger"></i></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-lg-7 col-md-12">
                        <div class="card visitors-map">
                            <div class="header">
                                <h2><strong>THỐNG KÊ TRUY CẬP</strong> </h2>
                                <ul class="header-dropdown">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                            data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
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
                                <div id="world-map-markers" class="jvector-map"></div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover c_table theme-color mb-0">
                                    <thead>
                                        <tr>
                                            <th>Contrary</th>
                                            <th>2016</th>
                                            <th>2019</th>
                                            <th>Thay đổi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>USA</td>
                                            <td>2,009</td>
                                            <td>3,591</td>
                                            <td>7.01% <i class="zmdi zmdi-trending-up text-success"></i></td>
                                        </tr>
                                        <tr>
                                            <td>India</td>
                                            <td>1,129</td>
                                            <td>1,361</td>
                                            <td>3.01% <i class="zmdi zmdi-trending-up text-success"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Canada</td>
                                            <td>2,009</td>
                                            <td>2,901</td>
                                            <td>9.01% <i class="zmdi zmdi-trending-up text-success"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Australia</td>
                                            <td>954</td>
                                            <td>901</td>
                                            <td>5.71% <i class="zmdi zmdi-trending-down text-warning"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Other</td>
                                            <td>4,236</td>
                                            <td>4,591</td>
                                            <td>9.15% <i class="zmdi zmdi-trending-up text-success"></i></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2><strong>THỐNG KÊ DANH MỤC</strong> Ở MỸ</h2>
                                <ul class="header-dropdown">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                            data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
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
                                <div id="usa" class="text-center" style="height: 400px"></div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover c_table theme-color mb-0">
                                    <thead>
                                        <tr>
                                            <th>Danh mục</th>
                                            <th>2016</th>
                                            <th>2019</th>
                                            <th>Thay đổi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Web Design</td>
                                            <td>2,009</td>
                                            <td>3,591</td>
                                            <td>7.01% <i class="zmdi zmdi-trending-up text-success"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Photography</td>
                                            <td>1,129</td>
                                            <td>1,361</td>
                                            <td>3.01% <i class="zmdi zmdi-trending-up text-success"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Technology</td>
                                            <td>2,009</td>
                                            <td>2,901</td>
                                            <td>9.01% <i class="zmdi zmdi-trending-up text-success"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Lifestyle</td>
                                            <td>954</td>
                                            <td>901</td>
                                            <td>5.71% <i class="zmdi zmdi-trending-down text-warning"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Sports</td>
                                            <td>4,236</td>
                                            <td>4,591</td>
                                            <td>9.15% <i class="zmdi zmdi-trending-up text-success"></i></td>
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

    <script src="admin-template/assets/bundles/jvectormap.bundle.js"></script> <!-- JVectorMap Plugin Js -->
    <script src="admin-template/assets/plugins/jvectormap/jquery-jvectormap-us-aea-en.js"></script><!-- USA Map Js -->
    <script src="admin-template/assets/bundles/sparkline.bundle.js"></script> <!-- Sparkline Plugin Js -->
    <script src="admin-template/assets/bundles/c3.bundle.js"></script>

    <script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
    <script src="admin-template/assets/js/pages/blog/blog.js"></script>
</body>


</html>