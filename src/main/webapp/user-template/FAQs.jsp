<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<!-- Page Preloder -->

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<jsp:include page="header.jsp"></jsp:include>

<section class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__text">
                    <h4>Shop</h4>
                    <div class="breadcrumb__links">
                        <a href="./home">Trang chủ</a>
                        <span>Câu hỏi thường gặp</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="row px-xl-5" style="justify-content: center;">
    <div class="col-lg-7 mb-5" style="margin-top: 40px">

        <h5 class="font-weight-semi-bold mb-3 magin-top" >Quên mật khẩu</h5>
        <p>
            Trong trường hợp bạn quên mật khẩu khi đăng kí, hãy làm theo hướng dẫn sau:
        <ul class="from-forgot" style="max-width: 400px;">
            <li class="forgot"><a href="./forgot-password.html"> Forget the passwork?</a></li>
        </ul>
        </p>
    </div>

    <% List<FAQs> FAQsList = (List<FAQs>) request.getAttribute("FAQsList");
        for (FAQs f : FAQsList) {
    %>
    <div class="col-lg-7 mb-5" style="margin-top: 50px;">

        <h5 class="font-weight-semi-bold mb-3"><%=f.getQuestion()%>
        </h5>
        <p>
            <%=f.getAnswer()%>
        </p>
    </div>
    <%}%>

</div>
<a href="#" class="btn btn-primary back-to-top">
    <i class="fa fa-angle-double-up"></i>
</a>
<jsp:include page="footer.jsp"></jsp:include>
<!-- Search Begin -->

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

</body>

</html>