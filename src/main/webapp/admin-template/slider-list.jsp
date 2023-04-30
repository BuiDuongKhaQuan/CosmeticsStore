<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Blog" %>
<%@ page import="qht.shopmypham.com.vn.model.Slider" %>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
                    <h2>Danh sách slider </h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="admin-home"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item">Quản lí slider</li>
                        <li class="breadcrumb-item active">Danh sách slider</li>
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
        <div class="container">
            <div class="row">
                <% List<Slider> sliderList = (List<Slider>) request.getAttribute("sliderList");
                    for (Slider slider : sliderList) {%>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="blogitem mb-5">
                            <div class="blogitem-image">
                                <a href="blog-details.jsp"><img src="<%=slider.getImg()%>" style="height: 450px"
                                                                alt="blog image"></a>
                            </div>
                            <div class="blogitem-content">
                                <%
                                    if (slider.getStatus() == 1) {
                                %>
                                <h5>Trạng thái: hiện </h5>
                                <%} else {%>
                                <h5>Trạng thái: ẩn </h5>
                                <%} %>
                                <p><%=slider.getText()%>
                                </p>

                                <a href="admin-slider?command=edit&IdSl=<%=slider.getIdSl()%>"
                                   class="btn btn-default waves-effect waves-float btn-sm waves-green"><i
                                        class="zmdi zmdi-edit" style="font-size: 20px;"></i></a>
                                <a href="admin-slider?command=delete&IdSl=<%=slider.getIdSl()%>"
                                   class="btn btn-default waves-effect waves-float btn-sm waves-red"><i
                                        class="zmdi zmdi-delete" style="font-size: 20px;"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <%}%>
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