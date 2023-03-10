<%@ page import="qht.shopmypham.com.vn.model.Blog" %>
<%@ page import="java.util.List" %>
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


    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <jsp:include page="header.jsp"></jsp:include>
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-blog set-bg" data-setbg="user-template/img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>TIN TỨC HÀNG NGÀY</h2>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
                <%
                    List<Blog> blogList = (List<Blog>) request.getAttribute("blogList");
                    for (Blog b : blogList) {
//                                Account acc1 = AccountService.getAccountById(String.valueOf(b.getIdA()));
                %>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="<%=b.getImg()%>"></div>
                        <div class="blog__item__text">
                            <span><img src="user-template/img/icon/calendar.png" alt=""> 16/11/2022</span>
                            <h5><%=b.getTopic()%></h5>
                            <a  href="<%=b.getLinkBlog()%>">Xem thêm</a>
                        </div>
                    </div>

                </div>
                <%}%>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

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

</body>

</html>