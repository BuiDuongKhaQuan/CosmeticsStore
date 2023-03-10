<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="qht.shopmypham.com.vn.service.CategoryService" %>
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
    <link href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro-v6@44659d9/css/all.min.css" rel="stylesheet"
          type="text/css"/>
    <style>
        .dropbtn {
            background-color: #fff;
            color: #111;

            border: none;
            cursor: pointer;
        }

        .dropbtn:hover, .dropbtn:focus {
            background-color: #fff;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            min-width: 160px;
            overflow: auto;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            text-align: center;
            color: black;
            /*padding: 12px 16px;*/
            text-decoration: none;
            display: block;
        }

        .dropdown a:hover {background-color: #ddd;}

        .show {display: block;}
    </style>
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

<!-- Shop Section Begin -->
<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="shop__sidebar">
                    <div class="shop__sidebar__search">
                        <form action="search">
                            <% String txtInput = (String) request.getAttribute("txtSearch"); %>
                            <%if (txtInput != null) {%>
                            <input type="text"
                                   placeholder="Tìm kiếm..."
                                   type="text"
                                   name="nameP"
                                   class="form-control"
                                   value="<%=txtInput%>"
                                   required
                            />
                            <%} else {%>
                            <input
                                    type="text"
                                    name="nameP"
                                    class="form-control"
                                    placeholder="Tìm kiếm..."
                                    required
                            />
                            <%}%>
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
                            <div class="shop__product__option__right">
                                <div class="dropdown">
                                    <button onclick="myFunction()" class="dropbtn">Sắp xếp theo giá <i class="arrow_carrot-down"></i></button>
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
                <div class="row">

                    <%
                        NumberFormat nf = NumberFormat.getInstance();
                        nf.setMinimumFractionDigits(0);
                        List<Product> listProduct = (List<Product>) request.getAttribute("listProduct");
                        for (Product p : listProduct) {
                    %>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <a href="detail?pid=<%= p.getIdP()%>"><img src="<%=p.getImg1()%>" alt=""
                                                                       style=" height: 255px"></a>
                            <div class="product__item__text">
                                <h6><%=p.getName()%>
                                </h6>
                                <button onclick="insertItem(<%=p.getIdP()%>,'insertItem')" class="add-cart">+
                                    Thêm vào giỏ hàng</button>
                                <div class="rating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
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
                            <a class="active" href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <span>...</span>
                            <a href="#">21</a>
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
<script>
    /* When the user clicks on the button,
    toggle between hiding and showing the dropdown content */
    function myFunction() {
        document.getElementById("myDropdown").classList.toggle("show");
    }

    // Close the dropdown if the user clicks outside of it
    window.onclick = function(event) {
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
</script>
<script>
    function insertItem(idP,command) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "product", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                alert("Thêm sản phẩm vào giỏ hàng thành công.");
            }
        };
        xhr.send("IdP=" + idP
            + "&command=" + command);
    }
</script><!-- Custom Js -->
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