<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
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
        <% Account ac = (Account) request.getAttribute("account");
        %>
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Chỉnh sửa tài khoản</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="admin-home"><i class="zmdi zmdi-home"></i> Admin</a>
                        </li>
                        <li class="breadcrumb-item">Quản lí tài khoản</li>
                        <li class="breadcrumb-item"><a href="admin-account?command=list">Danh sách tài khoản</a></li>
                        <li class="breadcrumb-item active">Chỉnh sửa tài khoản</li>
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
                                            <div class="tab-pane active" id="product_1"><img
                                                    src="<%=ac.getImg()%>" class="img-fluid" alt="avatar"
                                                    style="min-width: 210px; min-height: 210px; border: 1px solid #ccc"/>
                                            </div>
                                            <div class="authorties" style="padding-top: 5px">
                                                <h4>Phân quyền</h4>

                                                <input type="checkbox" id="blogMana"
                                                    <%if(ac.getBlogManage()==1){%>
                                                       checked<%}%>>
                                                <label for="blogMana"> Quản lí blog</label><br>


                                                <input type="checkbox" id="acountMana"
                                                    <%if(ac.getAccountManage()==1){%>
                                                       checked<%}%>
                                                >
                                                <label for="acountMana"> Quản lí tài khoản</label><br>


                                                <input type="checkbox" id="productMana"
                                                    <%if(ac.getProductManage()==1){%>
                                                       checked<%}%>
                                                >
                                                <label for="productMana"> Quản lí sản phẩm</label><br>


                                                <input type="checkbox" id="orderMana"
                                                    <%if(ac.getOrderManage()==1){%>
                                                       checked<%}%>
                                                >
                                                <label for="orderMana"> Quản lí đơn hàng</label><br>


                                                <input type="checkbox" id="genaralMana"
                                                    <%if(ac.getGeneralManage()==1){%>
                                                       checked<%}%>
                                                >
                                                <label for="genaralMana"> Quản lí chung</label><br>


                                                <input type="checkbox" id="homeMana"
                                                    <%if(ac.getHomeManage()==1){%>
                                                       checked<%}%>
                                                >
                                                <label for="homeMana"> Quản lí thông trang chủ</label><br>
                                                <button type="submit" onclick="saveAuthur(<%=ac.getIdA()%>)"
                                                        class="btn btn-raised btn-primary btn-round waves-effect">Lưu
                                                </button>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-xl-9 col-lg-8 col-md-12">
                                        <div class="product details">
                                            <label for="fullName">Tên đầy đủ</label>
                                            <div class="form-group">
                                                <input type="text" id="fullName" class="form-control"
                                                       name="fullName" value="<%=ac.getFullName()%>">
                                            </div>
                                            <label for="email">Email</label>
                                            <div class="form-group">
                                                <input type="email" id="email" class="form-control"
                                                       name="email" value="<%=ac.getEmail()%>">
                                            </div>
                                            <label for="phone">Số điện thoại</label>
                                            <div class="form-group">
                                                <input type="text" id="phone" class="form-control"
                                                       value="<%=ac.getPhone()%>"
                                                       name="phone" placeholder="Nhập số điện thoại">
                                            </div>

                                            <label for="address">Địa chỉ</label>
                                            <div class="form-group">
                                                <input type="text" id="address" class="form-control"
                                                       value="<%=ac.getAddress()%>"
                                                       name="address" placeholder="Nhập địa chỉ">
                                            </div>
                                            <button type="submit"
                                                    class="btn btn-raised btn-primary btn-round waves-effect">Đặt lại
                                                mật khẩu
                                            </button>
                                            <button type="submit" onclick="saveAccount(<%=ac.getIdA()%>)"
                                                    class="btn btn-raised btn-primary btn-round waves-effect">Lưu
                                            </button>
                                            <div id="alert-div">

                                            </div>
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

</section>
<!-- Jquery Core Js -->
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->

<%----%>
<script>
    function saveAccount(idA) {
        var fullName = document.getElementById("fullName").value;
        var email = document.getElementById("email").value;
        var phone = document.getElementById("phone").value;
        var address = document.getElementById("address").value;

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "admin-account", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                showAlert();
            }
        };
        xhr.send("fullName=" + encodeURIComponent(fullName)
            + "&email=" + encodeURIComponent(email)
            + "&phone=" + encodeURIComponent(phone)
            + "&address=" + encodeURIComponent(address)
            + "&idA=" + idA
            + "&command=edit");
    }

    function saveAuthur(idA) {
        var acountMana = document.getElementById("acountMana").checked;
        var productMana = document.getElementById("productMana").checked;
        var orderMana = document.getElementById("orderMana").checked;
        var blogMana = document.getElementById("blogMana").checked;
        var genaralMana = document.getElementById("genaralMana").checked;
        var homeMana = document.getElementById("homeMana").checked;


        var xhr = new XMLHttpRequest();
        xhr.open("POST", "admin-account", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                showAlert();
            }
        };
        xhr.send("acountMana=" + encodeURIComponent(acountMana)
            + "&productMana=" + encodeURIComponent(productMana)
            + "&orderMana=" + encodeURIComponent(orderMana)
            + "&blogMana=" + encodeURIComponent(blogMana)
            + "&genaralMana=" + encodeURIComponent(genaralMana)
            + "&homeMana=" + encodeURIComponent(homeMana)
            + "&idA=" + idA
            + "&command=editAuthur");
    }

    function showAlert() {
        const alertMessage1 = "This is an alert message!";
        const alertDiv = document.getElementById("alert-div");
        const closeButton = document.createElement("button");

        alertDiv.innerHTML = `Chỉnh sửa thành công`;
        closeButton.innerText = "OK";
        closeButton.addEventListener("click", hideAlert);
        alertDiv.appendChild(closeButton);

        alertDiv.style.display = "block";
    }

    function hideAlert() {
        const alertDiv = document.getElementById("alert-div");
        alertDiv.style.display = "none";
    }


</script><!-- Custom Js -->

</body>

</html>