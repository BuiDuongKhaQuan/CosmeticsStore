<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Image" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.tools.DateUtil" %>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

    <title>:: Aero Bootstrap4 Admin :: Product detail</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Favicon-->
    <link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Custom Css -->
    <link rel="stylesheet" href="admin-template/assets/css/style.min.css">
    <link rel="stylesheet" href="admin-template/assets/plugins/dropify/css/dropify.min.css" type="text/css">

</head>

<body class="theme-blush">
<jsp:include page="header.jsp"></jsp:include>


<section class="content">
    <div class="body_scroll">
        <% Product product = (Product) request.getAttribute("product");%>
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Chỉnh sửa sản phẩm</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="admin-home"><i class="zmdi zmdi-home"></i> Admin</a>
                        </li>
                        <li class="breadcrumb-item">Quản lí sản phẩm</li>
                        <li class="breadcrumb-item active">Chỉnh sửa sản phẩm</li>
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
            <form id="edit-product">
                <div class="row clearfix">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="body">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-4 col-md-12">
                                        <div class="preview preview-pic tab-content">
                                            <%
                                                List<Image> imageList = ProductService.getImages(String.valueOf(product.getIdP()));
                                            %>
                                            <div class="tab-pane active" id="product_1"><img
                                                    src="<%=imageList.get(0).getImg()%>" class="img-fluid" alt=""/>
                                            </div>
                                            <%
                                                int a = 1;
                                                for (int i = 1; i < imageList.size(); i++) {
                                                    a++;
                                            %>
                                            <div class="tab-pane" id="product_<%=a%>"><img
                                                    src="<%=imageList.get(i).getImg()%>" class="img-fluid" alt=""/>
                                            </div>
                                            <%}%>
                                        </div>
                                        <ul class="preview thumbnail nav nav-tabs">
                                            <li class="nav-item"><a class="nav-link active" data-toggle="tab"
                                                                    href="#product_1"><img
                                                    src="<%=imageList.get(0).getImg()%>"
                                                    alt=""/></a></li>
                                            <%
                                                int b = 1;
                                                for (int i = 1; i < imageList.size(); i++) {
                                                    b++;
                                            %>
                                            <li class="nav-item"><a class="nav-link" data-toggle="tab"
                                                                    href="#product_<%=b%>"><img
                                                    src="<%=imageList.get(i).getImg()%>"
                                                    alt=""/></a></li>
                                            <%}%>
                                        </ul>
                                    </div>


                                    <div class="col-xl-9 col-lg-8 col-md-12">


                                        <input value="<%=product.getIdP()%>" type="hidden" name="IdP" id="IdP">

                                        <label for="product_name">Tên sản phẩm</label>
                                        <div class="form-group">
                                            <input type="text" id="product_name" class="form-control"
                                                   value="<%=product.getName()%>">
                                        </div>
                                        <label for="product_image1">Ảnh sản phẩm</label>
                                        <% int c = 0;
                                            for (int i = 0; i < imageList.size(); i++) {
                                                c++;
                                        %>
                                        <div class="form-group">
                                            <input type="text" id="product_image1" class="form-control"
                                                   value="<%=imageList.get(i).getImg()%>"
                                                   placeholder="Ảnh <%=c%>">
                                        </div>
                                        <%}%>
                                        <div class="row clearfix">
                                            <div class="col-sm-6">
                                                <label for="product_price">Giá sản phẩm</label>
                                                <div class="form-group">
                                                    <input type="text" id="product_price" class="form-control"
                                                           value="<%=product.getPrice()%>">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <label for="product_quantity">Số lượng trong kho</label>
                                                <div class="form-group">
                                                    <input type="number" id="product_quantity"
                                                           value="<%=product.getQuantity()%>" class="form-control"
                                                           placeholder="Nhập số lượng sản phẩm">
                                                </div>
                                            </div>
                                        </div>
                                        <%List<Categories> categoriesList = (List<Categories>) request.getAttribute("listCategories");%>
                                        <div class="row clearfix">
                                            <div class="col-sm-6">
                                                <label for="product_category">Phân loại sản phẩm</label>
                                                <div class="form-group">
                                                    <select id="product_category"
                                                            class="form-control show-tick ms select2"
                                                            data-placeholder="Select">
                                                        <%
                                                            for (Categories category : categoriesList) {
                                                                String selected = "";
                                                                if (category.getIdC() == product.getIdC()) {
                                                                    selected = "selected";
                                                                }
                                                        %>
                                                        <option value="<%=category.getIdC()%>" <%=selected%>><%=category.getNameC()%>
                                                        </option>
                                                        <%}%>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <label for="trademark">Thương hiệu</label>
                                                <div class="form-group">
                                                    <input type="text" id="trademark" class="form-control"
                                                           name="productNew" value="<%=product.getTrademark()%>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row clearfix">
                                            <div class="col-sm-6">
                                                <button class="btn-primary btn" onclick="show('promotion')">Cài đặt
                                                    khuyến mãi
                                                </button>
                                                <button class="btn-primary btn" onclick="show('new')">Cài đặt sản phẩm
                                                    mới
                                                </button>
                                            </div>
                                            <div class="col-sm-6"></div>
                                        </div>
                                        <div id="new-show" class="promotion">
                                            <div class="promotion-box">
                                                <label for="product_price" class="title">Cài đặt sản phẩm mới</label>
                                                <i class="zmdi zmdi-close icon-close"
                                                   onclick="closeNew()"></i>
                                                <div class="promotion-content">
                                                    <div class="label-text">
                                                        <label>Ngày kết thúc</label>
                                                    </div>
                                                    <div class="form-group-date">
                                                        <input type="datetime-local" id="date-new"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                                <button onclick="newProduct(<%=product.getIdP()%>)"
                                                        class="btn btn-raised btn-primary btn-round waves-effect">
                                                    Cài đặt
                                                </button>
                                            </div>
                                        </div>
                                        <div id="promotion-show" class="promotion">
                                            <div class="promotion-box">
                                                <label for="product_price" class="title">Cài đặt sản phẩm khuyến
                                                    mãi</label>
                                                <i class="zmdi zmdi-close icon-close"
                                                   onclick="closePromotion()"></i>
                                                <div class="promotion-content">
                                                    <div class="label-text">
                                                        <label>Ngày bắt đầu</label>
                                                    </div>
                                                    <div class="form-group-date">
                                                        <input type="datetime-local" id="date1"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                                <div class="promotion-content">
                                                    <div class="label-text">
                                                        <label>Ngày kết thúc</label>
                                                    </div>
                                                    <div class="form-group-date">
                                                        <input type="datetime-local" id="date2"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                                <div class="promotion-content">
                                                    <div class="label-text">
                                                        <label>Giá khuyến mãi</label>
                                                    </div>
                                                    <div class="form-group-date">
                                                        <input type="number" id="promotion-price"
                                                               class="form-control"
                                                               placeholder="Nhập giá khuyến mãi">
                                                    </div>
                                                </div>
                                                <button onclick="promotionProduct(<%=product.getIdP()%>)"
                                                        class="btn btn-raised btn-primary btn-round waves-effect">
                                                    Cài đặt
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="body">
                                    <ul class="nav nav-tabs">
                                        <li class="nav-item"><a class="nav-link active" data-toggle="tab"
                                                                href="#description">Mô tả</a></li>
                                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#review">Đánh
                                            giá</a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                            <div class="card">
                                <div class="body">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="description">
                                            <div class="row clearfix">
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <div class="form-line" style="width: 100%;">
                                                        <textarea rows="6" class="form-control no-resize"
                                                                  id="product_description"
                                                                  name="description"><%=product.getInformation()%></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="submit" onclick="saveProduct(<%=product.getIdP()%>)"
                                                    class="btn btn-raised btn-primary btn-round waves-effect">Lưu
                                            </button>
                                        </div>
                                        <div class="tab-pane" id="review">
                                            <p>Những đánh giá của sản phẩm</p>
                                            <ul class="row list-unstyled c_review mt-4">
                                                <li class="col-12">
                                                    <div class="avatar">
                                                        <a href="javascript:void(0);"><img class="rounded"
                                                                                           src="admin-template/assets/images/xs/avatar2.jpg"
                                                                                           alt="user"
                                                                                           width="60"></a>
                                                    </div>
                                                    <div class="comment-action">
                                                        <h5 class="c_name">Hossein Shams</h5>
                                                        <p class="c_msg mb-0">Cras sit amet nibh libero, in gravida
                                                            nulla.
                                                            Nulla vel metus scelerisque ante sollicitudin commodo. </p>
                                                        <div class="badge badge-primary">iPhone 8</div>
                                                        <span class="m-l-10">
                                                        <a href="javascript:void(0);"><i
                                                                class="zmdi zmdi-star col-amber"></i></a>
                                                        <a href="javascript:void(0);"><i
                                                                class="zmdi zmdi-star col-amber"></i></a>
                                                        <a href="javascript:void(0);"><i
                                                                class="zmdi zmdi-star col-amber"></i></a>
                                                        <a href="javascript:void(0);"><i
                                                                class="zmdi zmdi-star col-amber"></i></a>
                                                        <a href="javascript:void(0);"><i
                                                                class="zmdi zmdi-star-outline text-muted"></i></a>
                                                    </span>
                                                        <small class="comment-date float-sm-right">Dec 21, 2019</small>
                                                    </div>
                                                </li>

                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    </div>
