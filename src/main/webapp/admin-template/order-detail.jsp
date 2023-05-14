<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.service.VoucherService" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
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
    <link rel="stylesheet" href="user-template/css/detail-order.css" type="text/css">
    <link rel="stylesheet" href="admin-template/assets/css/style.min.css">
</head>

<body class="theme-blush">
<jsp:include page="header.jsp"></jsp:include>
<%
    int total1 = 0;
    NumberFormat nf = NumberFormat.getInstance();
    nf.setMinimumFractionDigits(0);
    CheckOut checkOut = (CheckOut) request.getAttribute("checkOut");
    Voucher voucher = VoucherService.getVoucherById(checkOut.getIdVoucher());
    List<ListProductByCheckOut> productByCheckOutList = (List<ListProductByCheckOut>) request.getAttribute("listProductByCheckOuts");
    String status = "";
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
    }
%>

<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">

                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Danh sách đơn hàng</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item">Quản lí đơn hàng</li>
                        <li class="breadcrumb-item active">Danh sách đơn hàng</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i
                            class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="row-1 status-text">
                    <div class="d-flex text-muted mb-0 container-a">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="small mb-0 mb-01">
                                <a>Mã đơn :
                                    #<%=checkOut.getIdCk()%>
                                </a>
                            </div>
                            <div class="small mb-0 mb-02">
                                <i class="fa-light fa-car-side"></i>
                                <p style="color: green"><%=status%>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row-1">
                    <div class="row-1-list">
                        <div class="row-1-item"></div>
                    </div>
                </div>

                <div class="card card-status">
                    <div class="card-body p-4">
                        <div class="d-flex justify-content-between align-items-center mb-4 flex-wrap">
                            <div class="d-flex flex-wrap-1">
                                <div>
                                    Địa Chỉ Nhận Hàng
                                </div>
                                <div>
                                    Shopee Xpress
                                    SPXVN039519983431
                                </div>
                            </div>
                            <div class="d-flex status-container">
                                <div class="status-list list-address">
                                    <h6><%=checkOut.getName()%>
                                    </h6>
                                    <p><%=checkOut.getPhone()%>
                                        <%=checkOut.getAddress()%>
                                    </p>
                                </div>
                                <div class="status-list list-status">
                                    <div>
                                        <div class="status-item">
                                            <div class="si1">
                                            </div>
                                            <div class="si2">
                                                <div></div>
                                                <div></div>
                                                <div>
                                                    <p></p>
                                                    <p></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="status-item">
                                            <div class="si1">
                                            </div>
                                            <div class="si2">
                                                <div></div>
                                                <div></div>
                                                <div>
                                                    <p></p>
                                                    <p></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="status-item">
                                            <div class="si1">
                                            </div>
                                            <div class="si2">
                                                <div></div>
                                                <div></div>
                                                <div>
                                                    <p></p>
                                                    <p></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="status-item">
                                            <div class="si1">
                                            </div>
                                            <div class="si2">
                                                <div></div>
                                                <div></div>
                                                <div>
                                                    <p></p>
                                                    <p></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="status-item">
                                            <div class="si1">
                                            </div>
                                            <div class="si2">
                                                <div></div>
                                                <div></div>
                                                <div>
                                                    <p></p>
                                                    <p></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="status-item">
                                            <div class="si1">
                                            </div>
                                            <div class="si2">
                                                <div></div>
                                                <div></div>
                                                <div>
                                                    <p></p>
                                                    <p></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <form>
                        <div class="row clearfix">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="table-responsive">
                                        <table id="table_id"
                                               class="table table-hover product_item_list c_table theme-color mb-0">
                                            <thead>
                                            <tr>
                                                <th style="width: 10%;">Hình ảnh</th>
                                                <th data-breakpoints="xs">Tên sản phẩm</th>
                                                <th data-breakpoints="xs md">Số lượng</th>
                                                <th data-breakpoints="xs md">Đơn giá</th>
                                                <th data-breakpoints="xs md">Tổng đơn giá</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <%
                                                for (ListProductByCheckOut productByCheckOut : productByCheckOutList) {
                                                    Product product = ProductService.getProductById(productByCheckOut.getIdP());
                                                    total1 += product.getPrice() * productByCheckOut.getQuantity();
                                                    List<Image> m = ProductService.getImages(String.valueOf(product.getIdP()));
                                            %>
                                            <tr>
                                                <td><img src="<%=m.get(0).getImg()%>">
                                                </td>
                                                <td><%=product.getName()%>
                                                </td>
                                                <td><span class="col-green"><%=productByCheckOut.getQuantity()%></span>
                                                </td>
                                                <td><span class="col-green"><%= nf.format(product.getPrice())%> </span>
                                                </td>
                                                <td><span
                                                        class="col-green"><%= nf.format(product.getPrice() * productByCheckOut.getQuantity())%> </span>
                                                </td>
                                            </tr>
                                            <%}%>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="total">
                                <% int reduction = 0;
                                    if (voucher != null) {
                                        reduction = total1 * voucher.getPrice() / 100;
                                    }
                                    int priceLast = total1 - reduction;%>
                                <div class="inf">
                                    <div class="inf-text">Tổng tiền hàng</div>
                                    <div class="inf-m">
                                        <div><%=nf.format(total1)%>đ</div>
                                    </div>
                                </div>
                                <div class="inf">
                                    <div class="inf-text">Phí vận chuyển</div>
                                    <div class="inf-m">
                                        <div>25.000đ</div>
                                    </div>
                                </div>
                                <div class="inf">
                                    <div class="inf-text">Giảm giá voucher</div>
                                    <div class="inf-m">
                                        <div>- <%=nf.format(reduction)%>đ</div>
                                    </div>
                                </div>
                                <div class="inf">
                                    <div class="inf-text">Thành tiền</div>
                                    <div class="inf-m">
                                        <div><%=nf.format(priceLast)%>
                                        </div>
                                    </div>
                                </div>
                                <div class="inf">
                                    <i class="fa-light fa-money-check-dollar"></i>
                                    <div class="inf-text">Phương thức thanh toán</div>
                                    <div class="inf-m">
                                        <div>Tiền mặc</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
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