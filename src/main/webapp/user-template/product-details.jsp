<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.service.ReviewService" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
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
    <link href="user-template/css/rating.css" rel="stylesheet"/>

</head>

<body>
<!-- Page Preloder -->


<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<jsp:include page="header.jsp"></jsp:include>
<!-- Header Section End -->

<!-- Shop Details Section Begin -->
<section class="shop-details">
    <% Product p = (Product) request.getAttribute("product");
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumFractionDigits(0);
        List<Review> reviewList = (List<Review>) request.getAttribute("reviewList");
        List<Image> imageList = ProductService.getImages(String.valueOf(p.getIdP()));
    %>
    <div class="product__details__pic">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product__details__breadcrumb">
                        <a href="./home">Home</a>
                        <a href="./product">Shop</a>
                        <span>Product Details</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                <div class="product__thumb__pic set-bg" data-setbg="<%=imageList.get(0).getImg()%>">
                                </div>
                            </a>
                        </li>
                        <%
                            int a = 1;
                            for (int i = 1; i < imageList.size(); i++) {
                                a++;
                        %>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-<%=a%>" role="tab">
                                <div class="product__thumb__pic set-bg" data-setbg="<%=imageList.get(i).getImg()%>">
                                </div>
                            </a>
                        </li>
                        <%}%>
                    </ul>
                </div>
                <div class="col-lg-6 col-md-9">
                    <div class="tab-content">

                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__pic__item">
                                <img src="<%= imageList.get(0).getImg()%>" alt="">
                            </div>
                        </div>
                        <%
                            int b = 1;
                            for (int i = 1; i < imageList.size(); i++) {
                                b++;
                        %>
                        <div class="tab-pane" id="tabs-<%=b%>" role="tabpanel">
                            <div class="product__details__pic__item">
                                <img src="<%= imageList.get(i).getImg()%>" alt="">
                            </div>
                        </div>
                        <%}%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="product__details__content">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8">
                    <div class="product__details__text">
                        <h4><%=p.getName()%>
                        </h4>
                        <div class="rating">
                            <%
                                String start = "";
                                double avgStart = (double) request.getAttribute("avgStart");
                                String s = "style=\"margin-right: 0;\"";
                                String q = "style=\"margin-right: 0;\"";
                                if (avgStart == 0) {
                                    start = "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                            " <i class=\"fa fa-star-o\"" + s + "></i>";

                                }
                                if (avgStart > 0 && avgStart < 0.5) {
                                    start = "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                            " <i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart >= 0.5 && avgStart < 1) {
                                    start = "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart >= 1 && avgStart < 1.5) {
                                    start = "<i class=\"fa fa-star\"></i> " +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart >= 1.5 && avgStart < 2) {
                                    start = "<i class=\"fa fa-star\"></i> " +
                                            "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart >= 2 && avgStart < 2.5) {
                                    start = "<i class=\"fa fa-star\"></i> " +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart >= 2.5 && avgStart < 3) {
                                    start = "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i> ";
                                }
                                if (avgStart >= 3 && avgStart < 3.5) {
                                    start = "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart >= 3.5 && avgStart < 4) {
                                    start = "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart >= 4 && avgStart < 4.5) {
                                    start = "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart >= 4.5 && avgStart < 5) {
                                    start = "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-half-o\"" + q + "></i>";
                                }
                                if (avgStart == 5) {
                                    start = "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>";
                                }
                                if (reviewList.size() == 0) {
                                    start = "Chưa có đánh giá";
                                }
                            %>
                            <%=start%>
                            <span> - <%=reviewList.size()%> đánh giá</span>
                        </div>
                        <h3><%=nf.format(p.getPrice())%><span></span></h3>
                        <%--                        <p>Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable--%>
                        <%--                            cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening--%>
                        <%--                            with placket.</p>--%>
                        <div class="product__details__option">
                            <div class="product__details__option__size">
                                <span>Size:</span>
                                <label for="xxl">xxl
                                    <input type="radio" id="xxl">
                                </label>
                                <label class="active" for="xl">xl
                                    <input type="radio" id="xl">
                                </label>
                                <label for="l">l
                                    <input type="radio" id="l">
                                </label>
                                <label for="sm">s
                                    <input type="radio" id="sm">
                                </label>
                            </div>
                            <div class="product__details__option__color">
                                <span>Color:</span>
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
                                <label class="c-9" for="sp-9">
                                    <input type="radio" id="sp-9">
                                </label>
                            </div>
                        </div>
                        <div class="product__details__cart__option">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                            <a href="cartcontroller?command=insertItem&product_id=<%=p.getIdP()%>" class="primary-btn">+
                                Thêm giảo giỏ hàng</a>
                        </div>
                        <div class="product__details__btns__option">
                            <a href="#"><i class="fa fa-heart"></i> add to wishlist</a>
                            <a href="#"><i class="fa fa-exchange"></i> Add To Compare</a>
                        </div>
                        <div class="product__details__last__option">
                            <h5><span>Thanh toán an toàn</span></h5>
                            <img src="user-template/img/shop-details/details-payment.png" alt="">
                            <%
                                Categories categories = (Categories) request.getAttribute("cate");

                            %>
                            <ul>
                                <li><span>Mã sản phẩm:</span> #<%=p.getIdP()%>
                                </li>
                                <li><span>Danh mục:</span> <%=categories.getNameC()%>
                                </li>
                                <li><span>Từ khóa:</span> Clothes, Skin, Body</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-5"
                                   role="tab">Mô tả</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-6" role="tab">Bình luận</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-5" role="tabpanel">
                                <div class="product__details__tab__content">
                                    <div class="product__details__tab__content__item">
                                        <h5><%=p.getName()%>
                                        </h5>
                                        <p><%=p.getInformation()%>></p>
                                    </div>

                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-6" role="tabpanel">
                                <div class="product__details__tab__content">
                                    <div class="row">

                                        <div class="col-md-6">
                                            <div id="comment-size">
                                                <h4 class="mb-4"><%=reviewList.size()%> đánh giá về <%=p.getName()%>
                                                </h4>
                                            </div>
                                            <div id="comment">
                                                <%
                                                    for (Review r : reviewList) {
                                                        Account acc = AccountService.getAccountById(String.valueOf(r.getIdA()));
                                                %>
                                                <div class="media mb-4">
                                                    <img src="<%=acc.getImg()%>" alt="Image" class="img-fluid mr-3 mt-1"
                                                         style="width: 50px; border-radius: 50%; height: 50px;">
                                                    <div class="media-body">
                                                        <h6><%=acc.getUser()%><small>
                                                            - <i><%=r.getDate()%>
                                                        </i></small></h6>

                                                        <div class="rating">
                                                            <%
                                                                if (r.getStar() == 5) {
                                                            %>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <%}%>
                                                            <%
                                                                if (r.getStar() == 4.5) {
                                                            %>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half"></i>
                                                            <%}%>
                                                            <%
                                                                if (r.getStar() == 4) {
                                                            %>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <%}%>
                                                            <%
                                                                if (r.getStar() == 3.5) {
                                                            %>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <%}%>
                                                            <%
                                                                if (r.getStar() == 3) {
                                                            %>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <%}%>
                                                            <%
                                                                if (r.getStar() == 2.5) {
                                                            %>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <%}%>
                                                            <%
                                                                if (r.getStar() == 2) {
                                                            %>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <%}%>
                                                            <%
                                                                if (r.getStar() == 1.5) {
                                                            %>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <%}%>
                                                            <%
                                                                if (r.getStar() == 1) {
                                                            %>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <%}%>
                                                            <%
                                                                if (r.getStar() == 0.5) {
                                                            %>
                                                            <i class="fa fa-star-half"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <%}%>
                                                            <%
                                                                if (r.getStar() == 0) {
                                                            %>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <%}%>
                                                        </div>
                                                        <p><%=r.getInfomation()%>
                                                        </p>
                                                    </div>
                                                </div>
                                                <%}%>
                                            </div>
                                        </div>
                                        <div class="col-md-6" id="review">
                                            <h4 class="mb-4">Để lại đánh giá của bạn</h4>
                                            <div class="d-flex my-3">
                                                <p class="mb-0 mr-2">Đánh giá * :</p>
                                                <form method="get" id="rating" class="text-primary"
                                                      style="margin-top: -10px">
                                                    <input type="radio" id="star5" name="star" value="5"/>
                                                    <label class="full" for="star5"
                                                           title="Rất tốt - 5 stars"></label>

                                                    <input type="radio" id="star4half" name="star" value="4.5"/>
                                                    <label class="half" for="star4half" title="4.5 sao"></label>

                                                    <input type="radio" id="star4" name="star" value="4"/>
                                                    <label class="full" for="star4" title="Tốt - 4 sao"></label>

                                                    <input type="radio" id="star3half" name="star" value="3.5"/>
                                                    <label class="half" for="star3half" title="3.5 stars"></label>

                                                    <input type="radio" id="star3" name="star" value="3"/>
                                                    <label class="full" for="star3"
                                                           title="Bình thường - 3 sao"></label>

                                                    <input type="radio" id="star2half" name="star" value="2.5"/>
                                                    <label class="half" for="star2half" title="2.5 sao"></label>

                                                    <input type="radio" id="star2" name="star" value="2"/>
                                                    <label class="full" for="star2"
                                                           title="Trung bình  - 2 sao"></label>

                                                    <input type="radio" id="star1half" name="star" value="1.5"/>
                                                    <label class="half" for="star1half" title="1.5 sao"></label>

                                                    <input type="radio" id="star1" name="star" value="1"/>
                                                    <label class="full" for="star1" title="Tệ - 1 sao"></label>

                                                    <input type="radio" id="starhalf" name="star" value="0.5"/>
                                                    <label class="half" for="starhalf"
                                                           title="Rất tệ - 0.5 sao"></label>
                                                </form>

                                            </div>

                                            <form>
                                                <div class="form-group">
                                                    <label for="message">Đánh giá của bạn *</label>
                                                    <textarea id="message"
                                                              name="information" cols="30" rows="5"
                                                              class="form-control" required></textarea>
                                                </div>
                                                <%
                                                    Account ac = (Account) request.getSession().getAttribute("a");
                                                    if (ac == null) {
                                                %>
                                                <div class="form-group mb-0">
                                                    <a href="login.jsp"
                                                       class="btn btn-primary px-3"
                                                       style="border-radius: 5px"> Đăng nhập để đánh giá
                                                    </a>
                                                </div>
                                                <%} else {%>
                                                <div class="form-group mb-0">
                                                    <button type="button" onclick="send(<%=p.getIdP()%>)"
                                                            class="btn btn-primary px-3"> Đánh giá
                                                    </button>
                                                </div>
                                                <%}%>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shop Details Section End -->

