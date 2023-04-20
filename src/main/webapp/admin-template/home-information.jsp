<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
    <link rel="stylesheet" href="admin-template/assets/plugins/dropify/css/dropify.min.css" type="text/css">
    .
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
                    <h2>Thông tin cửa hàng</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="blog-dashboard.jsp">Quản lí trang chủ</a></li>
                        <li class="breadcrumb-item active">Thông tin cửa hàng</li>
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
            <div class="tab-content">
                <div class="row">
                    <%
                        Shop s = (Shop) request.getAttribute("shop");
                    %>
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <div class="card">
                                        <div class="body">
                                            <img src="<%=s.getShopLogo()%>">
                                            <button class="btn-primary btn" onclick="show()">Cập nhật ảnh mới
                                            </button>
                                            <div id="show" class="promotion" style="display: none">
                                                <div class="promotion-box">
                                                    <label class="title">Cập nhật logo</label>
                                                    <img src="user-template/img/icon/close.png" width="22px"
                                                         class="zmdi zmdi-close icon-close"
                                                         onclick="closeNew()">
                                                    <div class="promotion-content">
                                                        <form action="UploadFileServlet" method="post"
                                                              enctype="multipart/form-data">
                                                            <input type="file" name="file" size="60" class="dropify"
                                                                   data-min-width="400"/>
                                                            <input type="submit" value="Upload"/>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <form>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Tên cửa hàng</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input id="name" type="text" class="form-control"
                                                   value="<%=s.getShopName()%>">
                                        </div>
                                    </div>
                                    <hr/>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">E-mail</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input id="email" type="text" class="form-control"
                                                   value="<%=s.getEmail()%>">
                                        </div>
                                    </div>
                                    <hr/>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Số điện thoại</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input id="phone" type="text" class="form-control"
                                                   value="<%=s.getPhone()%>">
                                        </div>
                                    </div>
                                    <hr/>

                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Địa chỉ</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input id="address" type="text" class="form-control"
                                                   value="<%=s.getAddress()%>">
                                        </div>
                                    </div>
                                    <hr/>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Câu slogan</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input id="slogan" type="text" class="form-control"
                                                   value="<%=s.getAboutShop()%>">
                                        </div>
                                    </div>
                                    <hr/>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Thiết kế bởi</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input id="desginer" type="text" class="form-control"
                                            value="<%=s.getDesignerBy()%>">
                                        </div>
                                    </div>
                                    <hr/>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Câu liên hệ</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <textarea id="contact" type="text" class="form-control"
                                                      value=""><%=s.getTextInHelp()%></textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <button
                                                    class="btn btn-primary px-4"
                                                    target="__blank"
                                                    type="button"
                                                    style="margin-top: 20px"
                                                    onclick="edit(<%=s.getIdS()%>)"
                                            >Lưu
                                            </button>
                                        </div>

                                    </div>
                                </form>
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
<script src="admin-template/assets/plugins/dropify/js/dropify.min.js"></script>
<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script>
    $('.dropify').dropify();

    function show() {
        var box = document.getElementById('show');
        box.style.display = 'flex';
    }

    function closeNew() {

        var box = document.getElementById('show');
        box.style.display = 'none';

    }

    function edit(idS) {
        var email = document.getElementById("email").value;
        var name = document.getElementById("name").value;
        var address = document.getElementById("address").value;
        var phone = document.getElementById("phone").value;
        var slogan = document.getElementById("slogan").value;
        var contact = document.getElementById("contact").value;
        var desginer = document.getElementById("desginer").value;
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "AdminHomeAll", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                alert("Cập nhật thông tin thành công.");
            }
        };
        xhr.send("idS=" + idS
            + "&email=" + encodeURIComponent(email)
            + "&name=" + encodeURIComponent(name)
            + "&address=" + encodeURIComponent(address)
            + "&slogan=" + encodeURIComponent(slogan)
            + "&contact=" + encodeURIComponent(contact)
            + "&desginer=" + encodeURIComponent(desginer)
            + "&phone=" + encodeURIComponent(phone)
            + "&command=information");
    }


</script>
</body>


</html>
