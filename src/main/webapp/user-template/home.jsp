<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.service.SliderSerivce" %>
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
<jsp:include page="header.jsp"></jsp:include>
<body>
<!-- Page Preloder -->

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div id="notification" class="hidden-noti" style="
    position: fixed;
    top: 20px;
    right: 20px;
    background-color: #36f43f;
    color: #000000;
    padding: 10px;
    z-index: 9999; ">Đã thêm vào giỏ hàng
</div>

<!-- Header Section End -->

<!-- Hero Section Begin -->
<section class="hero">
    <div class="hero__slider owl-carousel">
        <%
            List<Slider> sliderList = SliderSerivce.getSliderByStatus();
//            List<Slider> listSlider = (List<Slider>) request.getAttribute("listSlider");
//            for (Slider s : listSlider) {
        %>
        <div class="hero__items set-bg" data-setbg="<%=sliderList.get(0).getImg()%>">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-7 col-md-8">
                        <div class="hero__text">
                            <%--                            <h6>Summer Collection</h6>--%>
                            <%--                            <h2>Fall - Winter Collections 2030</h2>--%>
                            <%--                            <p>A specialist label creating luxury essentials. Ethically crafted with an unwavering--%>
                            <%--                                commitment to exceptional quality.</p>--%>
                            <%--                            <a href="#" class="primary-btn">Shop now <span class="arrow_right"></span></a>--%>
                            <%--                            <div class="hero__social">--%>
                            <%--                                <a href="#"><i class="fa fa-facebook"></i></a>--%>
                            <%--                                <a href="#"><i class="fa fa-twitter"></i></a>--%>
                            <%--                                <a href="#"><i class="fa fa-pinterest"></i></a>--%>
                            <%--                                <a href="#"><i class="fa fa-instagram"></i></a>--%>
                            <%--                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            for (int i = 1; i < sliderList.size(); i++) {
        %>
        <div class="hero__items set-bg" data-setbg="<%=sliderList.get(i).getImg()%>">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-7 col-md-8">
                        <div class="hero__text">
                            <%--                            <h6>Summer Collection</h6>--%>
                            <%--                            <h2>Fall - Winter Collections 2030</h2>--%>
                            <%--                            <p>A specialist label creating luxury essentials. Ethically crafted with an unwavering--%>
                            <%--                                commitment to exceptional quality.</p>--%>
                            <%--                            <a href="#" class="primary-btn">Shop now <span class="arrow_right"></span></a>--%>
                            <%--                            <div class="hero__social">--%>
                            <%--                                <a href="#"><i class="fa fa-facebook"></i></a>--%>
                            <%--                                <a href="#"><i class="fa fa-twitter"></i></a>--%>
                            <%--                                <a href="#"><i class="fa fa-pinterest"></i></a>--%>
                            <%--                                <a href="#"><i class="fa fa-instagram"></i></a>--%>
                            <%--                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%}%>
    </div>
</section>
<!-- Hero Section End -->

