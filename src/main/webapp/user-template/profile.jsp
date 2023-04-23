<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page import="qht.shopmypham.com.vn.service.CheckOutService" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductCheckoutService" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
<%@ page import="org.json.JSONObject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8"/>
    <title>Shop Mỹ Phẩm QST</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="Free HTML Templates" name="keywords"/>
    <meta content="Free HTML Templates" name="description"/>
    <link rel="stylesheet" href="user-template/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/style.css" type="text/css">
    <link rel="stylesheet" href="admin-template/assets/plugins/dropify/css/dropify.min.css" type="text/css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Favicon -->
    <link href="user-template/img/favicon.png" rel="icon"/>

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
          rel="stylesheet"/>

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet"/>

    <!-- Libraries Stylesheet -->
    <%--    <link href="user-template/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"/>--%>

    <!-- Customized Bootstrap Stylesheet -->
    <link href="user-template/css/profile-main.css" rel="stylesheet"/>
    <link rel="stylesheet" href="user-template/css/profile.css"/>
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>
<%
    Account acc = (Account) request.getSession().getAttribute("a");
    Account acc1 = AccountService.getAccountById(String.valueOf(acc.getIdA()));
%>

<!-- Page Header Start -->
<section class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__text">
                    <h4> Tài khoản</h4>
                    <div class="breadcrumb__links">
                        <a href="./home">Trang chủ</a>
                        <span>Tài khoản</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Page Header End -->
