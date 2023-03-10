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
<!-- Light Gallery Plugin Css -->
<link rel="stylesheet" href="admin-template/assets/plugins/light-gallery/css/lightgallery.css">
<!-- Custom Css -->
<link rel="stylesheet" href="admin-template/assets/css/style.min.css">
</head>

<body class="theme-blush">

<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img class="zmdi-hc-spin" src="admin-template/assets/images/loader.svg" width="48" height="48" alt="Aero"></div>
        <p>Please wait...</p>
    </div>
</div>

<!-- Overlay For Sidebars -->
<div class="overlay"></div>

<!-- Main Search -->
<div id="search">
    <button id="close" type="button" class="close btn btn-primary btn-icon btn-icon-mini btn-round">x</button>
    <form>
        <input type="search" value="" placeholder="Search..." />
        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
    </form>
</div>

<!-- Right Icon menu Sidebar -->
<div class="navbar-right">
    <ul class="navbar-nav">
        <li><a href="#search" class="main_search" title="Search..."><i class="zmdi zmdi-search"></i></a></li>
        <li class="dropdown">
            <a href="javascript:void(0);" class="dropdown-toggle" title="App" data-toggle="dropdown"
                role="button"><i class="zmdi zmdi-apps"></i></a>
            <ul class="dropdown-menu slideUp2">
                <li class="header">Ứng dụng Sortcute</li>
                <li class="body">
                    <ul class="menu app_sortcut list-unstyled">
                        <li>
                            <a href="image-gallery.jsp">
                                <div class="icon-circle mb-2 bg-blue"><i class="zmdi zmdi-camera"></i></div>
                                <p class="mb-0">Hình ảnh</p>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <div class="icon-circle mb-2 bg-amber"><i class="zmdi zmdi-translate"></i></div>
                                <p class="mb-0">Dịch</p>
                            </a>
                        </li>
                        <li>
                            <a href="events.jsp">
                                <div class="icon-circle mb-2 bg-green"><i class="zmdi zmdi-calendar"></i></div>
                                <p class="mb-0">Lịch</p>
                            </a>
                        </li>
                        <li>
                            <a href="contact.jsp">
                                <div class="icon-circle mb-2 bg-purple"><i class="zmdi zmdi-account-calendar"></i>
                                </div>
                                <p class="mb-0">Liên hệ</p>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <div class="icon-circle mb-2 bg-red"><i class="zmdi zmdi-tag"></i></div>
                                <p class="mb-0">Tin tức</p>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <div class="icon-circle mb-2 bg-grey"><i class="zmdi zmdi-map"></i></div>
                                <p class="mb-0">Bản đồ</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="javascript:void(0);" class="dropdown-toggle" title="Notifications" data-toggle="dropdown"
                role="button"><i class="zmdi zmdi-notifications"></i>
                <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
            </a>
            <ul class="dropdown-menu slideUp2">
                <li class="header">Thông báo</li>
                <li class="body">
                    <ul class="menu list-unstyled">
                        <li>
                            <a href="javascript:void(0);">
                                <div class="icon-circle bg-blue"><i class="zmdi zmdi-account"></i></div>
                                <div class="menu-info">
                                    <h4>8 New Members joined</h4>
                                    <p><i class="zmdi zmdi-time"></i> 14 mins ago </p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <div class="icon-circle bg-amber"><i class="zmdi zmdi-shopping-cart"></i></div>
                                <div class="menu-info">
                                    <h4>4 Sales made</h4>
                                    <p><i class="zmdi zmdi-time"></i> 22 mins ago </p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <div class="icon-circle bg-red"><i class="zmdi zmdi-delete"></i></div>
                                <div class="menu-info">
                                    <h4><b>Nancy Doe</b> Deleted account</h4>
                                    <p><i class="zmdi zmdi-time"></i> 3 hours ago </p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <div class="icon-circle bg-green"><i class="zmdi zmdi-edit"></i></div>
                                <div class="menu-info">
                                    <h4><b>Nancy</b> Changed name</h4>
                                    <p><i class="zmdi zmdi-time"></i> 2 hours ago </p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <div class="icon-circle bg-grey"><i class="zmdi zmdi-comment-text"></i></div>
                                <div class="menu-info">
                                    <h4><b>John</b> Commented your post</h4>
                                    <p><i class="zmdi zmdi-time"></i> 4 hours ago </p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <div class="icon-circle bg-purple"><i class="zmdi zmdi-refresh"></i></div>
                                <div class="menu-info">
                                    <h4><b>John</b> Updated status</h4>
                                    <p><i class="zmdi zmdi-time"></i> 3 hours ago </p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <div class="icon-circle bg-light-blue"><i class="zmdi zmdi-settings"></i></div>
                                <div class="menu-info">
                                    <h4>Settings Updated</h4>
                                    <p><i class="zmdi zmdi-time"></i> Yesterday </p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="footer"> <a href="javascript:void(0);">Xem tất cả thông báo</a> </li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"><i
                    class="zmdi zmdi-flag"></i>
                <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
            </a>
            <ul class="dropdown-menu slideUp2">
                <li class="header">Danh sách nhiệm vụ <small class="float-right"><a href="javascript:void(0);">View
                            All</a></small></li>
                <li class="body">
                    <ul class="menu tasks list-unstyled">
                        <li>
                            <div class="progress-container progress-primary">
                                <span class="progress-badge">Quản lí sản phẩm</span>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-warning" role="progressbar"
                                        aria-valuenow="86" aria-valuemin="0" aria-valuemax="100"
                                        style="width: 86%;">
                                        <span class="progress-value">86%</span>
                                    </div>
                                </div>
                                <ul class="list-unstyled team-info">
                                    <li class="m-r-15"><small>Đội </small></li>
                                    <li>
                                        <img src="admin-template/assets/images/xs/avatar2.jpg" alt="Avatar">
                                    </li>
                                    <li>
                                        <img src="admin-template/assets/images/xs/avatar3.jpg" alt="Avatar">
                                    </li>
                                    <li>
                                        <img src="admin-template/assets/images/xs/avatar4.jpg" alt="Avatar">
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div class="progress-container">
                                <span class="progress-badge">Cập nhật Slider</span>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-warning" role="progressbar"
                                        aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"
                                        style="width: 45%;">
                                        <span class="progress-value">45%</span>
                                    </div>
                                </div>
                                <ul class="list-unstyled team-info">
                                    <li class="m-r-15"><small>Đội</small></li>
                                    <li>
                                        <img src="admin-template/assets/images/xs/avatar10.jpg" alt="Avatar">
                                    </li>
                                    <li>
                                        <img src="admin-template/assets/images/xs/avatar9.jpg" alt="Avatar">
                                    </li>
                                    <li>
                                        <img src="admin-template/assets/images/xs/avatar8.jpg" alt="Avatar">
                                    </li>
                                    <li>
                                        <img src="admin-template/assets/images/xs/avatar7.jpg" alt="Avatar">
                                    </li>
                                    <li>
                                        <img src="admin-template/assets/images/xs/avatar6.jpg" alt="Avatar">
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div class="progress-container progress-warning">
                                <span class="progress-badge">Cập nhật đơn hàng</span>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-warning" role="progressbar"
                                        aria-valuenow="29" aria-valuemin="0" aria-valuemax="100"
                                        style="width: 29%;">
                                        <span class="progress-value">29%</span>
                                    </div>
                                </div>
                                <ul class="list-unstyled team-info">
                                    <li class="m-r-15"><small>Đội</small></li>
                                    <li>
                                        <img src="admin-template/assets/images/xs/avatar5.jpg" alt="Avatar">
                                    </li>
                                    <li>
                                        <img src="admin-template/assets/images/xs/avatar2.jpg" alt="Avatar">
                                    </li>
                                    <li>
                                        <img src="admin-template/assets/images/xs/avatar7.jpg" alt="Avatar">
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="javascript:void(0);" class="app_calendar" title="Lịch"><i class="zmdi zmdi-calendar"></i></a>
        </li>
        <li><a href="javascript:void(0);" class="app_google_drive" title="Google Drive"><i
                    class="zmdi zmdi-google-drive"></i></a></li>
        <li><a href="javascript:void(0);" class="app_group_work" title="Công việc nhóm"><i
                    class="zmdi zmdi-group-work"></i></a></li>
        <li><a href="javascript:void(0);" class="js-right-sidebar" title="Cài đặt"><i
                    class="zmdi zmdi-settings zmdi-hc-spin"></i></a></li>
        <li><a href="sign-in.jsp" class="mega-menu" title="Đăng xuất"><i class="zmdi zmdi-power"></i></a></li>
    </ul>
