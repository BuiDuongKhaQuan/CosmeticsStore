<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.model.ListProductByCart" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.model.Image" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shop Mỹ Phẩm QST</title>

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
</head>

<body>
<!-- Page Preloder -->

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<jsp:include page="header.jsp"></jsp:include>
<!-- Header Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__text">
                    <h4> Giỏ hàng</h4>
                    <div class="breadcrumb__links">
                        <a href="./home">Trang chủ</a>
                        <a href="./product">Sản phẩm</a>
                        <span>Giỏ hàng</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shopping Cart Section Begin -->
<% Account acc = (Account) request.getSession().getAttribute("a");%>
<section class="shopping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="shopping__cart__table">
                    <table>
                        <thead>
                        <tr>
                            <th>SẢN PHẨM</th>
                            <th>ĐƠN GIÁ</th>
                            <th>SỐ LƯỢNG</th>
                            <th>TỔNG GIÁ</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody id="quantity-product">
                        <%
                            List<ListProductByCart> list = (List<ListProductByCart>) request.getAttribute("list");
                            NumberFormat nf = NumberFormat.getInstance();
                            nf.setMinimumFractionDigits(0);
                            double totalPrice = 0;

                            for (ListProductByCart l : list) {
                                Product p = ProductService.getProductById(l.getIdP());
                                totalPrice += (p.getPrice() * l.getQuantity());
                                List<Image> imageList = ProductService.getImages(String.valueOf(p.getIdP()));

                        %>
                        <tr>
                            <td class="product__cart__item">
                                <div class="product__cart__item__pic"
                                     style="width: 70px;height: 70px; margin-top: 30px;">
                                    <img src="<%=imageList.get(0).getImg()%>" alt="">
                                </div>
                                <div class="product__cart__item__text" style="cursor: pointer">

                                    <h6 onclick="detailProduct(<%=p.getIdP()%>)"><%=p.getName()%>
                                    </h6>
                                </div>
                            </td>
                            <td class="cart__price" style="width: 340px;"><%=nf.format(p.getPrice())%>đ</td>
                            <td class="quantity__item">
                                <div class="quantity" style=" display: flex">
                                    <div class="input-group-btn" style="background-color:#111111; color: #FFFFFF">
                                        <button onclick="upDateQuantity(<%=p.getIdP()%>,'subItem')"
                                                class="btn btn-sm btn-minus event" style="text-decoration: none">
                                            <i class="fa fa-minus"
                                               style="background-color:#111111; color: #FFFFFF"></i>
                                        </button>
                                    </div>
                                    <span class="form-control form-control-sm text-center  item-table"
                                          style="width: 30px;"><%=l.getQuantity()%></span>
                                    <div class="input-group-btn" style="background-color:#111111; color: #FFFFFF">
                                        <button class="btn btn-sm btn-minus"
                                                onclick="upDateQuantity(<%=p.getIdP()%>,'addItem')"
                                                style="text-decoration: none">
                                            <i class="fa fa-plus"
                                               style="background-color: #111111; color: #FFFFFF"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="cart__price__total"><%=nf.format(p.getPrice() * l.getQuantity())%>đ</td>
                            <td class="cart__close">
                                <input type="hidden" id="idP" value="<%=p.getIdP()%>">
                                <button type="submit" style="background-color: rgba(38,255,0,0)"
                                        onclick="upDateQuantity(<%=p.getIdP()%>,'deleteItem')">
                                    <i class="fa fa-close"
                                       style="margin-left: 10px"></i>
                                </button>
                            </td>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn">
                            <a href="product">Tiếp tục mua hàng</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn update__btn">
                            <%--                            <a href="#"><i class="fa fa-spinner"></i> Cập nhật giỏ hàng</a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="cart__discount">
                    <h6>MÃ GIẢM GIÁ</h6>
                    <form action="#">
                        <input type="text" placeholder="Nhập mã giảm giá">
                        <button type="submit">Áp dụng</button>
                    </form>
                </div>
                <div class="cart__total">
                    <h6>Tổng đơn hàng</h6>
                    <% if (list.size() != 0) {%>
                    <div id="total-product">
                        <ul>
                            <li>Đơn giá <span><%=nf.format(totalPrice)%>đ</span></li>
                            <li>Phí vận chuyển <span>25.000đ</span></li>
                            <li>Tổng cộng <span><%=nf.format(totalPrice + 25000)%>đ</span></li>
                        </ul>
                        <a href="checkout" class="primary-btn">THANH TOÁN</a>
                    </div>
                    <%} else {%>
                    <div id="total-product">
                        <ul>
                            <li><span>Giỏ hàng trống mời bạn tiếp tục mua sắm</span></li>
                        </ul>
                        <a href="product" class="primary-btn">Tếp tục mua hàng</a>
                    </div>
                    <%}%>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shopping Cart Section End -->

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
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
<script src="user-template/js/autoLoadCart.js"></script>
<script>
    function upDateQuantity(idP, command) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "product", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                getCartCount();
                getTotal();
            }
        };
        xhr.send("IdP=" + idP
            + "&command=" + command);
    }

    function getCartCount() {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("quantity-product").innerHTML = this.responseText;
            }
        };
        xhr.open("GET", "auto-load?command=quantity", true);
        xhr.send();
    }

    function getTotal() {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("total-product").innerHTML = this.responseText;
            }
        };
        xhr.open("GET", "auto-load?command=total", true);
        xhr.send();
    }

    function detailProduct(idP) {
        window.location.href = "detail?pid=" + idP;
    }


</script>


</body>

</html>
