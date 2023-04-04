package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "demoBlogAdmin", value = "/demoBlogAdmin")
public class demoBlogAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("admin-blog-post.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String img = request.getParameter("img");
        String topic = request.getParameter("topic");
        String link = request.getParameter("link");
        String shortContent = request.getParameter("shortContent");
        Account acc = (Account) request.getSession().getAttribute("a");
        System.out.println(img);
        System.out.println(topic);
        System.out.println(link);
        System.out.println(shortContent);
        System.out.println(acc.getIdA());

        Date date = new Date();
        BlogService.addBlogByIdBl(img, link, date.toString(), String.valueOf(acc.getIdA()), topic, shortContent);
        response.sendRedirect("admin-blog-list");

    }
}
