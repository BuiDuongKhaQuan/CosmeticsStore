package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.been.Log;
import qht.shopmypham.com.vn.db.DB;
import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.model.Review;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.ProductService;
import qht.shopmypham.com.vn.service.ReviewService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "DetailController", value = "/detail")
public class UserDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("pid");
        Account acc = (Account) request.getSession().getAttribute("a");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        Product product = ProductService.getProductById(Integer.parseInt(id));
        Categories cate = CategoryService.getCategoriesById(String.valueOf(product.getIdC()));
        List<Product> listProduct = ProductService.getProductByIdC(String.valueOf(product.getIdC()));
        List<Review> reviewList = ReviewService.getAllReviewByIdP(id);
        Collections.reverse(reviewList);
        double avgStart = 0;
        double sum = 0;
        for(Review r : reviewList){
            sum += r.getStar();

        }
        avgStart = sum/reviewList.size();
        request.setAttribute("avgStart",avgStart);
        request.setAttribute("cate", cate);
        request.setAttribute("reviewList", reviewList);
        request.setAttribute("listProduct", listProduct);
        request.setAttribute("product", product);
        request.getRequestDispatcher("/user-template/product-details.jsp").forward(request, response);
        DB.me().insert(new Log(Log.INFO,acc,"product-details","Truy cập trang sản phẩm chi tiết",0, ipAddress));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
