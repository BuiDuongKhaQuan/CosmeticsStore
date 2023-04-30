<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.model.Home" %>
<%@ page import="qht.shopmypham.com.vn.model.Shop" %>
<%@ page import="qht.shopmypham.com.vn.service.ShopService" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/16/2023
  Time: 10:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Footer Section Begin -->
<%     Account acc = (Account) request.getSession().getAttribute("a");
    Shop shop = ShopService.getShop(); %>
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="home"><img src="<%=shop.getLogo_footer()%>" alt=""></a>
                    </div>
                    <p>Cảm ơn bạn đã đến với chúng tôi.</p>
                </div>
            </div>
            <div class="col-lg-3  col-md-3 col-sm-6">
                <div class="footer__widget">
                    <h6>Thông tin liên lạc</h6>
                    <ul style=" color: #ccc;">
                        <li><i class="fa fa-home" aria-hidden="true"></i> <%=shop.getAddress()%></li>
                        <li><i class="fa fa-phone" aria-hidden="true"></i> <%=shop.getPhone()%></li>
                        <li><i class="fa fa-envelope" aria-hidden="true"></i> <%=shop.getEmail()%></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="footer__widget">
                    <h6>Truy cập nhanh</h6>
                    <ul style=" color: #ccc;">
                        <li><a href="#">Trang chủ</a></li>
                        <li><a href="#">Sản Phẩm</a></li>
                        <li><a href="#">Thanh toán</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Liên hệ</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__widget">
                    <h6>Nhập thông tin để cập nhật tin tức thường xuyên</h6>
                    <div class="footer__newslatter">
                        <form action="contact" style=" color: #ccc;">
                            <input type="text" name="email"  placeholder="Email của bạn" style="color: #b7b7b7">
                            <br>
                        </form>
                        <div>
                            <button class="btn btn-primary btn-block border-0 py-3" type="submit" style="    height: 30px;
                                margin-top: 10px;
                                line-height: 7px;background-color: #ccc;">
                                OK
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="footer__copyright__text">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    <p>© <%=shop.getShopName()%>
                        <script>
                            document.write(new Date().getFullYear());
                        </script>
                        .Đã đăng ký bản quyền<i class="fa fa-heart-o" aria-hidden="true"></i>Designed by<a
                                href="https://colorlib.com" target="_blank"><%=shop.getDesignerBy()%></a>
                    </p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->
<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form" action="product">
            <input name="command" type="hidden" value="search-header">
            <input name="name-product" type="text" id="search-input" placeholder="Nhập tên sản phẩm cần tìm...">
        </form>
    </div>
</div>
<!-- Search End -->
<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"
><i class="fa fa-angle-double-up"></i
></a>

<% if (acc != null) {%>
<script src="user-template/js/autoLoadCart.js"></script>
<%}%>