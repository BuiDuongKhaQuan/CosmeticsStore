<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.service.CategoryService" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.service.ReviewService" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
<%@ page import="qht.shopmypham.com.vn.service.TrademarkService" %>
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
    <link rel="stylesheet" href="user-template/css/product.css" type="text/css">
    <link href="user-template/css/rating.css" rel="stylesheet"/>


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
                    <h4>Shop</h4>
                    <div class="breadcrumb__links">
                        <a href="./home">Trang chủ</a>
                        <span>Sản phẩm</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->
<%

%>
<!-- Shop Section Begin -->
<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="shop__sidebar">
                    <div class="shop__sidebar__search">
                        <form action="#">
                            <input type="text" placeholder="Tìm kiếm...">
                            <button type="submit"><span class="icon_search"></span></button>
                        </form>
                    </div>
                    <div class="shop__sidebar__accordion">
                        <div class="accordion" id="accordionExample">
                            <div class="card">
                                <div class="card-heading">
                                    <a data-toggle="collapse" data-target="#collapseOne">DANH MỤC</a>
                                </div>
                                <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="shop__sidebar__categories">
                                            <ul class="nice-scroll">
                                                <% List<Categories> listCategories = CategoryService.getAllCategory();
                                                    for (Categories c : listCategories) {
                                                %>
                                                <li><a href="categorie?cid=<%=c.getIdC()%>">
                                                    <%= c.getNameC()%>
                                                </a>
                                                </li>
                                                <%}%>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-heading">
                                    <a data-toggle="collapse" data-target="#collapseTwo">THƯƠNG HIỆU</a>
                                </div>
                                <div id="collapseTwo" class="collapse show" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="shop__sidebar__brand">
                                            <ul>
                                                <%
                                                    List<Trademark>list= TrademarkService.getTrademarkAll();
                                                    for(Trademark t:list){
                                                %>
                                                <li><a href="trademark?idT=<%=t.getIdTrademark()%>"><%=t.getName()%></a></li>
                                                <%}%>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-heading">
                                    <a data-toggle="collapse" data-target="#collapseThree">LỌC GIÁ</a>
                                </div>
                                <div id="collapseThree" class="collapse show" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="shop__sidebar__price">
                                            <ul>
                                                <li><a href="product?command=filterPrice&price1=0&price2=100000">0-100.000 đ</a></li>
                                                <li><a href="product?command=filterPrice&price1=100000&price2=300000">100.000 - 300.000 đ</a></li>
                                                <li><a href="product?command=filterPrice&price1=300000&price2=600000">300.000 - 600.000 đ</a></li>
                                                <li><a href="product?command=filterPrice&price1=600000&price2=600000">600.000đ trở lên</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="card">
                                <div class="card-heading">
                                    <a data-toggle="collapse" data-target="#collapseSix">Tags</a>
                                </div>
                                <div id="collapseSix" class="collapse show" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="shop__sidebar__tags">
                                            <a href="#">KEM CHỐNG NẮNG</a>
                                            <a href="#">KEM CHỐNG SẸO</a>
                                            <a href="#">NƯỚC TẨY TRANG</a>
                                            <a href="#">SỬA RỬA MẬT</a>
                                            <a href="#">NƯỚC HOA</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="shop__product__option">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="shop__product__option__left">
                                <p>Hiển thị 1- 12 trong 126 kết quả</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="shop__product__option__right">
                                <div class="dropdown">
                                    <button onclick="myFunction()" class="dropbtn">Sắp xếp theo giá <i
                                            class="arrow_carrot-down"></i></button>
                                    <div id="myDropdown" class="dropdown-content">

                                        <a class="dropdown-item" href="sort-product?command=descending">Giá tăng dần</a>
                                        <a class="dropdown-item" href="sort-product?command=ascending">Giá giảm
                                            dần</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id="product-list">

                    <%
                        NumberFormat nf = NumberFormat.getInstance();
                        nf.setMinimumFractionDigits(0);
                        List<Product> list1 = (List<Product>) request.getAttribute("productListByIdC");
                        int start = 0, end = 6;
                        if (list1.size() < 100) {
                            end = 6;
                        }
                        if (request.getParameter("start") != null) {
                            start = Integer.parseInt(request.getParameter("start"));
                        }
                        if (request.getParameter("end") != null) {
                            end = Integer.parseInt(request.getParameter("end"));
                        }
                        List<Product> list2 = Product.getListByPage(list1, start, end);
                        for (Product p : list2) {
                            List<Image> imageList = ProductService.getImages(String.valueOf(p.getIdP()));
                    %>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item" style="background-color: rgba(130,140,230,0.11)">
                            <div class="product__item__pic set-bg" data-setbg="<%=imageList.get(0).getImg()%>">
                                <ul class="product__hover">
                                    <li><a href="javascript:void(0);"><img src="user-template/img/icon/heart.png"
                                                                           alt=""><span>Yêu thích</span></a></li>
                                    <li><a href="javascript:void(0);"><img src="user-template/img/icon/compare.png"
                                                                           alt="">
                                        <span>Cùng loại</span></a></li>
                                    <li><a href="javascript:void(0);"><img onclick="detailProduct(<%=p.getIdP()%>)"
                                                                           src="user-template/img/icon/view.png"
                                                                           alt=""><span>Chi tiết</span></a></li>
                                    <%
                                        Account acc = (Account) request.getSession().getAttribute("a");
                                        if (acc != null) {
                                    %>
                                    <li><a href="javascript:void(0);"><img onclick="insertItem(<%=p.getIdP()%>)"
                                                                           src="user-template/img/icon/add-to-basket.png"
                                                                           alt=""><span>Thêm vào giỏ</span></a></li>
                                    <%} else {%>
                                    <li><a href="javascript:void(0);"><img onclick="inform()"
                                                                           src="user-template/img/icon/add-to-basket.png"
                                                                           alt=""><span>Thêm vào giỏ</span></a></li>
                                    <%}%>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6 onclick="detailProduct(<%=p.getIdP()%>)" style="cursor: pointer"><%=p.getName()%>
                                </h6>
                                <div class="rating">
                                    <%
                                        List<Review> reviewList = ReviewService.getAllReviewByIdP(String.valueOf(p.getIdP()));
                                        double avgStart = 0;
                                        double sum = 0;
                                        for (Review r : reviewList) {
                                            sum += r.getStar();

                                        }
                                        avgStart = sum / reviewList.size();
                                        String start1 = "";
                                        String s = "style=\"margin-right: 0;\"";
                                        String q = "style=\"margin-right: 0;\"";
                                        if (avgStart == 0) {
                                            start1 = "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>";

                                        }
                                        if (avgStart > 0 && avgStart < 0.5) {
                                            start1 = "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 0.5 && avgStart < 1) {
                                            start1 = "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 1 && avgStart < 1.5) {
                                            start1 = "<i class=\"fa fa-star\"></i> " +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 1.5 && avgStart < 2) {
                                            start1 = "<i class=\"fa fa-star\"></i> " +
                                                    "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 2 && avgStart < 2.5) {
                                            start1 = "<i class=\"fa fa-star\"></i> " +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 2.5 && avgStart < 3) {
                                            start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i> ";
                                        }
                                        if (avgStart >= 3 && avgStart < 3.5) {
                                            start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 3.5 && avgStart < 4) {
                                            start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 4 && avgStart < 4.5) {
                                            start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 4.5 && avgStart < 5) {
                                            start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-half-o\"" + q + "></i>";
                                        }
                                        if (avgStart == 5) {
                                            start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>";
                                        }
                                        if (reviewList.size() == 0) {
                                            start1 = "Chưa có đánh giá";
                                        }
                                    %>
                                    <%=start1%>
                                </div>
                                <h5><%=nf.format(p.getPrice())%>đ</h5>
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
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product__pagination">
                            <div class="pagination" style="justify-content: center">
                                <ul class="pagination1">
                                    <%
                                        String ca = String.valueOf(request.getAttribute("idT"));
                                    %>
                                    <li class="page-item previous-page <%=(start==0)?"disabled":""%>"><a
                                            href="trademark?idT=<%=ca%>&start=<%=start - 6%>&end=<%=end - 6%>"
                                            aria-label="Previous"
                                            style="width: 34.2px; height: 37.6px; line-height: 20px; line-height: 40px"><i
                                            class="fa fa-chevron-left"></i></a></li>
                                    <%
                                        int a, b;
                                        int limit = list1.size() / 9;
                                        if (limit * 6 < list1.size()) {
                                            limit += 1;
                                        }
                                        for (int i = 1; i <= limit; i++) {
                                            a = (i - 1) * 6;
                                            b = i * 6;
                                            if (b > list1.size()) {
                                                b = list1.size();
                                            }
                                    %>
                                    <li class="page-item current-page <%=(start==a)?"active":""%> "
                                        style="min-height: 43px; min-width: 37px"><a class="page-link"
                                                                                     href="trademark?idT=<%=ca%>&start=<%=a%>&end=<%=b%>"><%=i%>
                                    </a></li>
                                    <%}%>
                                    <li class="page-item next-page <%=(start+limit>=end)?"":""%>"><a
                                            href="trademark?idT=<%=ca%>&start=<%=start + 6%>&end=<%=end + 6%>"
                                            aria-label="Next"
                                            style="width: 34.2px; height: 37.6px; line-height: 20px; line-height: 40px"><i
                                            class="fa fa-chevron-right"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shop Section End -->

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer Section End -->

<script>
    /* When the user clicks on the button,
    toggle between hiding and showing the dropdown content */
    function myFunction() {
        document.getElementById("myDropdown").classList.toggle("show");
    }

    // Close the dropdown if the user clicks outside of it
    window.onclick = function (event) {
        if (!event.target.matches('.dropbtn')) {
            var dropdowns = document.getElementsByClassName("dropdown-content");
            var i;
            for (i = 0; i < dropdowns.length; i++) {
                var openDropdown = dropdowns[i];
                if (openDropdown.classList.contains('show')) {
                    openDropdown.classList.remove('show');
                }
            }
        }
    }

    function detailProduct(idP) {
        window.location.href = "detail?pid=" + idP;
    }
</script>
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