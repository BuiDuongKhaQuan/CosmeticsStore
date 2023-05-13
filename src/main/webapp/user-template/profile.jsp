<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
<%@ page import="qht.shopmypham.com.vn.service.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8"/>
    <title>QST | Trang cá nhân</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="Free HTML Templates" name="keywords"/>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="user-template/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/style.css" type="text/css">

    <link href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro-v6@44659d9/css/all.min.css" rel="stylesheet"
          type="text/css"/>
    <link rel="stylesheet" href="admin-template/assets/plugins/dropify/css/dropify.min.css" type="text/css">

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
<div class="container" style="padding: 30px 0;">
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
                        </div>
                    </div>
                </div>
                <%
                    List<CheckOut> checkOutList = CheckOutService.getCheckOutByIdA(String.valueOf(acc1.getIdA()));
                    Collections.reverse(checkOutList);
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
                        <%
                            for (CheckOut checkOut : checkOutList1) {
                                List<ListProductByCheckOut> productByCheckOutList = ProductCheckoutService.getProductProductCheckoutByIdCk(String.valueOf(checkOut.getIdCk()));
                                Voucher voucher = VoucherService.getVoucherById(checkOut.getIdVoucher());
                                int total1 = 0;
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
                        <div class="card" style="border-radius: 6px;width: 100%;">
                            <div class="card-body p-4">
                                <div class="d-flex justify-content-between align-items-center mb-4"
                                     style="font-size: 1.3em; color: green">
                                    <div class="small mb-0">
                                        <a href="profile?command=order-detail&idCk=<%=checkOut.getIdCk()%>">Mã đơn :
                                            #<%=checkOut.getIdCk()%>
                                        </a>
                                    </div>
                                    <div class="small mb-0">
                                        <i class="fa-light fa-car-side"></i>
                                        <a href="profile?command=order-detail&idCk=<%=checkOut.getIdCk()%>"
                                           style="color: green"><%=status%>
                                        </a>
                                    </div>
                                </div>
                                <hr>
                                <table>
                                    <thead>
                                    <tr>
                                        <th style="width: 85%;"></th>
                                        <th style="width: 15%;"></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        for (ListProductByCheckOut productByCheckOut : productByCheckOutList) {
                                            Product product = ProductService.getProductById(productByCheckOut.getIdP());
                                            total1 += product.getPrice() * productByCheckOut.getQuantity();
                                            List<Image> imageList = ProductService.getImages(String.valueOf(product.getIdP()));

                                    %>
                                    <tr style="border-bottom: 1px solid #00000017">
                                        <td class="product__cart__item"
                                            style="display: flex; align-items: center; padding: 15px 0px;">
                                            <img src="<%=imageList.get(0).getImg()%>" alt="" style="max-width: 13%;">
                                            <div style="display: flex; flex-direction: column; padding: 0 30px">
                                                <h6 onclick="detailOrder(<%=checkOut.getIdCk()%>)"
                                                    style="padding: 17px 0"
                                                ><%=product.getName()%>
                                                </h6>
                                                <h6>x<%=productByCheckOut.getQuantity()%>
                                                </h6>
                                            </div>
                                        </td>

                                        <td class="cart__price__total"><%=nf.format(product.getPrice() * productByCheckOut.getQuantity())%>
                                            đ
                                        </td>
                                    </tr>
                                    <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div style="width: 100%;
                        padding: 30px 20px;
                        border: 1px solid #00000017;
                        background:#fcff370a;
                        margin-bottom: 30px;
                        border-radius: 6px;">
                            <div class="d-flex text-muted mb-0" style="float: right;align-items: center;">
                                <i class="fa-light fa-money-check-dollar"
                                   style="color: #ff4d00; font-size: 23px; margin-right: 8px"></i>
                                <span class="fw-bold me-4"> Thành tiền</span>
                                <% int reduction = 0;
                                    if (voucher != null) {
                                        reduction = total1 * voucher.getPrice() / 100;
                                    }
                                    int priceLast = total1 - reduction;%>
                                <h3 style="color: #ff4d00; margin-left: 10px"><%=nf.format(priceLast)%>đ</h3>
                            </div>
                        </div>
                        <%}%>
                    </div>
                </div>
                <div class="tab-pane fade" id="tab-pane-3">
                    <div class="row" style="justify-content: center;">
                        <%
                            for (CheckOut checkOut : checkOutList2) {
                                List<ListProductByCheckOut> productByCheckOutList = ProductCheckoutService.getProductProductCheckoutByIdCk(String.valueOf(checkOut.getIdCk()));
                                Voucher voucher = VoucherService.getVoucherById(checkOut.getIdVoucher());
                                int total2 = 0;
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
                        <div class="card" style="border-radius: 6px;width: 100%;">
                            <div class="card-body p-4">
                                <div class="d-flex justify-content-between align-items-center mb-4"
                                     style="font-size: 1.3em; color: green">
                                      <div class="small mb-0">
                                        <a href="profile?command=order-detail&idCk=<%=checkOut.getIdCk()%>">Mã đơn :
                                            #<%=checkOut.getIdCk()%>
                                        </a>
                                    </div>
                                    <div class="small mb-0">
                                        <i class="fa-light fa-car-side"></i>
                                        <a href="profile?command=order-detail&idCk=<%=checkOut.getIdCk()%>"
                                           style="color: green"><%=status%>
                                        </a>
                                    </div>
                                </div>
                                <hr>
                                <table>
                                    <thead>
                                    <tr>
                                        <th style="width: 85%;"></th>
                                        <th style="width: 15%;"></th>
                                    </tr>
                                    </thead>
                                    <tbody id="quantity-product">
                                    <%
                                        for (ListProductByCheckOut productByCheckOut : productByCheckOutList) {
                                            Product product = ProductService.getProductById(productByCheckOut.getIdP());
                                            total2 += product.getPrice() * productByCheckOut.getQuantity();
                                            List<Image> imageList = ProductService.getImages(String.valueOf(product.getIdP()));

                                    %>
                                    <tr style="border-bottom: 1px solid #00000017">
                                        <td class="product__cart__item"
                                            style="display: flex; align-items: center; padding: 15px 0px;">
                                            <img src="<%=imageList.get(0).getImg()%>" alt="" style="max-width: 13%;">
                                            <div style="display: flex; flex-direction: column; padding: 0 30px">
                                                <h6 onclick="detailOrder(<%=checkOut.getIdCk()%>)"
                                                    style="padding: 17px 0"
                                                ><%=product.getName()%>
                                                </h6>
                                                <h6>x<%=productByCheckOut.getQuantity()%>
                                                </h6>
                                            </div>
                                        </td>

                                        <td class="cart__price__total"><%=nf.format(product.getPrice() * productByCheckOut.getQuantity())%>
                                            đ
                                        </td>
                                    </tr>
                                    <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div style="width: 100%;
                        padding: 30px 20px;
                        border: 1px solid #00000017;
                        background:#fcff370a;
                        margin-bottom: 30px;
                        border-radius: 6px;">
                            <div class="d-flex text-muted mb-0" style="float: right;align-items: center;">
                                <i class="fa-light fa-money-check-dollar"
                                   style="color: #ff4d00; font-size: 23px; margin-right: 8px"></i>
                                <span class="fw-bold me-4"> Thành tiền</span>
                                <% int reduction = 0;
                                    if (voucher != null) {
                                        reduction = total2 * voucher.getPrice() / 100;
                                    }
                                    int priceLast = total2 - reduction;%>
                                <h3 style="color: #ff4d00; margin-left: 10px"><%=nf.format(priceLast)%>đ</h3>
                            </div>
                        </div>
                        <%}%>
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
<script src="user-template/js/jquery-3.3.1.min.js"></script>
<script src="user-template/js/bootstrap.min.js"></script>
<script src="user-template/js/jquery.nice-select.min.js"></script>
<script src="user-template/js/jquery.nicescroll.min.js"></script>
<script src="user-template/js/jquery.magnific-popup.min.js"></script>
<script src="user-template/js/jquery.countdown.min.js"></script>
<script src="user-template/js/jquery.slicknav.js"></script>
<script src="user-template/js/mixitup.min.js"></script>
<script src="user-template/js/owl.carousel.min.js"></script>
<script src="user-template/js/main.js"></script>
<!-- Template Javascript -->
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

    function detailOrder(idCk) {
        window.location.href = "profile?command=order-detail&idCk=" + idCk;
    }
</script>

</body>

</html>