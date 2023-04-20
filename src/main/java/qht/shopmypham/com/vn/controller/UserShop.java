package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.ShopService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ShopController", value = "/admin-shop-infoShop")
public class UserShop extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        qht.shopmypham.com.vn.model.Shop shop = ShopService.getShop();
        request.setAttribute("active3", "active");

        request.setAttribute("shop", shop);
        request.getRequestDispatcher("/user-template/admin-shop-infoShop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
