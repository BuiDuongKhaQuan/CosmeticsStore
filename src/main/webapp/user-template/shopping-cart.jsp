<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.model.ListProductByCart" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Male-Fashion | Template</title>

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
                        <%--                        <%--%>
                        <%--                            List<ListProductByCart> list = (List<ListProductByCart>) request.getAttribute("list");--%>
                        <%--                            NumberFormat nf = NumberFormat.getInstance();--%>
                        <%--                            nf.setMinimumFractionDigits(0);--%>
                        <%--                            double totalPrice = 0;--%>
                        <%--                            for (ListProductByCart l : list) {--%>
                        <%--                                Product p = ProductService.getProductById(String.valueOf(l.getIdP()));--%>
                        <%--                                totalPrice += (p.getPrice() * l.getQuantity());--%>
                        <%--                        %>--%>
                        <%--                        --%>
                        <%--                        <%}%>--%>
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
                            <a href="#"><i class="fa fa-spinner"></i> Cập nhật giỏ hàng</a>
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
                    <ul id="total-product">

                    </ul>
                    <a href="checkout" class="primary-btn">THANH TOÁN</a>
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
                // alert("Thêm sản phẩm vào giỏ hàng thành công.");
            }
        };
        xhr.send("IdP=" + idP
            + "&command=" + command);
    }
</script>

<script>
    function getCartCount() {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("quantity-product").innerHTML = this.responseText;
            }
        };
        xhr.open("GET", "auto-load-quantity", true);
        xhr.send();
    }

    setInterval(getCartCount, 500);

    function getTotal() {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("total-product").innerHTML = this.responseText;
            }
        };
        xhr.open("POST", "auto-load-quantity", true);
        xhr.send();
    }

    setInterval(getTotal, 500);
</script>

</body>

</html>