</div>

<!-- Left Sidebar -->
<aside id="leftsidebar" class="sidebar">
    <div class="navbar-brand">
        <button class="btn-menu ls-toggle-btn" type="button"><i class="zmdi zmdi-menu"></i></button>
        <a href="index.jsp"><img src="admin-template/assets/images/logo.svg" width="25" alt="Aero"><span
                class="m-l-10">Aero</span></a>
    </div>
    <div class="menu">
        <ul class="list">
            <li>
                <div class="user-info">
                    <a class="image" href="profile.jsp"><img src="admin-template/assets/images/profile_av.jpg" alt="User"></a>
                    <div class="detail">
                        <h4>Michael</h4>
                        <small>Quản trị viên cấp cao</small>
                    </div>
                </div>
            </li>
            <li><a href="index.jsp"><i class="zmdi zmdi-home"></i><span>Tổng quan</span></a></li>
            <li><a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-apps"></i><span>Ứng
                        dụng</span></a>
                <ul class="ml-menu">
                    <li><a href="mail-inbox.jsp">Email</a></li>
                    <li><a href="chat.jsp">Trò chuyện</a></li>
                    <li><a href="events.jsp">Lịch</a></li>
                    <li><a href="contact.jsp">Liên lạc</a></li>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-assignment"></i><span>Dự
                        án</span></a>
                <ul class="ml-menu">
                    <li><a href="project-list.jsp">Danh sách các dự án</a></li>
                    <li><a href="taskboard.jsp">Danh sách nhiệm vụ</a></li>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-folder"></i><span>Quản lí
                        file</span></a>
                <ul class="ml-menu">
                    <li><a href="file-dashboard.jsp">Tất cả các file</a></li>
                    <li><a href="file-documents.jsp">Tài liệu</a></li>
                    <li><a href="file-images.jsp">Hình ảnh</a></li>
                    <li><a href="file-media.jsp">Phương tiện</a></li>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="menu-toggle"><i
                        class="zmdi zmdi-blogger"></i><span>Blog</span></a>
                <ul class="ml-menu">
                    <li><a href="blog-dashboard.jsp">Tổng quan</a></li>
                    <li><a href="blog-post.jsp">Bài đăng trên blog</a></li>
                    <li><a href="blog-list.jsp">Dạng xem danh sách</a></li>
                    <li><a href="blog-list.jsp">Chế độ lưới</a></li>
                    <li><a href="blog-details.jsp">Chi tiết blog</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-shopping-cart"></i><span>Quản
                        lí sản phẩm</span></a>
                <ul class="ml-menu">
                    <li><a href="ec-dashboard.jsp">Tổng quan</a></li>
                    <li><a href="ec-product.jsp">Sản phẩm</a></li>
                    <li><a href="ec-product-List.jsp">Danh sách sản phẩm</a></li>
                    <li><a href="ec-product-add.jsp">Chi tiết sản phẩm</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-swap-alt"></i><span>Các thành
                        phần của web</span></a>
                <ul class="ml-menu">
                    <li><a href="ui_kit.jsp">Bộ kit giao diện người dùng</a></li>
                    <li><a href="alerts.jsp">Cảnh báo</a></li>
                    <li><a href="collapse.jsp">Thu gọn</a></li>
                    <li><a href="colors.jsp">Màu sắc</a></li>
                    <li><a href="dialogs.jsp">Dialogs</a></li>
                    <li><a href="list-group.jsp">Nhóm danh sách</a></li>
                    <li><a href="media-object.jsp">Đối tượng phương tiện</a></li>
                    <li><a href="modals.jsp">Modals</a></li>
                    <li><a href="notifications.jsp">Thông báo</a></li>
                    <li><a href="progressbars.jsp">Thanh tiến trình</a></li>
                    <li><a href="range-sliders.jsp">Thanh trượt phạm vi</a></li>
                    <li><a href="sortable-nestable.jsp">Sắp xếp & Lồng nhau</a></li>
                    <li><a href="tabs.jsp">Tabs</a></li>
                    <li><a href="waves.jsp">Waves</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-flower"></i><span>Biểu tượng &
                        Phông chữ</span></a>
                <ul class="ml-menu">
                    <li><a href="icons.jsp">Biểu tượng cơ bản</a></li>
                    <li><a href="icons-themify.jsp">Biểu tượng Themify</a></li>
                    <li><a href="icons-weather.jsp">Biểu tượng thời tiết</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><i
                        class="zmdi zmdi-assignment"></i><span>Các dạng form</span></a>
                <ul class="ml-menu">
                    <li><a href="basic-form-elements.jsp">Form cơ bản</a></li>
                    <li><a href="advanced-form-elements.jsp">Form nâng cao</a></li>
                    <li><a href="form-examples.jsp">Các ví dụ</a></li>
                    <li><a href="form-validation.jsp">Xác thực form</a></li>
                    <li><a href="form-wizard.jsp">Form Wizard</a></li>
                    <li><a href="form-editors.jsp">Editors</a></li>
                    <li><a href="form-upload.jsp">Tải file lên</a></li>
                    <li><a href="form-summernote.jsp">Summernote</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><i
                        class="zmdi zmdi-grid"></i><span>Bảng</span></a>
                <ul class="ml-menu">
                    <li><a href="normal-tables.jsp">Bảng cơ bản</a></li>
                    <li><a href="jquery-datatable.jsp">Bảng dữ liệu Jquery</a></li>
                    <li><a href="editable-table.jsp">Bảng có thể chỉnh sửa</a></li>
                    <li><a href="footable.jsp">Bảng Foo</a></li>
                    <li><a href="table-color.jsp">Bảng màu</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-chart"></i><span>Biểu
                        đồ</span></a>
                <ul class="ml-menu">
                    <li><a href="c3.jsp">Biểu đồ</a></li>
                    <li><a href="morris.jsp">Morris</a></li>
                    <li><a href="flot.jsp">Flot</a></li>
                    <li><a href="chartjs.jsp">ChartJS</a></li>
                    <li><a href="sparkline.jsp">Biểu đồ thu nhỏ</a></li>
                    <li><a href="jquery-knob.jsp">Jquery Knob</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><i
                        class="zmdi zmdi-delicious"></i><span>Widgets</span></a>
                <ul class="ml-menu">
                    <li><a href="widgets-app.jsp">Ứng dụng Widgets</a></li>
                    <li><a href="widgets-data.jsp">Tiện ích dữ liệu</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-lock"></i><span>Xác
                        thực</span></a>
                <ul class="ml-menu">
                    <li><a href="sign-in.jsp">Đăng nhập</a></li>
                    <li><a href="sign-up.jsp">Đăng kí</a></li>
                    <li><a href="forgot-password.jsp">Quên mật khẩu</a></li>
                    <li><a href="404.jsp">Page 404</a></li>
                    <li><a href="500.jsp">Page 500</a></li>
                    <li><a href="page-offline.jsp">Trang ngoại tuyến</a></li>
                    <li><a href="locked.jsp">Màn hình bị khóa</a></li>
                </ul>
            </li>
            <li   class="active open" class="open_top"><a href="javascript:void(0);" class="menu-toggle"><i
                        class="zmdi zmdi-copy"></i><span>Trang mẫu</span></a>
                <ul class="ml-menu">
                    <li><a href="blank.jsp">Trang trạng thái</a></li>
                    <li class="active"><a href="image-gallery.jsp">Thư viện hình ảnh</a></li>
                    <li><a href="profile.jsp">Hồ sơ</a></li>
                    <li><a href="timeline.jsp">Mốc thời gian</a></li>
                    <li><a href="pricing.jsp">Chi phí</a></li>
                    <li><a href="invoices.jsp">Hóa đơn</a></li>
                    <li><a href="invoices-list.jsp">Danh sách hóa đơn</a></li>
                    <li><a href="search-results.jsp">Kết quả tìm kiếm</a></li>
                </ul>
            </li>
            <li class="open_top"><a href="javascript:void(0);" class="menu-toggle"><i
                        class="zmdi zmdi-map"></i><span>Bản đồ</span></a>
                <ul class="ml-menu">
                    <li><a href="google.jsp">Google Map</a></li>
                    <li><a href="yandex.jsp">YandexMap</a></li>
                    <li><a href="jvectormap.jsp">jVectorMap</a></li>
                </ul>
            </li>
            <li>
                <div class="progress-container progress-primary m-t-10">
                    <span class="progress-badge">Lưu lượng truy cập tháng này</span>
                    <div class="progress">
                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="67"
                            aria-valuemin="0" aria-valuemax="100" style="width: 67%;">
                            <span class="progress-value">67%</span>
                        </div>
                    </div>
                </div>
                <div class="progress-container progress-info">
                    <span class="progress-badge">TẢI MÁY CHỦ</span>
                    <div class="progress">
                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="86"
                            aria-valuemin="0" aria-valuemax="100" style="width: 86%;">
                            <span class="progress-value">86%</span>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</aside>

