package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Blog;
import qht.shopmypham.com.vn.model.BlogOffer;
import qht.shopmypham.com.vn.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogController", value = "/blog")
public class UserBlog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Blog> blogList = BlogService.get8Blog();

        request.setAttribute("activeBlog", "active");
        request.setAttribute("blogList", blogList);
        request.getRequestDispatcher("/user-template/blog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
