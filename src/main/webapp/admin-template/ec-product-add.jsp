<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
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
</head>

<body class="theme-blush">
<jsp:include page="header.jsp"></jsp:include>


<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Chỉnh sửa sản phẩm</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a>
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
            <%String img = (String) request.getAttribute("img");%>
            <form>
                <div class="row clearfix">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="body">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-4 col-md-12">
                                        <div class="preview preview-pic tab-content">
                                            <div class="tab-pane active" id="product_1"><img
                                                    src="<%=img%>" class="img-fluid" alt=""/>
                                            </div>
                                            <div class="tab-pane" id="product_2"><img
                                                    src="<%=img%>" class="img-fluid" alt=""/>
                                            </div>
                                            <div class="tab-pane" id="product_3"><img
                                                    src="<%=img%>" class="img-fluid" alt=""/>
                                            </div>
                                            <div class="tab-pane" id="product_4"><img
                                                    src="admin-template/assets/images/sm/img.png" class="img-fluid" alt=""/>
                                            </div>
                                        </div>
                                        <ul class="preview thumbnail nav nav-tabs">
                                            <li class="nav-item"><a class="nav-link active" data-toggle="tab"
                                                                    href="#product_1"><img
                                                    src="admin-template/assets/images/sm/img.png"
                                                    alt=""/></a></li>
                                            <li class="nav-item"><a class="nav-link" data-toggle="tab"
                                                                    href="#product_2"><img
                                                    src="admin-template/assets/images/sm/img.png"
                                                    alt=""/></a></li>
                                            <li class="nav-item"><a class="nav-link" data-toggle="tab"
                                                                    href="#product_3"><img
                                                    src="admin-template/assets/images/sm/img.png"
                                                    alt=""/></a></li>
                                            <li class="nav-item"><a class="nav-link" data-toggle="tab"
                                                                    href="#product_4"><img
                                                    src="admin-template/assets/images/sm/img.png"
                                                    alt=""/></a></li>
                                        </ul>
                                    </div>
                                    <div class="col-xl-9 col-lg-8 col-md-12">


                                        <div class="product details">
                                            <label for="product_name">Tên sản phẩm</label>
                                            <div class="form-group">
                                                <input type="text" id="product_name" class="form-control"
                                                       name="name" placeholder="Nhập tên sản phẩm">
                                            </div>
                                            <label for="product_price">Giá sản phẩm</label>
                                            <div class="form-group">
                                                <input type="number" id="product_price" class="form-control"
                                                       name="price" placeholder="Nhập giá sản phẩm">
                                            </div>
                                            <%List<Categories> categoriesList = (List<Categories>) request.getAttribute("listCategories");%>
                                            <label for="product_category">Phân loại sản phẩm</label>
                                            <div class="form-group">
                                                <select id="product_category" class="form-control show-tick ms select2"
                                                        name="IdC" data-placeholder="Select">
                                                    <%
                                                        for (Categories category : categoriesList) {
                                                    %>
                                                    <option value="<%=category.getIdC()%>"><%=category.getNameC()%>
                                                    </option>
                                                    <%}%>
                                                </select>
                                            </div>
                                            <label for="product_quantity">Số lượng trong kho</label>
                                            <div class="form-group">
                                                <input type="number" id="product_quantity" class="form-control"
                                                       name="quantity" placeholder="Nhập số lượng sản phẩm">
                                            </div>
                                            <label for="product_image1">Ảnh sản phẩm</label>
                                            <div class="form-group">
                                                <input type="text" id="product_image1" class="form-control"
                                                       name="img1" placeholder="Ảnh 1">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" id="product_image2" class="form-control"
                                                       name="img2" placeholder="Ảnh 2">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" id="product_image3" class="form-control"
                                                       name="img3" placeholder="Ảnh 3">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" id="product_image4" class="form-control"
                                                       name="img4" placeholder="Ảnh 4">
                                            </div>
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
                                                        <textarea rows="4" class="form-control no-resize"
                                                                  name="description"
                                                                  id="product_description"
                                                                  placeholder="Hãy nhập thông tin sản phẩm..."></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" onclick="saveProduct()"
                                                class="btn btn-raised btn-primary btn-round waves-effect">Lưu
                                        </button>
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

<script>
    function saveProduct() {
        var product_name = document.getElementById("product_name").value;
        var product_price = document.getElementById("product_price").value;
        var product_quantity = document.getElementById("product_quantity").value;
        var product_category = document.getElementById("product_category").value;
        var product_image1 = document.getElementById("product_image1").value;
        var product_image2 = document.getElementById("product_image2").value;
        var product_image3 = document.getElementById("product_image3").value;
        var product_image4 = document.getElementById("product_image4").value;
        var product_description = document.getElementById("product_description").value;

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "admin-product", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                alert("Sản phẩm đã được thêm thành công.");
            }
        };
        xhr.send("name=" + encodeURIComponent(product_name)
            + "&price=" + encodeURIComponent(product_price)
            + "&quantity=" + encodeURIComponent(product_quantity)
            + "&description=" + encodeURIComponent(product_description)
            + "&IdC=" + encodeURIComponent(product_category)
            + "&img1=" + encodeURIComponent(product_image1)
            + "&img2=" + encodeURIComponent(product_image2)
            + "&img3=" + encodeURIComponent(product_image3)
            + "&img4=" + encodeURIComponent(product_image4)
            + "&command=add");
    }
</script><!-- Custom Js -->
</body>

</html>