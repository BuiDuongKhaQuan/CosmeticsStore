<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

    <title>:: Aero Bootstrap4 Admin ::</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="admin-template/assets/plugins/jquery-steps/jquery.steps.css">

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
                        <h2>Form Wizard</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a>
                            </li>
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Forms</a></li>
                            <li class="breadcrumb-item active">Form Wizard</li>
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
                <!-- Basic Example | Horizontal Layout -->
                <div class="row clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="card">
                            <div class="header">
                                <h2><strong>Ví dụ cơ bản</strong> - Bố cục ngang</h2>
                                <ul class="header-dropdown">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                            data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
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
                                <div id="wizard_horizontal">
                                    <h2>Bước 1</h2>
                                    <section>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut nulla
                                            nunc. Maecenas
                                            arcu sem, hendrerit a tempor quis, sagittis accumsan tellus. In hac
                                            habitasse platea
                                            dictumst. Donec a semper dui. Nunc eget quam libero. Nam at felis metus. Nam
                                            tellus
                                            dolor, tristique ac tempus nec, iaculis quis nisi. </p>
                                    </section>
                                    <h2>Bước 2</h2>
                                    <section>
                                        <p>Donec mi sapien, hendrerit nec egestas a, rutrum vitae dolor. Nullam
                                            venenatis diam ac
                                            ligula elementum pellentesque. In lobortis sollicitudin felis non eleifend.
                                            Morbi
                                            tristique tellus est, sed tempor elit. Morbi varius, nulla quis condimentum
                                            dictum,
                                            nisi elit condimentum magna, nec venenatis urna quam in nisi. Integer
                                            hendrerit sapien
                                            a diam adipiscing consectetur. In euismod augue ullamcorper leo dignissim
                                            quis elementum
                                            arcu porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Vestibulum leo
                                            velit, blandit ac tempor nec, ultrices id diam. Donec metus lacus, rhoncus
                                            sagittis
                                            iaculis nec, malesuada a diam. Donec non pulvinar urna. Aliquam id velit
                                            lacus. </p>
                                    </section>
                                    <h2>Bước 3</h2>
                                    <section>
                                        <p> Morbi ornare tellus at elit ultrices id dignissim lorem elementum. Sed eget
                                            nisl at justo
                                            condimentum dapibus. Fusce eros justo, pellentesque non euismod ac, rutrum
                                            sed quam.
                                            Ut non mi tortor. Vestibulum eleifend varius ullamcorper. Aliquam erat
                                            volutpat.
                                            Donec diam massa, porta vel dictum sit amet, iaculis ac massa. Sed elementum
                                            dui
                                            commodo lectus sollicitudin in auctor mauris venenatis. </p>
                                    </section>
                                    <h2>Bước 4</h2>
                                    <section>
                                        <p> Quisque at sem turpis, id sagittis diam. Suspendisse malesuada eros posuere
                                            mauris vehicula
                                            vulputate. Aliquam sed sem tortor. Quisque sed felis ut mauris feugiat
                                            iaculis nec
                                            ac lectus. Sed consequat vestibulum purus, imperdiet varius est pellentesque
                                            vitae.
                                            Suspendisse consequat cursus eros, vitae tempus enim euismod non. Nullam ut
                                            commodo
                                            tortor. </p>
                                    </section>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Basic Example | Vertical Layout -->
                <div class="row clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="card">
                            <div class="header">
                                <h2><strong>Ví dụ cơ bản</strong> - Bố cục dọc</h2>
                                <ul class="header-dropdown">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                            data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
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
                                <div id="wizard_vertical">
                                    <h2>Bước 1</h2>
                                    <section>
                                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut nulla
                                            nunc. Maecenas
                                            arcu sem, hendrerit a tempor quis, sagittis accumsan tellus. In hac
                                            habitasse platea
                                            dictumst. Donec a semper dui. Nunc eget quam libero. Nam at felis metus. Nam
                                            tellus
                                            dolor, tristique ac tempus nec, iaculis quis nisi. </p>
                                    </section>
                                    <h2>Bước 2</h2>
                                    <section>
                                        <p> Donec mi sapien, hendrerit nec egestas a, rutrum vitae dolor. Nullam
                                            venenatis diam ac
                                            ligula elementum pellentesque. In lobortis sollicitudin felis non eleifend.
                                            Morbi
                                            tristique tellus est, sed tempor elit. Morbi varius, nulla quis condimentum
                                            dictum,
                                            nisi elit condimentum magna, nec venenatis urna quam in nisi. Integer
                                            hendrerit sapien
                                            a diam adipiscing consectetur. In euismod augue ullamcorper leo dignissim
                                            quis elementum
                                            arcu porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Vestibulum leo
                                            velit, blandit ac tempor nec, ultrices id diam. Donec metus lacus, rhoncus
                                            sagittis
                                            iaculis nec, malesuada a diam. Donec non pulvinar urna. Aliquam id velit
                                            lacus. </p>
                                    </section>
                                    <h2>Bước 3</h2>
                                    <section>
                                        <p> Morbi ornare tellus at elit ultrices id dignissim lorem elementum. Sed eget
                                            nisl at justo
                                            condimentum dapibus. Fusce eros justo, pellentesque non euismod ac, rutrum
                                            sed quam.
                                            Ut non mi tortor. Vestibulum eleifend varius ullamcorper. Aliquam erat
                                            volutpat.
                                            Donec diam massa, porta vel dictum sit amet, iaculis ac massa. Sed elementum
                                            dui
                                            commodo lectus sollicitudin in auctor mauris venenatis. </p>
                                    </section>
                                    <h2>Bước 4</h2>
                                    <section>
                                        <p> Quisque at sem turpis, id sagittis diam. Suspendisse malesuada eros posuere
                                            mauris vehicula
                                            vulputate. Aliquam sed sem tortor. Quisque sed felis ut mauris feugiat
                                            iaculis nec
                                            ac lectus. Sed consequat vestibulum purus, imperdiet varius est pellentesque
                                            vitae.
                                            Suspendisse consequat cursus eros, vitae tempus enim euismod non. Nullam ut
                                            commodo
                                            tortor. </p>
                                    </section>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Advanced Form Example With Validation -->
                <div class="row clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="card">
                            <div class="header">
                                <h2><strong>Ví dụ về form xác thực</strong> nâng cao</h2>
                                <ul class="header-dropdown">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                            data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
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
                                <form id="wizard_with_validation" method="POST">
                                    <h3>Thông tin tài khoản</h3>
                                    <fieldset>
                                        <div class="form-group form-float">
                                            <input type="text" class="form-control" placeholder="Tên người dùng *"
                                                name="username" required>
                                        </div>
                                        <div class="form-group form-float">
                                            <input type="password" class="form-control" placeholder="Mật khẩu *"
                                                name="password" id="password" required>
                                        </div>
                                        <div class="form-group form-float">
                                            <input type="password" class="form-control" placeholder="Xác nhận mật khẩu *"
                                                name="confirm" required>
                                        </div>
                                    </fieldset>
                                    <h3>Thông tin hồ sơ</h3>
                                    <fieldset>
                                        <div class="form-group form-float">
                                            <input type="text" name="name" placeholder="Tên *"
                                                class="form-control" required>
                                        </div>
                                        <div class="form-group form-float">
                                            <input type="text" name="surname" placeholder="Họ *"
                                                class="form-control" required>

                                            <div class="form-group form-float">
                                                <input type="email" name="email" placeholder="Email *"
                                                    class="form-control" required>
                                            </div>
                                            <div class="form-group form-float">
                                                <textarea name="address" cols="30" rows="3" placeholder="Địa chỉnh *"
                                                    class="form-control no-resize" required></textarea>
                                            </div>
                                            <div class="form-group form-float">
                                                <input min="18" type="number" name="age" placeholder="Tuổi *"
                                                    class="form-control" required>
                                                <div class="help-info">Bước cảnh báo sẽ hiển thị nếu độ tuổi dưới 18</div>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <h3>Điều khoản & Điều kiện - Kết thúc</h3>
                                    <fieldset>
                                        <input id="acceptTerms-2" name="acceptTerms" type="checkbox" required>
                                        <label for="acceptTerms-2">Tôi đồng ý với các Điều khoản và Điều kiện.</label>
                                    </fieldset>
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
    <script src="admin-template/assets/js/pages/forms/form-wizard.js"></script>
</body>


</html>