<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/18/2023
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Shop Mỹ Phẩm QST</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="Free HTML Templates" name="keywords"/>
    <meta content="Free HTML Templates" name="description"/>
    <link rel="stylesheet" href="user-template/css/profile.css">
    <link rel="stylesheet" href="user-template/css/styles.css">
    <link rel="stylesheet" href="user-template/font/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Favicon -->
    <link href="user-template/img/favicon.png" rel="icon"/>

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
            rel="stylesheet"
    />

    <!-- Font Awesome -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            rel="stylesheet"
    />

    <!-- Libraries Stylesheet -->
    <link
            href="user-template/lib/owlcarousel/assets/owl.carousel.min.css"
            rel="stylesheet"
    />

    <!-- Customized Bootstrap Stylesheet -->
    <link rel="stylesheet" href="./css/edit-profile.css"/>
    <link href="user-template/css/style.css" rel="stylesheet"/>
</head>

<body>


<!-- Topbar Start -->
<jsp:include page="header.jsp"></jsp:include>
<!-- Page Header Start -->
<% Account acc = (Account) request.getSession().getAttribute("a");
    Account acc1 = AccountService.getAccountById(String.valueOf(acc.getIdA()));
%>
<section class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__text">
                    <h4> Tài khoản</h4>
                    <div class="breadcrumb__links">
                        <a href="./home">Trang chủ</a>
                        <a href="./home">Tài khoản</a>
                        <span>Chỉnh sửa tài khoản</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Page Header End -->
<div class="container">
    <div class="main-body">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div
                                class="d-flex flex-column align-items-center text-center"
                        >
                            <img
                                    src=" <%if (acc1.getImg()==null){%>
                                    ./img/avatar.png
                                    <%}else{%>
                                    <%= acc1.getImg() %>
                                    <%}%>"
                                    alt="Admin"
                                    class="rounded-circle p-1 bg-primary"
                                    width="150px"
                            />
                            <div class="mt-3">
                                <h4><%if (acc1.getUser() == null) {%>
                                    <%=acc1.getFullName()%>
                                    <%} else {%>
                                    <%= acc1.getUser()%>
                                    <%}%>
                                </h4>
                                <p class="text-muted font-size-sm">
                                    <%if (acc1.getAddress() == null) {%>

                                    <%} else {%>
                                    <%= acc1.getAddress()%> %>
                                    <%}%>
                                </p>
                                <button class="btn btn-primary">Theo dõi</button>
                                <button class="btn btn-outline-primary">
                                    Nhắn tin
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <form action="edit-profile" method="post">
                            <input name="idAccount" value="<%= acc.getIdA() %>" type="hidden">
                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Họ và tên</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="text"
                                            name="fullName"
                                            class="form-control"
                                            value="<%if (acc1.getFullName() == null) {%>Chưa có thông tin
                                <%} else {%>
                                <%= acc1.getFullName()%>
                                <%}%>"
                                    />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">E-mail</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="text"
                                            name="email"
                                            class="form-control"
                                            value="<%if (acc1.getEmail() == null) {%>Chưa có thông tin
                                <%} else {%>
                                <%= acc1.getEmail()%>
                                <%}%>"
                                    />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Số điện thoại</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="text"
                                            name="phone"
                                            class="form-control"
                                            value="<%if (acc1.getPhone() == null) {%>Chưa có thông tin
                                <%} else {%>
                                <%= acc1.getPhone()%>
                                <%}%>"
                                    />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Địa chỉ</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="text"
                                            name="address"
                                            class="form-control"
                                            value="<%if (acc1.getAddress() == null) {%>Chưa có thông tin
                                <%} else {%>
                                <%= acc1.getAddress()%>
                                <%}%>"
                                    />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="submit"
                                            class="btn btn-primary px-4"
                                            value="Lưu"
                                    />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row"></div>
            </div>
        </div>
    </div>
</div>
<!-- Footer Start -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer End -->

<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"
><i class="fa fa-angle-double-up"></i
></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="user-template/lib/easing/easing.min.js"></script>
<script src="user-template/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="user-template/mail/jqBootstrapValidation.min.js"></script>
<script src="user-template/mail/contact.js"></script>

<!-- Template Javascript -->
<script src="user-template/js/main.js"></script>

<script src="user-template/js/autoLoadCart.js"></script>

</body>
</html>