<div class="container">
    <div class="main-body">
        <div class="col">
            <div
                    class="nav nav-tabs justify-content-center border-secondary mb-4"
            >
                <a
                        class="nav-item nav-link active"
                        data-toggle="tab"
                        href="#tab-pane-1"
                >Thông tin cá nhân</a
                >
                <a
                        class="nav-item nav-link"
                        data-toggle="tab"
                        href="#tab-pane-2"
                >Đơn hàng</a
                >
                <a
                        class="nav-item nav-link"
                        data-toggle="tab"
                        href="#tab-pane-3"
                >Lịch sử mua hàng</a
                >
            </div>

            <div class="tab-content">
                <div class="tab-pane fade show active" id="tab-pane-1">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <div class="card">
                                            <div class="body">
                                                <%
                                                    String myavatar = (String) session.getAttribute("avatar");
                                                    String avatar = "";
                                                    if (acc1.getImg() == null && myavatar == null) {
                                                        avatar = "user-template/assets/images/avatar.png";
                                                    }
                                                    if (acc1.getImg() == null && myavatar != null) {
                                                        avatar = "data:image/jpeg;base64," + myavatar;
                                                    }
                                                    if (acc1.getImg() != null && myavatar == null) {
                                                        avatar = acc1.getImg();
                                                    }
                                                    if (acc1.getImg() != null && myavatar != null) {
                                                        avatar = "data:image/jpeg;base64," + myavatar;
                                                    }
                                                %>
                                                <img src="<%=avatar%>">
                                                <button class="btn-primary btn" onclick="show()">Cập nhật ảnh mới
                                                </button>
                                                <div id="show" class="promotion">
                                                    <div class="promotion-box">
                                                        <label class="title">Cập nhật ảnh đại diện</label>
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
                                    <hr class="my-4">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                            <h6 class="mb-0">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-globe me-2 icon-inline">
                                                    <circle cx="12" cy="12" r="10"></circle>
                                                    <line x1="2" y1="12" x2="22" y2="12"></line>
                                                    <path
                                                            d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z">
                                                    </path>
                                                </svg>
                                                Website
                                            </h6>
                                            <span class="text-secondary">https://bootdey.com</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                            <h6 class="mb-0">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-github me-2 icon-inline">
                                                    <path
                                                            d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22">
                                                    </path>
                                                </svg>
                                                Github
                                            </h6>
                                            <span class="text-secondary">bootdey</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                            <h6 class="mb-0">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-twitter me-2 icon-inline text-info">
                                                    <path
                                                            d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z">
                                                    </path>
                                                </svg>
                                                Twitter
                                            </h6>
                                            <span class="text-secondary">@bootdey</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                            <h6 class="mb-0">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-instagram me-2 icon-inline text-danger">
                                                    <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect>
                                                    <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                                    <line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>
                                                </svg>
                                                Instagram
                                            </h6>
                                            <span class="text-secondary">bootdey</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                            <h6 class="mb-0">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-facebook me-2 icon-inline text-primary">
                                                    <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z">
                                                    </path>
                                                </svg>
                                                Facebook
                                            </h6>
                                            <span class="text-secondary">bootdey</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="card">
                                <div class="card-body">
                                    <form action="UserPro" method="post">
                                        <% String name = "", email = "", phone = "", address = "";
                                            if (acc1.getFullName() == null) {
                                                name = "Chưa có thông tin";
                                            }
                                            if (acc1.getFullName() != null) {
                                                name = acc1.getFullName();
                                            }

                                            if (acc1.getEmail() == null) {
                                                email = "Chưa có thông tin";
                                            }
                                            if (acc1.getEmail() != null) {
                                                email = acc1.getEmail();
                                            }

                                            if (acc1.getPhone() == null) {
                                                phone = "Chưa có thông tin";
                                            }
                                            if (acc1.getPhone() != null) {
                                                phone = acc1.getPhone();
                                            }

                                            if (acc1.getAddress() == null) {
                                                address = "Chưa có thông tin";
                                            }
                                            if (acc1.getAddress() != null) {
                                                address = acc1.getAddress();
                                            }

                                        %>
                                        <input name="command" type="hidden" class="form-control" value="edit">
                                        <input name="idAccount" type="hidden" class="form-control"
                                               value="<%=acc1.getIdA()%>">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Họ và tên</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input name="fullName" id="fullName" type="text" class="form-control"
                                                       value="<%=name%>">
                                            </div>
                                        </div>
                                        <hr/>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">E-mail</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input name="email" id="email" type="text" class="form-control"
                                                       value="<%=email%>">
                                            </div>
                                        </div>
                                        <hr/>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Số điện thoại</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input name="phone" id="phone" type="text" class="form-control"
                                                       value="<%=phone%>">
                                            </div>
                                        </div>
                                        <hr/>

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Địa chỉ</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input name="address" id="address" type="text" class="form-control"
                                                       value="<%=address%>">
                                            </div>
                                        </div>
                                        <hr/>
                                        <%if (acc1.getUser() != null) {%>
                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Mật khẩu</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <a href="changePass?idA=<%=acc1.getIdA()%>"
                                                   class="col-sm-9 text-secondary">Đổi
                                                    mật
                                                    khẩu</a>
                                            </div>
                                        </div>
                                        <hr/>
                                        <%}%>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <button
                                                        class="btn btn-primary px-4"
                                                        target="__blank"
                                                        type="button"
                                                        style="margin-top: 20px"
                                                        onclick="editProfile(<%=acc1.getIdA()%>)"
                                                >Lưu
                                                </button>
                                                <a
                                                        class="btn btn-primary px-4"
                                                        target="__blank"
                                                        style="margin-top: 20px; margin-left: 20px"
                                                        href="profile?command=out"
                                                >Đăng xuất</a
                                                >
                                            </div>

                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="d-flex align-items-center mb-3">Project Status</h5>
                                            <p>Web Design</p>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar"
                                                     style="width: 80%"
                                                     aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <p>Website Markup</p>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-danger" role="progressbar"
                                                     style="width: 72%"
                                                     aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <p>One Page</p>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-success" role="progressbar"
                                                     style="width: 89%"
                                                     aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <p>Mobile Template</p>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-warning" role="progressbar"
                                                     style="width: 55%"
                                                     aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <p>Backend API</p>
                                            <div class="progress" style="height: 5px">
                                                <div class="progress-bar bg-info" role="progressbar" style="width: 66%"
                                                     aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    List<CheckOut> checkOutList = CheckOutService.getCheckOutByIdA(String.valueOf(acc1.getIdA()));
                    Collections.reverse(checkOutList);
                    int total1 = 0;
                    int total2 = 0;
                    NumberFormat nf = NumberFormat.getInstance();
                    nf.setMinimumFractionDigits(0);
                    List<CheckOut> checkOutList1 = new ArrayList<>();
                    List<CheckOut> checkOutList2 = new ArrayList<>();
                    for (CheckOut checkOut : checkOutList) {
                        if (checkOut.getIdStatus() == 0 || checkOut.getIdStatus() == 1 || checkOut.getIdStatus() == 2) {
                            checkOutList1.add(checkOut);
                        }
                        if (checkOut.getIdStatus() == 3 || checkOut.getIdStatus() == 5) {
                            checkOutList2.add(checkOut);
                        }
                    }
                %>
                <div class="tab-pane fade" id="tab-pane-2">
                    <div class="row" style="justify-content: center;">
                        <section class="h-100 gradient-custom">
                            <div class="container py-5 h-100">
                                <div class="row d-flex justify-content-center align-items-center h-100">
                                    <div class="col-lg-10 col-xl-80">
                                        <div class="card" style="border-radius: 10px;">
                                            <div class="card-header px-4 py-5">
                                                <%if (checkOutList1.size() == 0) {%>
                                                <h5 class="text-muted mb-0">Không có đơn hàng, mời bạn tiếp tục mua sắm
                                                    <span style="color: #a8729a;">
                                                    </span>!</h5>
                                                <%} else {%>
                                                <h5 class="text-muted mb-0">Cảm ơn bạn đã mua hàng,
                                                    <span style="color: #a8729a;">
                                                       <%if (acc1.getFullName() == null) {%>
                                                        <%=acc1.getUser()%>
                                                        <%} else {%>
                                                        <%=acc1.getFullName()%>
                                                        <%}%>
                                                    </span>!</h5>
                                                <%}%>
                                            </div>
                                            <%
                                                for (CheckOut checkOut : checkOutList1) {
                                                    List<ListProductByCheckOut> productByCheckOutList = ProductCheckoutService.getProductProductCheckoutByIdCk(String.valueOf(checkOut.getIdCk()));
                                            %>
                                            <div class="card-body p-4">
                                                <div class="d-flex justify-content-between align-items-center mb-4">
                                                    <p class="lead fw-normal mb-0" style="color: #a8729a;">Sản phẩm</p>
                                                    <p class="small text-muted mb-0">
                                                        <a href="detailOrder?idCk=<%=checkOut.getIdCk()%>">Mã đơn :
                                                            #<%=checkOut.getIdCk()%>
                                                        </a>
                                                    </p>
                                                </div>
                                                <%
                                                    for (ListProductByCheckOut productByCheckOut : productByCheckOutList) {
                                                        Product product = ProductService.getProductById(productByCheckOut.getIdP());
                                                        total1 += product.getPrice() * productByCheckOut.getQuantity();
                                                        List<Image> imageList = ProductService.getImages(String.valueOf(product.getIdP()));

                                                %>
                                                <div class="card shadow-0 border mb-4">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col-md-2">
                                                                <img src="<%=imageList.get(0).getImg()%>"
                                                                     class="img-fluid" alt="Phone">
                                                            </div>
                                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                <p class="text-muted mb-0"><%=product.getName()%>
                                                                </p>
                                                            </div>
                                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                <p class="text-muted mb-0 small"></p>
                                                            </div>
                                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                <p class="text-muted mb-0 small"></p>
                                                            </div>

                                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                <p class="text-muted mb-0 small"><%=productByCheckOut.getQuantity()%>
                                                                </p>
                                                            </div>
                                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                <p class="text-muted mb-0 small"><%=nf.format(product.getPrice() * productByCheckOut.getQuantity())%>
                                                                    đ</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%}%>
                                                <div class="d-flex justify-content-between pt-2">
                                                    <p class="fw-bold mb-0">Tổng giá trị sản phẩm</p>
                                                    <p class="text-muted mb-0"><span class="fw-bold me-4"></span>
                                                        <%=nf.format(total1)%>đ</p>
                                                </div>

                                                <div class="d-flex justify-content-between pt-2">
                                                    <p class="fw-bold mb-0">Phí vận chuyển</p>
                                                    <p class="text-muted mb-0"><span
                                                            class="fw-bold me-4"></span>25,000đ</p>
                                                </div>
                                                <div class="d-flex justify-content-between pt-2">
                                                    <p class="fw-bold mb-0">Trạng thái</p>
                                                    <p class="text-muted mb-0"><span
                                                            class="fw-bold me-4"></span>
                                                        <% String status = "";
                                                            if (checkOut.getIdStatus() == 0) {
                                                                status = "Chờ xác nhận";
                                                            }
                                                            if (checkOut.getIdStatus() == 1) {
                                                                status = "Đang vận chuyển";
                                                            }
                                                            if (checkOut.getIdStatus() == 2) {
                                                                status = "Hoàn thành";
                                                            }
                                                            if (checkOut.getIdStatus() == 3) {
                                                                status = "Đã hoàn thành";
                                                            }
                                                            if (checkOut.getIdStatus() == 4) {
                                                                status = "Chờ xác nhận hủy";
                                                            }
                                                            if (checkOut.getIdStatus() == 5) {
                                                                status = "Đã hủy";
                                                            }%>
                                                        <%=status%>
                                                    </p>
                                                </div>
                                            </div>
                                            <%}%>
                                            <div class="card-footer border-0 px-4 py-5"
                                                 style="background-color: #a8729a; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
                                                <h5 class="d-flex align-items-center justify-content-end text-white text-uppercase mb-0">
                                                    Tổng giá trị đơn hàng: <span
                                                        class="h2 mb-0 ms-2"> <%=nf.format(total1 + 25000)%>đ</span>
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>

                <div class="tab-pane fade" id="tab-pane-3">
                    <div class="row" style="justify-content: center;">
                        <section class="h-100 gradient-custom">
                            <div class="container py-5 h-100">
                                <div class="row d-flex justify-content-center align-items-center h-100">
                                    <div class="col-lg-10 col-xl-80">
                                        <div class="card" style="border-radius: 10px;">
                                            <div class="card-header px-4 py-5">
                                                <h5 class="text-muted mb-0"></h5>
                                            </div>
                                            <%
                                                for (CheckOut checkOut : checkOutList2) {
                                                    List<ListProductByCheckOut> productByCheckOutList = ProductCheckoutService.getProductProductCheckoutByIdCk(String.valueOf(checkOut.getIdCk()));

                                            %>
                                            <div class="card-body p-4">
                                                <div class="d-flex justify-content-between align-items-center mb-4">
                                                    <p class="lead fw-normal mb-0" style="color: #a8729a;">Sản phẩm</p>
                                                    <p class="small text-muted mb-0">
                                                        <a href="detailOrder?idCk=<%=checkOut.getIdCk()%>">Mã đơn :
                                                            #<%=checkOut.getIdCk()%>
                                                        </a>
                                                    </p>
                                                </div>
                                                <%
                                                    for (ListProductByCheckOut productByCheckOut : productByCheckOutList) {
                                                        Product product = ProductService.getProductById(productByCheckOut.getIdP());
                                                        total2 += product.getPrice() * productByCheckOut.getQuantity();
                                                        List<Image> imageList = ProductService.getImages(String.valueOf(product.getIdP()));
                                                %>
                                                <div class="card shadow-0 border mb-4">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col-md-2">
                                                                <img src="<%=imageList.get(0).getImg()%>"
                                                                     class="img-fluid" alt="Phone">
                                                            </div>
                                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                <p class="text-muted mb-0"><%=product.getName()%>
                                                                </p>
                                                            </div>
                                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                <p class="text-muted mb-0 small"></p>
                                                            </div>
                                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                <p class="text-muted mb-0 small"></p>
                                                            </div>

                                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                <p class="text-muted mb-0 small"><%=productByCheckOut.getQuantity()%>
                                                                </p>
                                                            </div>
                                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                <p class="text-muted mb-0 small"><%=nf.format(product.getPrice() * productByCheckOut.getQuantity())%>
                                                                    đ</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%}%>
                                                <div class="d-flex justify-content-between pt-2">
                                                    <p class="fw-bold mb-0">Tổng giá trị sản phẩm</p>
                                                    <p class="text-muted mb-0"><span class="fw-bold me-4"></span>
                                                        <%=nf.format(total2)%>đ</p>
                                                </div>

                                                <div class="d-flex justify-content-between pt-2">
                                                    <p class="fw-bold mb-0">Phí vận chuyển</p>
                                                    <p class="text-muted mb-0"><span
                                                            class="fw-bold me-4"></span>25,000đ</p>
                                                </div>
                                                <div class="d-flex justify-content-between pt-2">
                                                    <p class="fw-bold mb-0">Trạng thái</p>
                                                    <p class="text-muted mb-0"><span
                                                            class="fw-bold me-4"></span>
                                                        <%if (checkOut.getIdStatus() == 3) {%>
                                                        Đã hoàn thành
                                                        <%
                                                            }
                                                            if (checkOut.getIdStatus() == 5) {
                                                        %>
                                                        Đã hủy
                                                        <%}%>
                                                    </p>
                                                </div>
                                            </div>
                                            <%}%>
                                            <div class="card-footer border-0 px-4 py-5"
                                                 style="background-color: #a8729a; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
                                                <h5 class="d-flex align-items-center justify-content-end text-white text-uppercase mb-0">
                                                    Tổng giá trị đơn hàng: <span
                                                        class="h2 mb-0 ms-2"> <%=nf.format(total2 + 25000)%>đ</span>
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Footer Start -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer End -->

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="user-template/lib/easing/easing.min.js"></script>
<script src="user-template/lib/owlcarousel/owl.carousel.min.js"></script>
<!-- Contact Javascript File -->
<script src="user-template/js/upload.js"></script>
<script src="user-template/mail/jqBootstrapValidation.min.js"></script>
<script src="user-template/mail/contact.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- Template Javascript -->
<script src="user-template/js/autoLoadCart.js"></script>
<script src="admin-template/assets/plugins/dropify/js/dropify.min.js"></script>

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

    function editProfile(idA) {
        var email = document.getElementById("email").value;
        var fullName = document.getElementById("fullName").value;
        var address = document.getElementById("address").value;
        var phone = document.getElementById("phone").value;

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "profile", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                alert("Cập nhật thông tin thành công.");
            }
        };
        xhr.send("idA=" + idA
            + "&email=" + encodeURIComponent(email)
            + "&fullName=" + encodeURIComponent(fullName)
            + "&address=" + encodeURIComponent(address)
            + "&command=edit"
            + "&phone=" + encodeURIComponent(phone));
    }

</script>

</body>

</html>