<!-- Related Section Begin -->
<section class="related spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="related-title">Related Product</h3>
            </div>
        </div>
        <div class="row">
            <%
                List<Product> listProduct = (List<Product>) request.getAttribute("listProduct");
                for (Product p1 : listProduct) {
                    List<Image> imageList1 = ProductService.getImages(String.valueOf(p1.getIdP()));
            %>
            <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                <div class="product__item" style="background-color: rgba(130,140,230,0.11)">
                    <div class="product__item__pic set-bg" data-setbg="<%=imageList1.get(0).getImg()%>">
                        <ul class="product__hover">
                            <li><a href="javascript:void(0);"><img src="user-template/img/icon/heart.png"
                                                                   alt=""><span>Yêu thích</span></a></li>
                            <li><a href="javascript:void(0);"><img src="user-template/img/icon/compare.png" alt="">
                                <span>Cùng loại</span></a></li>
                            <li><a href="javascript:void(0);"><img onclick="detailProduct(<%=p.getIdP()%>)"
                                                                   src="user-template/img/icon/view.png"
                                                                   alt=""><span>Chi tiết</span></a></li>
                            <%
                                Account acc = (Account) request.getSession().getAttribute("a");
                                if (acc != null) {
                            %>
                            <li><a href="javascript:void(0);"><img onclick="insertItem(<%=p1.getIdP()%>)"
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
                        <h6 onclick="detailProduct(<%=p1.getIdP()%>)" style="cursor: pointer"><%=p1.getName()%>
                        </h6>
                        <div class="rating">
                            <%
                                List<Review> reviewList1 = ReviewService.getAllReviewByIdP(String.valueOf(p1.getIdP()));
                                double avgStart1 = 0;
                                double sum1 = 0;
                                for (Review r : reviewList1) {
                                    sum1 += r.getStar();

                                }
                                avgStart1 = sum1 / reviewList.size();
                                String start1 = "";
                                if (avgStart1 == 0) {
                                    start1 = "<i class=\"fa fa-star-o\"></i>" +
                                            " <i class=\"fa fa-star-o\"></i>" +
                                            " <i class=\"fa fa-star-o\"></i>" +
                                            " <i class=\"fa fa-star-o\"></i>" +
                                            " <i class=\"fa fa-star-o\"></i>";

                                }
                                if (avgStart1 > 0 && avgStart1 < 0.5) {
                                    start1 = "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                            " <i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart1 >= 0.5 && avgStart1 < 1) {
                                    start1 = "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart1 >= 1 && avgStart1 < 1.5) {
                                    start1 = "<i class=\"fa fa-star\"></i> " +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart1 >= 1.5 && avgStart1 < 2) {
                                    start1 = "<i class=\"fa fa-star\"></i> " +
                                            "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart1 >= 2 && avgStart1 < 2.5) {
                                    start1 = "<i class=\"fa fa-star\"></i> " +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart1 >= 2.5 && avgStart1 < 3) {
                                    start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i> ";
                                }
                                if (avgStart1 >= 3 && avgStart1 < 3.5) {
                                    start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart1 >= 3.5 && avgStart1 < 4) {
                                    start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart1 >= 4 && avgStart1 < 4.5) {
                                    start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                                }
                                if (avgStart1 >= 4.5 && avgStart1 < 5) {
                                    start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star-half-o\"" + q + "></i>";
                                }
                                if (avgStart1 == 5) {
                                    start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>" +
                                            "<i class=\"fa fa-star\"" + s + "></i>";
                                }
                                if (reviewList1.size() == 0) {
                                    start1 = "Chưa có đánh giá";
                                }
                            %>
                            <%=start1%>
                        </div>
                        <h5><%=nf.format(p1.getPrice())%>đ</h5>
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
<!-- Related Section End -->

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer Section End -->

<script>

    function getStart() {
        let star = document.forms[0]
        let txt = "";
        let i;
        for (i = 0; i < star.length; i++) {
            if (star[i].checked) {
                txt = txt + star[i].value
            }
        }
        return txt;
    }


    function send(idP) {

        var mess = document.getElementById("message").value;

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "review", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                loadSizeComment();
                loadComment();
                load();
            }
        };
        xhr.send("mess=" + encodeURIComponent(mess)
            + "&command=add"
            + "&start=" + encodeURIComponent(getStart())
            + "&idP=" + idP);
    }

    function loadComment() {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "review", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("comment").innerHTML = this.responseText;
            }
        };
        xhr.send("idP=" + <%=p.getIdP()%>
            +"&command=r");
    }

    function loadSizeComment() {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "review", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("comment-size").innerHTML = this.responseText;
            }
        };
        xhr.send("idP=" + <%=p.getIdP()%>
            +"&command=s");
    }

    function detailProduct(idP) {
        window.location.href = "detail?pid=" + idP;
    }

    function load() {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "review", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("review").innerHTML = this.responseText;
            }
        };
        xhr.send("idP=" + <%=p.getIdP()%>
            +"&command=b");
    }

</script><!-- Js Plugins -->
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