<!-- Right Sidebar -->
<aside id="rightsidebar" class="right-sidebar">
    <ul class="nav nav-tabs sm">
        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#setting"><i
                    class="zmdi zmdi-settings zmdi-hc-spin"></i></a></li>
        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#chat"><i
                    class="zmdi zmdi-comments"></i></a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="setting">
            <div class="slim_scroll">
                <div class="card">
                    <h6>TÙY CHỌN CHỦ ĐỀ</h6>
                    <div class="light_dark">
                        <div class="radio">
                            <input type="radio" name="radio1" id="lighttheme" value="light" checked="">
                            <label for="lighttheme">Chế độ sáng</label>
                        </div>
                        <div class="radio mb-0">
                            <input type="radio" name="radio1" id="darktheme" value="dark">
                            <label for="darktheme">Chế độ tối</label>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <h6>Màu sắc</h6>
                    <ul class="choose-skin list-unstyled">
                        <li data-theme="purple">
                            <div class="purple"></div>
                        </li>
                        <li data-theme="blue">
                            <div class="blue"></div>
                        </li>
                        <li data-theme="cyan">
                            <div class="cyan"></div>
                        </li>
                        <li data-theme="green">
                            <div class="green"></div>
                        </li>
                        <li data-theme="orange">
                            <div class="orange"></div>
                        </li>
                        <li data-theme="blush" class="active">
                            <div class="blush"></div>
                        </li>
                    </ul>
                </div>
                <div class="card">
                    <h6>CÀI ĐẶT CHUNG</h6>
                    <ul class="setting-list list-unstyled">
                        <li>
                            <div class="checkbox">
                                <input id="checkbox1" type="checkbox">
                                <label for="checkbox1">Báo cáo việc sử dụng bảng điều khiển</label>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox">
                                <input id="checkbox2" type="checkbox" checked="">
                                <label for="checkbox2">Chuyển hướng email</label>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox">
                                <input id="checkbox3" type="checkbox" checked="">
                                <label for="checkbox3">Thông báo</label>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox">
                                <input id="checkbox4" type="checkbox">
                                <label for="checkbox4">Tự động cập nhật</label>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox">
                                <input id="checkbox5" type="checkbox" checked="">
                                <label for="checkbox5">Ngoại tuyến</label>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox">
                                <input id="checkbox6" type="checkbox" checked="">
                                <label for="checkbox6">Quyền truy cập thông tin vị trí</label>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="tab-pane right_chat" id="chat">
            <div class="slim_scroll">
                <div class="card">
                    <ul class="list-unstyled">
                        <li class="online">
                            <a href="javascript:void(0);">
                                <div class="media">
                                    <img class="media-object " src="admin-template/assets/images/xs/avatar4.jpg" alt="">
                                    <div class="media-body">
                                        <span class="name">Sophia <small class="float-right">11:00AM</small></span>
                                        <span class="message">There are many variations of passages of Lorem Ipsum
                                            available</span>
                                        <span class="badge badge-outline status"></span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="online">
                            <a href="javascript:void(0);">
                                <div class="media">
                                    <img class="media-object " src="admin-template/assets/images/xs/avatar5.jpg" alt="">
                                    <div class="media-body">
                                        <span class="name">Grayson <small class="float-right">11:30AM</small></span>
                                        <span class="message">All the Lorem Ipsum generators on the</span>
                                        <span class="badge badge-outline status"></span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="offline">
                            <a href="javascript:void(0);">
                                <div class="media">
                                    <img class="media-object " src="admin-template/assets/images/xs/avatar2.jpg" alt="">
                                    <div class="media-body">
                                        <span class="name">Isabella <small
                                                class="float-right">11:31AM</small></span>
                                        <span class="message">Contrary to popular belief, Lorem Ipsum</span>
                                        <span class="badge badge-outline status"></span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="me">
                            <a href="javascript:void(0);">
                                <div class="media">
                                    <img class="media-object " src="admin-template/assets/images/xs/avatar1.jpg" alt="">
                                    <div class="media-body">
                                        <span class="name">John <small class="float-right">05:00PM</small></span>
                                        <span class="message">It is a long established fact that a reader</span>
                                        <span class="badge badge-outline status"></span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="online">
                            <a href="javascript:void(0);">
                                <div class="media">
                                    <img class="media-object " src="admin-template/assets/images/xs/avatar3.jpg" alt="">
                                    <div class="media-body">
                                        <span class="name">Alexander <small
                                                class="float-right">06:08PM</small></span>
                                        <span class="message">Richard McClintock, a Latin professor</span>
                                        <span class="badge badge-outline status"></span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</aside>
<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Thư viện hình ảnh</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item active">Trang</li>
                        <li class="breadcrumb-item active">Thư viện hình ảnh</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="body">
                            <p>Tất cả các hình ảnh</a></p>
                            <div id="aniimated-thumbnials" class="list-unstyled row clearfix">
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/1.jpg"> <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/1.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/2.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/2.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/3.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/3.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/4.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/4.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/5.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/5.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/6.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/6.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/7.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/7.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/8.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/8.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/9.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/9.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/10.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/10.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/11.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/11.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/12.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/12.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/13.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/13.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/14.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/14.jpg" alt=""> </a> </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-b-30"> <a href="admin-template/assets/images/image-gallery/15.jpg" > <img class="img-fluid img-thumbnail" src="admin-template/assets/images/image-gallery/15.jpg" alt=""> </a> </div>
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

<script src="admin-template/assets/plugins/light-gallery/js/lightgallery-all.min.js"></script> <!-- Light Gallery Plugin Js --> 

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
<script src="admin-template/assets/js/pages/medias/image-gallery.js"></script>
</body>


</html>