<!-- Banner Section Begin -->
<section class="banner spad">
    <div class="container">
        <%
            List<Categories> listTop3 = (List<Categories>) request.getAttribute("top3");
            Categories c1 = listTop3.get(0);
            Categories c2 = listTop3.get(1);
            Categories c3 = listTop3.get(2);
        %>
        <div class="row">
            <div class="col-lg-7 offset-lg-4">

                <div class="banner__item">
                    <div class="banner__item__pic">
                        <img src="<%=c1.getImgC()%>" alt="" style="width: 440px; height: 440px">
                    </div>
                    <div class="banner__item__text">
                        <h2><%=c1.getNameC()%>
                        </h2>
                        <a href="categorie?cid=<%=c1.getIdC()%>">Xem thêm</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="banner__item banner__item--middle">
                    <div class="banner__item__pic">
                        <img src="<%=c2.getImgC()%>" alt="" style="width: 440px; height: 440px">
                    </div>
                    <div class="banner__item__text">
                        <h2><%=c2.getNameC()%>
                        </h2>
                        <a href="categorie?cid=<%=c2.getIdC()%>">Xem thêm</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="banner__item banner__item--last">
                    <div class="banner__item__pic">
                        <img src="<%=c3.getImgC()%>" alt="" style="width: 440px; height: 440px">
                    </div>
                    <div class="banner__item__text">
                        <h2><%=c3.getNameC()%>
                        </h2>
                        <a href="categorie?cid=<%=c3.getIdC()%>">Xem thêm</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Banner Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="filter__controls">
                    <li class="active" data-filter="*">Bán chạy nhất</li>
                    <li data-filter=".new-arrivals">Sản phẩm mới</li>
                    <li data-filter=".hot-sales">Ưu đãi hấp dẫn</li>
                </ul>
            </div>
        </div>
        <div class="row product__filter">
            <%
                Account acc = (Account) request.getSession().getAttribute("a");
                List<Product> listIsNew = (List<Product>) request.getAttribute("listTop8IsNew");
                for (Product p : listIsNew) {
            %>
            <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="<%=p.getImg1()%>">
                        <span class="label">Mới</span>
                        <ul class="product__hover">
                            <li><a href="#"><img src="user-template/img/icon/heart.png" alt=""></a></li>
                            <li><a href="#"><img src="user-template/img/icon/compare.png" alt="">
                                <span>So sánh</span></a></li>
                            <li><a href="#"><img src="user-template/img/icon/search.png" alt=""></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><%=p.getName()%>
                        </h6>
                        <%
                            if (acc != null) {
                        %>
                        <button onclick="insertItem(<%=p.getIdP()%>)">+
                            Thêm vào giỏ hàng
                        </button>
                        <%} else {%>
                        <button onclick="inform()">+
                            Thêm vào giỏ hàng
                        </button>
                        <%}%>
                        <div class="rating">
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h5><%=p.getPrice()%>đ</h5>
                        <div class="product__color__select">
                            <label for="pc-1">
                                <input type="radio" id="pc-1">
                            </label>
                            <label class="active black" for="pc-2">
                                <input type="radio" id="pc-2">
                            </label>
                            <label class="grey" for="pc-3">
                                <input type="radio" id="pc-3">
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
            <%

                List<Product> listIsPro = (List<Product>) request.getAttribute("lisTop8Promotion");
                for (Product pro : listIsPro) {
            %>
            <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="<%=pro.getImg1()%>">
                        <ul class="product__hover">
                            <li><a href="#"><img src="user-template/img/icon/heart.png" alt=""></a></li>
                            <li><a href="#"><img src="user-template/img/icon/compare.png" alt="">
                                <span>So sánh</span></a></li>
                            <li><a href="#"><img src="user-template/img/icon/search.png" alt=""></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><%=pro.getName()%>
                        </h6>
                        <%
                            if (acc != null) {
                        %>
                        <button onclick="insertItem(<%=pro.getIdP()%>)">+
                            Thêm vào giỏ hàng
                        </button>
                        <%} else {%>
                        <button onclick="inform()">+
                            Thêm vào giỏ hàng
                        </button>
                        <%}%>
                        <div class="rating">
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h5><%=pro.getPrice()%>đ</h5>
                        <div class="product__color__select">
                            <label for="pc-4">
                                <input type="radio" id="pc-4">
                            </label>
                            <label class="active black" for="pc-5">
                                <input type="radio" id="pc-5">
                            </label>
                            <label class="grey" for="pc-6">
                                <input type="radio" id="pc-6">
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</section>
<!-- Product Section End -->

<!-- Categories Section Begin -->
<section class="categories spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="categories__text">
                    <h2>Clothings Hot <br/> <span>Shoe Collection</span> <br/> Accessories</h2>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="categories__hot__deal">
                    <img src="user-template/img/product-sale.png" alt="">
                    <div class="hot__deal__sticker">
                        <span> Giá chỉ còn</span>
                        <h5>$29.99</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 offset-lg-1">
                <div class="categories__deal__countdown">
                    <span>Ưu đãi tromg tuần</span>
                    <h2>Nước tẩy trang L'ORÉAL </h2>
                    <div class="categories__deal__countdown__timer" id="countdown">
                        <div class="cd-item">
                            <span>3</span>
                            <p>Ngày</p>
                        </div>
                        <div class="cd-item">
                            <span>1</span>
                            <p>Giờ</p>
                        </div>
                        <div class="cd-item">
                            <span>50</span>
                            <p>Phút</p>
                        </div>
                        <div class="cd-item">
                            <span>18</span>
                            <p>Giây</p>
                        </div>
                    </div>
                    <a href="#" class="primary-btn">Xem thêm</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Instagram Section Begin -->
<section class="instagram spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="instagram__pic">
                    <div class="instagram__pic__item set-bg" data-setbg="user-template/img/instagram/anh1.jpg"></div>
                    <div class="instagram__pic__item set-bg" data-setbg="user-template/img/instagram/anh2.jpg"></div>
                    <div class="instagram__pic__item set-bg" data-setbg="user-template/img/instagram/anh3.jpg"></div>
                    <div class="instagram__pic__item set-bg" data-setbg="user-template/img/instagram/anh4.jpg"></div>
                    <div class="instagram__pic__item set-bg" data-setbg="user-template/img/instagram/anh5.jpg"></div>
                    <div class="instagram__pic__item set-bg" data-setbg="user-template/img/instagram/anh6.jpg"></div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="instagram__text">
                    <h2>Instagram</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua.</p>
                    <h3>#Male_Fashion</h3>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Instagram Section End -->

<!-- Latest Blog Section Begin -->
<section class="latest spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <span>Latest News</span>
                    <h2>Fashion New Trends</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <%
                List<Blog> blogList = (List<Blog>) request.getAttribute("blogList3");
                for (Blog b : blogList) {
            %>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic set-bg" data-setbg="<%=b.getImg()%>"></div>
                    <div class="blog__item__text">
                        <span><img src="user-template/img/icon/calendar.png" alt=""> 16 February 2020</span>
                        <h5><%=b.getTopic()%>
                        </h5>
                        <a href="<%=b.getLinkBlog()%>">Xem thêm</a>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</section>
<!-- Latest Blog Section End -->
<a href="#" class="btn btn-primary back-to-top" style="display: inline">
    <i class="fa fa-angle-double-up"></i>
</a>

<jsp:include page="footer.jsp"></jsp:include>
<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="col-lg-6 col-6 text-left">
            <form action="search">
                <% String txtInput = (String) request.getAttribute("txtSearch"); %>
                <div class="input-group">
                    <%if (txtInput != null) {%>
                    <input
                            type="text"
                            name="nameP"
                            class="form-control"
                            placeholder="Nhập tên sản phẩm bạn muốn tìm kiếm"
                            value="<%=txtInput%>"
                            required
                    />
                    <%} else {%>
                    <input
                            type="text"
                            name="nameP"
                            class="form-control"
                            placeholder="Nhập tên sản phẩm bạn muốn tìm kiếm"
                            required
                    />
                    <%}%>
                    <div class="input-group-append">
                        <button type="submit"
                                class="input-group-text bg-transparent text-primary btn"
                        >
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
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
    function insertItem(IdP) {
        var div = document.getElementById("notification");

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "product", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                // Hiển thị thẻ div
                div.classList.remove("hidden-noti");

                // Sau 3 giây, ẩn thẻ div lại bằng cách thêm lại lớp CSS hidden
                setTimeout(function () {
                    div.classList.add("hidden-noti");
                }, 3000);
            }
        };
        xhr.send("IdP=" + IdP
            + "&command=insertItem");
    }

    function inform() {
        alert("Hãy đăng nhập");

    }
</script><!-- Custom Js -->
</body>

</html>