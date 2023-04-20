<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.service.CategoryService" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
<%@ page import="qht.shopmypham.com.vn.service.ReviewService" %>
<%@ page import="java.util.Collections" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<div id="notification" class="hidden-noti">Đã thêm vào giỏ hàng thành công</div>
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

<!-- Shop Section Begin -->
<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="shop__sidebar">
                    <div class="shop__sidebar__search" style="display: flex; position: relative">
                        <input style="width: 100%;font-size: 15px;color: #b7b7b7;padding-left: 20px;border: 1px solid #e5e5e5;height: 42px;"
                               type="text"
                               id="name"
                               oninput="search(this)"
                               placeholder="Tìm kiếm..."
                               required
                        />
                        <button type="button"
                                style="color: #b7b7b7;font-size: 15px;border: none;background: transparent;position: absolute;right: 0;padding: 0 15px;top: 0;height: 100%;"
                                onclick="search()"><span class="icon_search"></span></button>
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
                                                <li><a href="#">L'Oreal</a></li>
                                                <li><a href="#">Simple</a></li>
                                                <li><a href="#">Laroche Posay</a></li>
                                                <li><a href="#">Vichy</a></li>
                                                <li><a href="#">Chanel</a></li>
                                                <li><a href="#">Dior</a></li>
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
                                                <li><a href="#">$0.00 - $50.00</a></li>
                                                <li><a href="#">$50.00 - $100.00</a></li>
                                                <li><a href="#">$100.00 - $150.00</a></li>
                                                <li><a href="#">$150.00 - $200.00</a></li>
                                                <li><a href="#">$200.00 - $250.00</a></li>
                                                <li><a href="#">250.00+</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-heading">
                                    <a data-toggle="collapse" data-target="#collapseFive">Colors</a>
                                </div>
                                <div id="collapseFive" class="collapse show" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="shop__sidebar__color">
                                            <label class="c-1" for="sp-1">
                                                <input type="radio" id="sp-1">
                                            </label>
                                            <label class="c-2" for="sp-2">
                                                <input type="radio" id="sp-2">
                                            </label>
                                            <label class="c-3" for="sp-3">
                                                <input type="radio" id="sp-3">
                                            </label>
                                            <label class="c-4" for="sp-4">
                                                <input type="radio" id="sp-4">
                                            </label>
                                            <label class="c-5" for="sp-5">
                                                <input type="radio" id="sp-5">
                                            </label>
                                            <label class="c-6" for="sp-6">
                                                <input type="radio" id="sp-6">
                                            </label>
                                            <label class="c-7" for="sp-7">
                                                <input type="radio" id="sp-7">
                                            </label>
                                            <label class="c-8" for="sp-8">
                                                <input type="radio" id="sp-8">
                                            </label>
                                            <label class="c-9" for="sp-9">
                                                <input type="radio" id="sp-9">
                                            </label>
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
                            <nav class="header__menu mobile-menu" style="padding: 0;text-align: right;">
                                <ul>
                                    <li><a href="javascript:void(0);" style="font-weight: 100;">Sắp xếp theo giá <i
                                            class="fa fa-level-down" aria-hidden="true"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="javascript:void(0);" onclick="arrange('arrange','decrease')">Giá
                                                giảm dần</a></li>
                                            <li><a href="javascript:void(0);" onclick="arrange('arrange','ascending')">Giá
                                                tăng dần</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <%
                    List<Product> list1 = (List<Product>) request.getAttribute("listProduct");
                    int start = 0, end = 9;
                    if (list1.size() < 100) {
                        end = 9;
                    }
                    if (request.getParameter("start") != null) {
                        start = Integer.parseInt(request.getParameter("start"));
                    }
                    if (request.getParameter("end") != null) {
                        end = Integer.parseInt(request.getParameter("end"));
                    }
                    List<Product> list2 = Product.getListByPage(list1, start, end);

                %>
                <div class="row" id="product_search">
                    <div class="row">

                        <%
                            NumberFormat nf = NumberFormat.getInstance();
                            nf.setMinimumFractionDigits(0);
                            for (Product p : list2) {
                                List<Image> imageList = ProductService.getImages(String.valueOf(p.getIdP()));
                        %>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item" style="background-color: rgba(130,140,230,0.11)">
                                <div class="product__item__pic set-bg" data-setbg="<%=imageList.get(0).getImg()%>">
                                    <ul class="product__hover">
                                        <li><a href="javascript:void(0);"><img onclick="addFavorite(<%=p.getIdP()%>)"
                                                                               src="user-template/img/icon/heart.png"
                                                                               alt=""><span>Yêu thích</span></a></li>
                                        <li><a href="javascript:void(0);"><img onclick="category(<%=p.getIdC()%>)"
                                                                               src="user-template/img/icon/compare.png"
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
                                    <h6 onclick="detailProduct(<%=p.getIdP()%>)"
                                        style="cursor: pointer"><%=p.getName()%>
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
                    <div class="row" style="width: 100%;">
                        <div class="col-lg-12">
                            <div class="product__pagination">
                                <div class="pagination" style="justify-content: center">
                                    <ul class="pagination1">
                                        <li class="page-item previous-page <%=(start==0)?"disabled":""%>"><a
                                                href="product?command=product&start=<%=start - 9%>&end=<%=end - 9%>"
                                                aria-label="Previous"
                                                style="width: 34.2px; height: 37.6px; line-height: 20px; line-height: 40px"><i
                                                class="fa fa-chevron-left"></i></a></li>
                                        <%
                                            int a, b;
                                            int limit = list1.size() / 9;
                                            if (limit * 9 < list1.size()) {
                                                limit += 1;
                                            }
                                            for (int i = 1; i <= limit; i++) {
                                                a = (i - 1) * 9;
                                                b = i * 9;
                                                if (b > list1.size()) {
                                                    b = list1.size();
                                                }
                                        %>
                                        <li class="page-item current-page <%=(start==a)?"active":""%> "
                                            style="min-height: 43px; min-width: 37px"><a class="page-link"
                                                                                         href="product?command=product&start=<%=a%>&end=<%=b%>"><%=i%>
                                        </a></li>
                                        <%}%>
                                        <li class="page-item next-page <%=(start+limit>=end)?"":""%>"><a
                                                href="product?command=product&start=<%=start + 9%>&end=<%=end + 9%>"
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
    </div>
</section>
<!-- Shop Section End -->
<a href="#" class="btn btn-primary back-to-top cd-top text-replace js-cd-top">
    <i class="fa fa-angle-double-up"></i>
</a>

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer Section End -->


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
<%--<script src="user-template/js/autoLoadCart.js"></script>--%>
<script>
    function search(name) {
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "product?command=search&name=" + name.value, true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                document.getElementById("product_search").innerHTML = this.responseText;
            }
        };
        xhr.send();
    }

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
                }, 2000);
            }
        };
        xhr.send("IdP=" + IdP
            + "&command=insertItem");
    }

    function inform() {
        alert("Hãy đăng nhập");

    }

    function detailProduct(idP) {
        window.location.href = "detail?pid=" + idP;
    }

    function category(idC) {
        window.location.href = "categorie?cid=" + idC;
    }

    const pg = document.getElementById('pagination');
    const valuePage = {
        truncate: true, // Rút gọn liên kết trang hoặc không (true <=> rút gọn)
        curPage: 1, // Khởi tạo page hiện tại là 1
        numLinksTwoSide: 1, // Số lượng liên kết muốn hiển thị ở hai bên trang hiện tại.
        totalPages: 10, // Tổng số trang
    };


    function addFavorite(IdP) {
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
                }, 2000);
            }
        };
        xhr.send("IdP=" + IdP
            + "&command=favorite");
    }

    function arrange(command, action) {
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "product?command=" + command + "&action=" + action, true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                document.getElementById("product_search").innerHTML = this.responseText;
            }
        };
        xhr.send();
    }
</script>
</body>

</html>