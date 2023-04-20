<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="org.json.JSONArray" %>
<%@ page import="org.json.JSONObject" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
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
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Thêm sản phẩm</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="admin-home"><i class="zmdi zmdi-home"></i> Admin</a>
                        </li>
                        <li class="breadcrumb-item">Quản lí sản phẩm</li>
                        <li class="breadcrumb-item active">Thêm sản phẩm</li>
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
                <div class="col-lg-12">
                    <div class="card">
                        <div class="body">
                            <div class="row">
                                <%
                                    Map<String, String> map = (Map<String, String>) request.getSession().getAttribute("imgs");
                                    String img = "";
                                    if (map != null) {
                                        List<String> list = new ArrayList<>();
                                        for (Map.Entry<String, String> entry : map.entrySet()) {
                                            img = "data:image/jpeg;base64," + entry.getValue();
                                            list.add(img);
                                        }
                                %>
                                <div class="col-xl-3 col-lg-4 col-md-12">
                                    <div class="preview preview-pic tab-content">
                                        <div class="tab-pane active" id="product_1"><img
                                                src="<%=list.get(0)%>" style="height: 330px"
                                                class="img-fluid" alt=""/>
                                        </div>
                                        <% int a = 1;
                                            for (int i = 1; i < list.size(); i++) {
                                                a++;%>
                                        <div class="tab-pane" id="product_<%=a%>"><img
                                                src="<%=list.get(i)%>" class="img-fluid" style="height: 330px" alt=""/>
                                        </div>
                                        <%}%>
                                    </div>
                                    <ul class="preview thumbnail nav nav-tabs">
                                        <li class="nav-item"><a class="nav-link active" data-toggle="tab"
                                                                href="#product_1"><img
                                                src="<%=list.get(0)%>" style="height: 68px;"
                                                alt=""/></a></li>
                                        <% int b = 1;
                                            for (int i = 1; i < list.size(); i++) {
                                                b++;%>
                                        <li class="nav-item"><a class="nav-link" data-toggle="tab"
                                                                href="#product_<%=b%>"><img
                                                src="<%=list.get(i)%>" style="height: 68px;"
                                                alt=""/></a></li>
                                        <%}%>
                                    </ul>
                                    <button class="btn-primary btn" onclick="show()">Tải ảnh lên</button>
                                    <div id="show" class="promotion">
                                        <div class="promotion-box">
                                            <label class="title">Tải lên ảnh sản phẩm</label>
                                            <img src="user-template/img/icon/close.png" width="22px"
                                                 class="zmdi zmdi-close icon-close"
                                                 onclick="closeNew()">
                                            <div class="promotion-content">
                                                <form id="upload-form" method="post"
                                                      enctype="multipart/form-data">
                                                    <input type="file" name="file-input"
                                                           class="dropify" id="file-input">
                                                    <button type="submit">Tải lên</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%} else {%>

                                <div class="col-xl-3 col-lg-4 col-md-12">
                                    <div class="preview preview-pic tab-content">
                                        <div class="tab-pane active" id="product_a"><img
                                                src="https://fastcare.vn/core/img/default_image.png" class="img-fluid"
                                                alt=""/>
                                        </div>
                                    </div>
                                    <ul class="preview thumbnail nav nav-tabs">
                                        <li class="nav-item"><a class="nav-link active" data-toggle="tab"
                                                                href="#product_a"><img
                                                src="https://fastcare.vn/core/img/default_image.png"
                                                alt=""/></a></li>
                                    </ul>
                                    <button class="btn-primary btn" onclick="show()">Tải ảnh lên</button>
                                    <div id="show" class="promotion">
                                        <div class="promotion-box">
                                            <label class="title">Tải lên ảnh sản phẩm</label>
                                            <img src="user-template/img/icon/close.png" width="22px"
                                                 class="zmdi zmdi-close icon-close"
                                                 onclick="closeNew()">
                                            <div class="promotion-content">
                                                <form id="upload-form" method="post"
                                                      enctype="multipart/form-data">
                                                    <input type="file" name="file-input"
                                                           class="dropify" id="file-input">
                                                    <button type="submit">Tải lên</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%}%>
                                <div class="col-xl-9 col-lg-8 col-md-12">


                                    <label for="product_name">Tên sản phẩm</label>
                                    <div class="form-group">
                                        <input type="text" id="product_name" class="form-control"
                                               value="">
                                    </div>
                                    <label for="product_image1">Ảnh sản phẩm</label>

                                    <div class="form-group">
                                        <input type="text" id="product_image1" class="form-control"
                                               value=""
                                               placeholder="Ảnh ">
                                    </div>

                                    <div class="row clearfix">
                                        <div class="col-sm-6">
                                            <label for="product_price">Giá sản phẩm</label>
                                            <div class="form-group">
                                                <input type="text" id="product_price" class="form-control"
                                                       value="">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <label for="product_quantity">Số lượng trong kho</label>
                                            <div class="form-group">
                                                <input type="number" id="product_quantity"
                                                       value="" class="form-control"
                                                       placeholder="Nhập số lượng sản phẩm">
                                            </div>
                                        </div>
                                    </div>
                                    <%
                                        List<Categories> categoriesList = (List<Categories>) request.getAttribute("listCategories");
                                    %>
                                    <div class="row clearfix">
                                        <div class="col-sm-6">
                                            <label for="product_category">Phân loại sản phẩm</label>
                                            <div class="form-group">
                                                <select id="product_category"
                                                        class="form-control show-tick ms select2"
                                                        data-placeholder="Select">
                                                    <%
                                                        for (Categories category : categoriesList) {
                                                    %>
                                                    <option value="<%=category.getIdC()%>"><%=category.getNameC()%>
                                                    </option>
                                                    <%}%>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <label for="trademark">Thương hiệu</label>
                                            <div class="form-group">
                                                <input type="text" id="trademark" class="form-control"
                                                       name="productNew" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-sm-6">
                                            <%--                                                                                            <button class="btn-primary btn" onclick="show('promotion')">Cài đặt--%>
                                            <%--                                                                                                khuyến mãi--%>
                                            <%--                                                                                            </button>--%>
                                            <%--                                                                                            <button class="btn-primary btn" onclick="show('new')">Cài đặt sản phẩm--%>
                                            <%--                                                                                                mới--%>
                                            <%--                                                                                            </button>--%>
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
                                            <button onclick="newProduct()"
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
                                            <button onclick="promotionProduct()"
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
                                                    <div class="form-line">
                                                        <textarea rows="6" class="form-control no-resize"
                                                                  id="product_description"
                                                                  name="description"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" onclick="saveProduct()"
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
        </div>
    </div>
    </div>
</section>
<!-- Jquery Core Js -->
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="admin-template/assets/plugins/dropify/js/dropify.min.js"></script>

<script>
    $('.dropify').dropify();

    const form = document.getElementById('upload-form');
    const fileInput = document.getElementById('file-input');

    form.addEventListener('submit', (event) => {
        event.preventDefault();
        const formData = new FormData();
        formData.append('file', fileInput.files[0]);
        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'UpLoadImgPro', true);
        xhr.onload = function () {
            if (xhr.status === 200) {
                console.log('File uploaded successfully.');
                window.location.href = "admin-product?command=add";
            } else {
                console.log('An error occurred while uploading the file.');
            }
        };
        xhr.send(formData);
    });

    function saveProduct() {
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
            + "&command=add");
    }


    function show() {
        var box = document.getElementById('show');
        box.style.display = 'flex';
    }

    function closeNew() {

        var box = document.getElementById('show');
        box.style.display = 'none';

    }
</script><!-- Custom Js -->
</body>

</html>