package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminHome", value = "/admin-home")
public class AdminHome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = ProductService.getAllProduct();
        List<Account> accountList = AccountService.getAllAccount();
        List<Subscibe> subscibeList = SubscibeService.getAllSubscibe();
        List<Review> reviewList = ReviewService.getAllReview();

        request.setAttribute("active1", "active");
        request.setAttribute("accountList", accountList);
        request.setAttribute("productList", productList);
        request.setAttribute("subscibeList", subscibeList);
        request.setAttribute("reviewList", reviewList);
        request.getRequestDispatcher("/admin-template/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
