package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.been.Log;
import qht.shopmypham.com.vn.db.DB;
import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;
import java.util.List;

@WebServlet(name = "AdminHome", value = "/admin-home")
public class AdminHome extends HttpServlet {
    String error404 = "404.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.getGeneralManage() == 1 || acc.getOrderManage() == 1 || acc.getAccountManage() == 1 || acc.getBlogManage() == 1 || acc.getProductManage() == 1 || acc.getHomeManage() == 1) {
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
                DB.me().insert(new Log(Log.INFO,acc,"admin-home","Truy cập trang tổng quan admin",0,ipAddress));

            } else {
                response.sendRedirect(error404);            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
