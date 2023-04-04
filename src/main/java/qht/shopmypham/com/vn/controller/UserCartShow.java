package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.ListProductByCart;
import qht.shopmypham.com.vn.service.CartService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CartShowController", value = "/cart-show")
public class UserCartShow extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));
        request.setAttribute("activePage", "active");
        request.setAttribute("list", list);
        request.getRequestDispatcher("/user-template/shopping-cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
