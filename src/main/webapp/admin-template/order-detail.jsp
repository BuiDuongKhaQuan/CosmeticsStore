<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.model.CheckOut" %>
<%@ page import="qht.shopmypham.com.vn.model.ListProductByCheckOut" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.model.Image" %>
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
                    <h2>Chi tiết đơn hàng</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a>
                        </li>
                        <li class="breadcrumb-item">Quản lí đơn hàng</li>
                        <li class="breadcrumb-item active">Chi tiết đơn hàng</li>
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
            <form>
                <div class="row clearfix">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="body">
                                <div class="row">

                                    <div class="col-xl-12 col-lg-12 col-md-12">

                                        <div class="card" style="border-radius: 10px;">
                                            <% int total1 = 0;
                                                NumberFormat nf = NumberFormat.getInstance();
                                                nf.setMinimumFractionDigits(0);
                                                CheckOut checkOut = (CheckOut) request.getAttribute("checkOut");
                                                List<ListProductByCheckOut> productByCheckOutList = (List<ListProductByCheckOut>) request.getAttribute("listProductByCheckOuts");
                                            %>
                                            <div class="card-body p-4">
                                                <div class="d-flex justify-content-between align-items-center mb-4">
                                                    <p class="lead fw-normal mb-0" style="color: #111;">Đơn hàng</p>
                                                    <p class="small text-muted mb-0">Mã đơn :
                                                        #<%=checkOut.getIdCk()%>
                                                    </p>
                                                </div>
                                                <%
                                                    for (ListProductByCheckOut productByCheckOut : productByCheckOutList) {
                                                        Product product = ProductService.getProductById(String.valueOf(productByCheckOut.getIdP()));
                                                        total1 += product.getPrice() * productByCheckOut.getQuantity();
                                                        Image m = ProductService.getImages1(String.valueOf(product.getIdP()));
                                                %>
                                                <div class="card shadow-0 border mb-4">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col-md-2">
                                                                <img src="<%=m.getImg()%>"
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
                                                                <p class="text-muted mb-0 small"
                                                                   style="font-size: 14px"><%=productByCheckOut.getQuantity()%>
                                                                </p>
                                                            </div>
                                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                <p class="text-muted mb-0 small"
                                                                   style="font-size: 14px"><%=nf.format(product.getPrice() * productByCheckOut.getQuantity())%>
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
                                                <div class="d-flex justify-content-between pt-2">
                                                    <p class="fw-bold mb-0">Ngày đặt hàng</p>
                                                    <p class="text-muted mb-0"><span
                                                            class="fw-bold me-4"></span><%=checkOut.getOrderDate()%>
                                                    </p>
                                                </div>
                                                <div class="d-flex justify-content-between pt-2">
                                                    <p class="fw-bold mb-0">Ngày xác nhận</p>
                                                    <p class="text-muted mb-0"><span
                                                            class="fw-bold me-4"></span>
                                                        <%if (checkOut.getConfirmDate() != null) {%>
                                                        <%=checkOut.getOrderDate()%>
                                                        <%} else {%>
                                                        Chưa có thông tin
                                                        <%}%>
                                                    </p>
                                                </div>
                                                <div class="d-flex justify-content-between pt-2">
                                                    <p class="fw-bold mb-0">Ngày hoàn thành</p>
                                                    <p class="text-muted mb-0"><span
                                                            class="fw-bold me-4"></span>
                                                        <%if (checkOut.getReceivedDate() != null) {%>
                                                        <%=checkOut.getReceivedDate()%>
                                                        <%} else {%>
                                                        Chưa có thông tin
                                                        <%}%>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="card-footer border-0 px-4 py-5"
                                                 style="background-color: #fff;color: black; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
                                                <h5 class="d-flex align-items-center justify-content-end  text-uppercase mb-0">
                                                    Tổng giá trị đơn hàng: <span
                                                        class="mb-0 ms-2"> <%= nf.format(total1 + 25000)%>đ</span></h5>
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
    </div>
</section>
<!-- Jquery Core Js -->
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->


</body>

</html>