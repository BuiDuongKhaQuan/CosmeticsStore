<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Inbox</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Font Icon -->
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
                    <h2>Hộp thư đến</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item active">Hộp thư đến</li>
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
                                <a href="mail-compose.jsp" class="btn btn-danger btn-block">Soạn thư</a>
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
                            <div class="i_action d-flex justify-content-between align-items-center">
                                <div class="">
                                    <div class="checkbox simple d-inline-block mr-3">
                                        <input id="mc0" type="checkbox">
                                        <label for="mc0"></label>
                                    </div>
                                    <div class="btn-group">
                                        <a href="javascript:void(0);" class="btn btn-outline-secondary btn-sm"><i class="zmdi zmdi-refresh"></i></a>
                                        <a href="javascript:void(0);" class="btn btn-outline-secondary btn-sm"><i class="zmdi zmdi-archive"></i></a>
                                        <a href="javascript:void(0);" class="btn btn-outline-secondary btn-sm"><i class="zmdi zmdi-delete"></i></a>
                                    </div>
                                    <div class="btn-group">
                                        <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Labels</button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="javascript:void(0);">Dự án UI</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Marketing</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Thanh toán</a>
                                        </div>
                                    </div>
                                    <div class="btn-group">
                                        <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Xem thêm</button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="javascript:void(0);">Đánh đấu là đã đọc</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Đánh dầu chưa đọc</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Spam</a>
                                            <div role="separator" class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="javascript:void(0);">Xóa</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="pagination-email">
                                    <span>1-50/295</span>
                                    <div class="btn-group ml-3">
                                        <button type="button" class="btn btn-outline-secondary btn-sm"><i class="zmdi zmdi-chevron-left"></i></button>
                                        <button type="button" class="btn btn-outline-secondary btn-sm"><i class="zmdi zmdi-chevron-right"></i></button>
                                    </div>
                                </div>
                            </div>

                            <div class="table-responsive">
                                <table class="table c_table inbox_table">
                                    <tr>
                                        <td class="chb">
                                            <div class="checkbox simple">
                                                <input id="mc1" type="checkbox">
                                                <label for="mc1"></label>
                                            </div>
                                        </td>
                                        <td class="starred active"><a href="javascript:void(0);"><i class="zmdi zmdi-star"></i></a></td>
                                        <td class="u_image"><img src="admin-template/assets/images/xs/avatar1.jpg" alt="user" class="rounded" width="30"></td>
                                        <td class="u_name"><h6 class="font-15 mt-0 mb-0">Maryam Amiri</h6></td>
                                        <td class="max_ellipsis">
                                            <a class="link" href="mail-single.jsp">
                                                <span class="badge badge-primary mr-2">Work</span>
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            </a>
                                        </td>
                                        <td class="clip"><i class="zmdi zmdi-attachment-alt"></i></td>
                                        <td class="time">9:30 AM</td>
                                    </tr>
                                    <tr class="unread">
                                        <td class="chb">
                                            <div class="checkbox simple">
                                                <input id="mc2" type="checkbox">
                                                <label for="mc2"></label>
                                            </div>
                                        </td>
                                        <td class="starred"><a href="javascript:void(0);"><i class="zmdi zmdi-star"></i></a></td>
                                        <td class="u_image"><img src="admin-template/assets/images/xs/avatar2.jpg" alt="user" class="rounded" width="30"></td>
                                        <td class="u_name"><h6 class="font-15 mt-0 mb-0">Hossein Shams</h6></td>
                                        <td class="max_ellipsis">
                                            <a class="link" href="mail-single.jsp">
                                                <span class="badge badge-info mr-2">Marketing</span>
                                                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. 
                                            </a>
                                        </td>
                                        <td class="clip"><i class="zmdi zmdi-attachment-alt"></i></td>
                                        <td class="time">9:30 AM</td>
                                    </tr>
                                    <tr>
                                        <td class="chb">
                                            <div class="checkbox simple">
                                                <input id="mc3" type="checkbox">
                                                <label for="mc3"></label>
                                            </div>
                                        </td>
                                        <td class="starred"><a href="javascript:void(0);"><i class="zmdi zmdi-star"></i></a></td>
                                        <td class="u_image"><img src="admin-template/assets/images/xs/avatar3.jpg" alt="user" class="rounded" width="30"></td>
                                        <td class="u_name"><h6 class="font-15 mt-0 mb-0">Frank Camly</h6></td>
                                        <td class="max_ellipsis">
                                            <a class="link" href="mail-single.jsp">
                                                <span class="badge badge-danger mr-2">Ui Project</span>
                                                There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected
                                            </a>
                                        </td>
                                        <td class="clip"><i class="zmdi zmdi-attachment-alt"></i></td>
                                        <td class="time">9:30 AM</td>
                                    </tr>
                                    <tr class="unread">
                                        <td class="chb">
                                            <div class="checkbox simple">
                                                <input id="mc4" type="checkbox">
                                                <label for="mc4"></label>
                                            </div>
                                        </td>
                                        <td class="starred"><a href="javascript:void(0);"><i class="zmdi zmdi-star"></i></a></td>
                                        <td class="u_image"><img src="admin-template/assets/images/xs/avatar4.jpg" alt="user" class="rounded" width="30"></td>
                                        <td class="u_name"><h6 class="font-15 mt-0 mb-0">Tim Hank</h6></td>
                                        <td class="max_ellipsis">
                                            <a class="link" href="mail-single.jsp">
                                                <span class="badge badge-default mr-2">Payout</span>
                                                Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC
                                            </a>
                                        </td>
                                        <td class="clip"><i class="zmdi zmdi-attachment-alt"></i></td>
                                        <td class="time">9:30 AM</td>
                                    </tr>
                                    <tr>
                                        <td class="chb">
                                            <div class="checkbox simple">
                                                <input id="mc5" type="checkbox">
                                                <label for="mc5"></label>
                                            </div>
                                        </td>
                                        <td class="starred"><a href="javascript:void(0);"><i class="zmdi zmdi-star"></i></a></td>
                                        <td class="u_image"><img src="admin-template/assets/images/xs/avatar5.jpg" alt="user" class="rounded" width="30"></td>
                                        <td class="u_name"><h6 class="font-15 mt-0 mb-0">Maryam Amiri</h6></td>
                                        <td class="max_ellipsis">
                                            <a class="link" href="mail-single.jsp">
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            </a>
                                        </td>
                                        <td class="clip"><i class="zmdi zmdi-attachment-alt"></i></td>
                                        <td class="time">9:30 AM</td>
                                    </tr>
                                    <tr>
                                        <td class="chb">
                                            <div class="checkbox simple">
                                                <input id="mc6" type="checkbox">
                                                <label for="mc6"></label>
                                            </div>
                                        </td>
                                        <td class="starred"><a href="javascript:void(0);"><i class="zmdi zmdi-star"></i></a></td>
                                        <td class="u_image"><img src="admin-template/assets/images/xs/avatar6.jpg" alt="user" class="rounded" width="30"></td>
                                        <td class="u_name"><h6 class="font-15 mt-0 mb-0">Brielle Williamson</h6></td>
                                        <td class="max_ellipsis">
                                            <a class="link" href="mail-single.jsp">
                                                <span class="badge badge-info mr-2">Marketing</span>
                                                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. 
                                            </a>
                                        </td>
                                        <td class="clip"><i class="zmdi zmdi-attachment-alt"></i></td>
                                        <td class="time">9:30 AM</td>
                                    </tr>
                                    <tr>
                                        <td class="chb">
                                            <div class="checkbox simple">
                                                <input id="mc7" type="checkbox">
                                                <label for="mc7"></label>
                                            </div>
                                        </td>
                                        <td class="starred"><a href="javascript:void(0);"><i class="zmdi zmdi-star"></i></a></td>
                                        <td class="u_image"><img src="admin-template/assets/images/xs/avatar7.jpg" alt="user" class="rounded" width="30"></td>
                                        <td class="u_name"><h6 class="font-15 mt-0 mb-0">Brenden Wagner</h6></td>
                                        <td class="max_ellipsis">
                                            <a class="link" href="mail-single.jsp">
                                                <span class="badge badge-danger mr-2">Ui Project</span>
                                                There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected
                                            </a>
                                        </td>
                                        <td class="clip"><i class="zmdi zmdi-attachment-alt"></i></td>
                                        <td class="time">9:30 AM</td>
                                    </tr>
                                    <tr>
                                        <td class="chb">
                                            <div class="checkbox simple">
                                                <input id="mc8" type="checkbox">
                                                <label for="mc8"></label>
                                            </div>
                                        </td>
                                        <td class="starred"><a href="javascript:void(0);"><i class="zmdi zmdi-star"></i></a></td>
                                        <td class="u_image"><img src="admin-template/assets/images/xs/avatar4.jpg" alt="user" class="rounded" width="30"></td>
                                        <td class="u_name"><h6 class="font-15 mt-0 mb-0">Angelica Ramos</h6></td>
                                        <td class="max_ellipsis">
                                            <a class="link" href="mail-single.jsp">
                                                Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC
                                            </a>
                                        </td>
                                        <td class="clip"><i class="zmdi zmdi-attachment-alt"></i></td>
                                        <td class="time">9:30 AM</td>
                                    </tr>
                                    <tr>
                                        <td class="chb">
                                            <div class="checkbox simple">
                                                <input id="mc9" type="checkbox">
                                                <label for="mc9"></label>
                                            </div>
                                        </td>
                                        <td class="starred"><a href="javascript:void(0);"><i class="zmdi zmdi-star"></i></a></td>
                                        <td class="u_image"><img src="admin-template/assets/images/xs/avatar1.jpg" alt="user" class="rounded" width="30"></td>
                                        <td class="u_name"><h6 class="font-15 mt-0 mb-0">Ashton Cox</h6></td>
                                        <td class="max_ellipsis">
                                            <a class="link" href="mail-single.jsp">
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            </a>
                                        </td>
                                        <td class="clip"><i class="zmdi zmdi-attachment-alt"></i></td>
                                        <td class="time">10:30 AM</td>
                                    </tr>
                                    <tr>
                                        <td class="chb">
                                            <div class="checkbox simple">
                                                <input id="mc10" type="checkbox">
                                                <label for="mc10"></label>
                                            </div>
                                        </td>
                                        <td class="starred"><a href="javascript:void(0);"><i class="zmdi zmdi-star"></i></a></td>
                                        <td class="u_image"><img src="admin-template/assets/images/xs/avatar5.jpg" alt="user" class="rounded" width="30"></td>
                                        <td class="u_name"><h6 class="font-15 mt-0 mb-0">Maryam Amiri</h6></td>
                                        <td class="max_ellipsis">
                                            <a class="link" href="mail-single.jsp">
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            </a>
                                        </td>
                                        <td class="clip"><i class="zmdi zmdi-attachment-alt"></i></td>
                                        <td class="time">9:30 AM</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Jquery Core Js -->
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script>
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script>

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script>
</body>


</html>