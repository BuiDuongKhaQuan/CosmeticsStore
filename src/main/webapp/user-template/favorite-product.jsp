<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
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

    <style>
        .flex-table {
            display: flex;
            justify-content: center;
        }

    </style>
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
                    <h4> Sản phẩm yêu thích</h4>
                    <div class="breadcrumb__links">
                        <a href="./home">Trang chủ</a>
                        <a href="./product">Sản phẩm</a>
                        <span>Sản phẩm yêu thích</span>
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
        <div class="px-4 px-lg-0">
            <div class="pb-5">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                            <!-- Shopping cart table -->
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="p-2 px-3 text-uppercase">Sản phẩm</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">Giá</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light flex-table">
                                            <div class="py-2 text-uppercase">Thêm vào giỏ</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">Xóa</div>
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody id="table">
                                    <% List<Product> productList = (List<Product>) request.getAttribute("productList");
                                        NumberFormat nf = NumberFormat.getInstance();
                                        nf.setMinimumFractionDigits(0);
                                        if (productList.size() != 0) {
                                            for (Product p : productList) {
                                                List<Image> imageList = ProductService.getImages(String.valueOf(p.getIdP()));
                                                Categories category = CategoryService.getCategoriesById(String.valueOf(p.getIdC()));
                                    %>
                                    <tr>
                                        <th scope="row" class="border-0">
                                            <div class="p-2">
                                                <img src="<%=imageList.get(0).getImg()%>"
                                                     alt=""
                                                     width="70" class="img-fluid rounded shadow-sm">
                                                <div class="ml-3 d-inline-block align-middle">
                                                    <h5 class="mb-0"><a href="javascript:void(0);"
                                                                        onclick="detailProduct(<%=p.getIdP()%>)"
                                                                        class="text-dark d-inline-block align-middle"
                                                                        style="width: 500px;overflow: hidden;white-space: nowrap;
                                                                        text-overflow: ellipsis;"><%=p.getName()%>
                                                    </a></h5><span onclick="category(<%=p.getIdC()%>)"
                                                                   class="text-muted font-weight-normal font-italic d-block">Danh mục: <%=category.getNameC()%></span>
                                                </div>
                                            </div>
                                        </th>
                                        <td class="border-0 align-middle"><strong><%=nf.format(p.getPrice())%>đ</strong>
                                        </td>
                                        <td class="border-0 align-middle"><a href="javascript:void(0);"
                                                                             onclick="insertItem(<%=p.getIdP()%>)"
                                                                             class="text-dark flex-table">
                                            <i class="fa fa-shopping-cart"></i>
                                        </a></td>
                                        <td class="border-0 align-middle"><a href="javascript:void(0);"
                                                                             onclick="deleteFavorite(<%=p.getIdP()%>)"
                                                                             class="text-dark"
                                                                             style="margin-left: 10px;"><i
                                                class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <%
                                        }
                                    } else {
                                    %>
                                    <tr>
                                        <th>
                                        Không có sản phẩm yêu thích!
                                        </th>
                                    </tr>
                                    <%}%>
                                    </tbody>
                                </table>
                            </div>
                            <!-- End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shopping Cart Section End -->

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
<script src="user-template/js/autoLoadCart.js"></script>
<script>

    function getCartCount() {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("quantity-product").innerHTML = this.responseText;
                console.log(xhr)
            }
        };
        xhr.open("GET", "auto-load-quantity", true);
        xhr.send();
    }

    function detailProduct(idP) {
        window.location.href = "detail?pid=" + idP;
    }

    function category(idC) {
        window.location.href = "categorie?cid=" + idC;
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

    function deleteFavorite(IdP) {

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "product", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                loadListFavorite();
            }
        };
        xhr.send("IdP=" + IdP
            + "&command=delete-favorite");
    }

    function loadListFavorite() {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "product", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("table").innerHTML = this.responseText;
            }
        };
        xhr.send("command=load_list_favorite");
    }
</script>


</body>

</html>
