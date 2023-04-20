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
                        <h2>Media Object</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Aero</a>
                            </li>
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Thành phần</a></li>
                            <li class="breadcrumb-item active">Media Object</li>
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
                    <div class="col-lg-12 col-md-12 col-sm-12 ">
                        <div class="card">
                            <div class="header">
                                <h2><strong>Default</strong> Media</h2>
                                <ul class="header-dropdown">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                            data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                        <ul class="dropdown-menu dropdown-menu-right">
                                            <li><a href="javascript:void(0);">Action</a></li>
                                            <li><a href="javascript:void(0);">Another action</a></li>
                                            <li><a href="javascript:void(0);">Something else</a></li>
                                        </ul>
                                    </li>
                                    <li class="remove">
                                        <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="body">
                                <div class="media mleft">
                                    <div class="media-left"> <a href="javascript:void(0);"> <img class="media-object"
                                                src="admin-template/assets/images/lg/avatar1.jpg" width="64" height="64" alt=""> </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">Media heading</h4>
                                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque
                                        ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus
                                        viverra
                                        turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue
                                        felis
                                        in faucibus.
                                    </div>
                                </div>
                                <div class="media mleft">
                                    <div class="media-left"> <a href="javascript:void(0);"> <img alt=""
                                                class="media-object" src="admin-template/assets/images/lg/avatar2.jpg" width="64"
                                                height="64"> </a> </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">Media heading</h4>
                                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque
                                        ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus
                                        viverra
                                        turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue
                                        felis
                                        in faucibus.
                                        <div class="media m-t-20">
                                            <div class="media-left"> <a href="javascript:void(0);"> <img alt=""
                                                        class="media-object" src="admin-template/assets/images/lg/avatar3.jpg"
                                                        width="64" height="64"> </a> </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Nested media heading</h4>
                                                Cras sit amet nibh libero, in gravida nulla. Nulla
                                                vel metus scelerisque ante sollicitudin commodo. Cras purus odio,
                                                vestibulum
                                                in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
                                                vulputate
                                                fringilla. Donec lacinia congue felis in faucibus.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="media mright">
                                    <div class="media-body">
                                        <h4 class="media-heading">Media heading</h4>
                                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque
                                        ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus
                                        viverra
                                        turpis.
                                    </div>
                                    <div class="media-right"> <a href="javascript:void(0);"> <img alt=""
                                                class="media-object" src="admin-template/assets/images/lg/avatar4.jpg" width="64"
                                                height="64"> </a> </div>
                                </div>
                                <div class="media mleft">
                                    <div class="media-left"> <a href="javascript:void(0);"> <img alt=""
                                                class="media-object" src="admin-template/assets/images/lg/avatar1.jpg" width="64"
                                                height="64"> </a> </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">Media heading</h4>
                                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque
                                        ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus
                                        viverra
                                        turpis.
                                    </div>
                                    <div class="media-right"> <a href="javascript:void(0);"> <img class="media-object"
                                                src="admin-template/assets/images/lg/avatar2.jpg" width="64" height="64"> </a> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 ">
                        <div class="card">
                            <div class="header">
                                <h2><strong>Media</strong> Alignment</h2>
                                <ul class="header-dropdown">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                            data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                        <ul class="dropdown-menu dropdown-menu-right">
                                            <li><a href="javascript:void(0);">Action</a></li>
                                            <li><a href="javascript:void(0);">Another action</a></li>
                                            <li><a href="javascript:void(0);">Something else</a></li>
                                        </ul>
                                    </li>
                                    <li class="remove">
                                        <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="body">
                                <div class="media">
                                    <div class="media-left"> <a href="javascript:void(0);"> <img alt=""
                                                class="media-object" src="admin-template/assets/images/lg/avatar1.jpg" width="64"
                                                height="64"> </a> </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">Top aligned media</h4>
                                        <p> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque
                                            ante sollicitudin
                                            commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                            Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue
                                            felis
                                            in faucibus. </p>
                                        <p> Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo.
                                            Cum sociis
                                            natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                                        </p>
                                    </div>
                                </div>
                                <div class="media media-middle">
                                    <div class="media-left"> <a href="javascript:void(0);"> <img alt=""
                                                class="media-object" src="admin-template/assets/images/lg/avatar2.jpg" width="64"
                                                height="64"> </a> </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">Middle aligned media</h4>
                                        <p> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque
                                            ante sollicitudin
                                            commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                            Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue
                                            felis
                                            in faucibus. </p>
                                        <p> Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo.
                                            Cum sociis
                                            natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                                        </p>
                                    </div>
                                </div>
                                <div class="media media-bottom">
                                    <div class="media-left"> <a href="javascript:void(0);"> <img alt=""
                                                class="media-object" src="admin-template/assets/images/lg/avatar3.jpg" width="64"
                                                height="64"> </a> </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">Bottom aligned media</h4>
                                        <p> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque
                                            ante sollicitudin
                                            commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                            Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue
                                            felis
                                            in faucibus. </p>
                                        <p> Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo.
                                            Cum sociis
                                            natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                                        </p>
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