</section>
<!-- Jquery Core Js -->
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="admin-template/assets/plugins/dropify/js/dropify.min.js"></script>

<%----%>
<script>
    function saveProduct(idP) {
        var product_name = document.getElementById("product_name").value;
        var product_price = document.getElementById("product_price").value;
        var product_quantity = document.getElementById("product_quantity").value;
        var product_category = document.getElementById("product_category").value;
        var product_description = document.getElementById("product_description").value;
        var product_trademark = document.getElementById("trademark").value;

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "admin-product", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                alert("Sản phẩm đã được cập nhật thành công.");
            }
        };
        xhr.send("name=" + encodeURIComponent(product_name)
            + "&price=" + encodeURIComponent(product_price)
            + "&quantity=" + encodeURIComponent(product_quantity)
            + "&description=" + encodeURIComponent(product_description)
            + "&idC=" + encodeURIComponent(product_category)
            + "&trademark=" + encodeURIComponent(product_trademark)
            + "&idP=" + idP
            + "&command=edit");
    }

    function promotionProduct(idP) {
        var date1 = document.getElementById("date1").value;
        var date2 = document.getElementById("date2").value;
        var price = document.getElementById("promotion-price").value;

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "admin-product", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                alert("Cập nhật khuyến mãi thành công.");
            }
        };
        xhr.send("idP=" + idP
            + "&command=promotion"
            + "&date1=" + encodeURIComponent(formatDate(date1))
            + "&date2=" + encodeURIComponent(formatDate(date2))
            + "&price=" + encodeURIComponent(price));
    }

    function newProduct(idP) {
        var date1 = document.getElementById("date-new").value;

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "admin-product", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                alert("Cập nhật sản phẩm mới thành công.");
            }
        };
        xhr.send("idP=" + idP
            + "&command=new"
            + "&date-new=" + encodeURIComponent(formatDate(date1)));
    }

    function formatDate(date) {
        let currentDate = new Date(date);
        let hours = currentDate.getHours();
        let minutes = currentDate.getMinutes();
        let seconds = currentDate.getSeconds();
        let ampm = hours >= 12 ? 'PM' : 'AM';
        hours = hours % 12;
        hours = hours ? hours : 12;
        let day = currentDate.getDate();
        let month = currentDate.getMonth() + 1;
        let year = currentDate.getFullYear();

        if (hours < 12) {
            hours = "0" + hours;
        }
        if (minutes < 10) {
            minutes = "0" + minutes;
        }
        if (seconds < 10) {
            seconds = "0" + seconds;
        }
        if (day < 10) {
            day = "0" + day;
        }
        if (month < 10) {
            month = "0" + month;
        }
        let formattedDate = hours + ":" + minutes + ":" + seconds + " " + ampm + " " + day + "/" + month + "/" + year;
        return formattedDate;
    }

    function show(command) {
        if (command == 'promotion') {
            var box = document.getElementById('promotion-show');
            box.style.display = 'flex';
        }
        if (command == 'new') {
            var box = document.getElementById('new-show');
            box.style.display = 'flex';
        }
    }

    function closePromotion() {

        var box = document.getElementById('promotion-show');
        box.style.display = 'none';
    }

    function closeNew() {

        var box = document.getElementById('new-show');
        box.style.display = 'none';

    }
</script><!-- Custom Js -->

</body>

</html>