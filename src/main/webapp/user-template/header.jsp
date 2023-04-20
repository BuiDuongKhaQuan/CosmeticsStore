<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.model.ListProductByCart" %>
<%@ page import="qht.shopmypham.com.vn.service.CartService" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/15/2023
  Time: 10:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-7 header_height">
                    <div class="header__top__left">
                        <p>Miễn phí vẫn chuyển, bảo đảm đổi trả hoặc hoàn tiền trong 30 ngày.</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-5">
                    <div class="header__top__right">
                        <div class="header__top__links">
                            <%
                                Account acc = (Account) request.getSession().getAttribute("a");
                            %>
                            <%if (acc == null) {%>
                            <a href="login.jsp">ĐĂNG NHẬP</a>
                            <% }%>
                            <% if (acc != null) {
                                if (acc.getOrderManage() == 0 && acc.getHomeManage() == 0 && acc.getProductManage() == 0
                                        && acc.getAccountManage() == 0 && acc.getBlogManage() == 0 && acc.getGeneralManage() == 0) {
                            %>
                            <% String rs = "";
                                if (acc.getIdGoogle() != null) {
                                    rs = acc.getEmail();
                                }
                                if (acc.getIdGoogle() == null) {
                                    rs = acc.getFullName();
                                }
                                if (acc.getFullName() == null) {
                                    rs = acc.getUser();
                                }
                            %>
                            <a href="profile?command=profile"> Xin chào <%=rs%>
                            </a>
                            <%} else {%>
                            <a href="admin-home"> Xin chào
                                ADMIN </a>
                            <% }
                            } %>
                            <a href="faqs">FAQs</a>
                        </div>
                        <div class="header__top__hover">
                            <span>Usd <i class="arrow_carrot-down"></i></span>
                            <ul>
                                <li>USD</li>
                                <li>EUR</li>
                                <li>USD</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="navbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 pading-profile">
                    <div class="header__logo">
                        <a href="home"><img src="user-template/img/logo.jpg" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 pading-profile">
                    <nav class="header__menu mobile-menu">
                        <% String activeHome = (String) request.getAttribute("activeHome");
                            String activeProduct = (String) request.getAttribute("activeProduct");
                            String activePage = (String) request.getAttribute("activePage");
                            String activeBlog = (String) request.getAttribute("activeBlog");
                            String activeContact = (String) request.getAttribute("activeContact");
                        %>
                        <ul>
                            <li class="<%=activeHome%>"><a href="./home">Trang chủ</a></li>
                            <li class="<%=activeProduct%>"><a href="product?command=product">Sản phẩm</a></li>
                            <li class="<%=activePage%>"><a href="#">Trang</a>
                                <ul class="dropdown">
                                    <%if (acc != null) {%>
                                    <li><a href="./cart-show"> Giỏ hàng</a></li>
                                    <li><a href="./checkout">Thanh toán</a></li>
                                    <%} else {%>
                                    <li><a href=".user-template/shopping-cart1.jsp"> Giỏ hàng</a></li>
                                    <li><a href=".user-template/checkout1.jsp">Thanh toán</a></li>
                                    <%}%>
                                </ul>
                            </li>
                            <li class="<%=activeBlog%>"><a href="./blog">Blog</a></li>
                            <li class="<%=activeContact%>"><a href="./contact">Liên hệ </a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3 pading-profile">
                    <div class="header__nav__option">
                        <a href="#" class="search-switch"><img src="user-template/img/icon/search.png" alt=""></a>
                        <% if (acc != null) {
                            List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));
                        %>
                        <a href="product?command=favorite"><img src="user-template/img/icon/heart.png" alt=""></a>
                        <a href="auto-load?command=show"><i class="fa fa-shopping-cart" aria-hidden="true"
                                                            style="color: #111;font-size: 18px;">
                        </i>
                            <span id="cart-count"><%=list.size()%></span></a>
                        <%} else {%>
                        <a href="#"><img src="user-template/img/icon/heart.png" alt=""></a>
                        <a href="shopping-cart1.jsp"><i class="fa fa-shopping-cart" aria-hidden="true"
                                                        style="color: #111;font-size: 18px;"></i>
                            <span>0</span></a>
                        <%}%>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </div>
</header>
