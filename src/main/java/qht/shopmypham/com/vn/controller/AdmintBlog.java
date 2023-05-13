package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Blog;
import qht.shopmypham.com.vn.service.BlogService;
import qht.shopmypham.com.vn.tools.DateUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;
import java.util.List;

@WebServlet(name = "AdminBlogController", value = "/admin-blog")
public class AdmintBlog extends HttpServlet {
    String error404 = "404.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        int idA = 0;
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.powerAccount().getBlogManage() == 1) {
                idA = acc.getId();
                List<Blog> blogList = BlogService.getAllBlog();
                String command = request.getParameter("command");

                if (command.equals("dashboard")) {
                    request.getRequestDispatcher("/admin-template/blog-dashboard.jsp").forward(request, response);
                }
                if (command.equals("list")) {
                    request.setAttribute("blogList", blogList);
                    request.getRequestDispatcher("/admin-template/blog-list.jsp").forward(request, response);

                }
                if (command.equals("add")) {
                    request.getRequestDispatcher("/admin-template/blog-post.jsp").forward(request, response);
                }
                if (command.equals("edit")) {
                    String IdBl = request.getParameter("IdBl");
                    Blog blog = BlogService.getBlogByIdBl(IdBl);
                    request.setAttribute("blog", blog);
                    request.getRequestDispatcher("/admin-template/blog-edit.jsp").forward(request, response);
                }
                if (command.equals("delete")) {
                    String IdBl = request.getParameter("IdBl");
                    BlogService.deleteBlogByIdBl(IdBl);
                    response.sendRedirect("admin-blog?command=list");
                }
            } else {
                response.sendRedirect(error404);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        int idA = 0;
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.powerAccount().getBlogManage() == 1) {
                idA = acc.getId();
                String command = request.getParameter("command");
                HttpSession session = request.getSession();
                String topic = request.getParameter("topic");
                String img = request.getParameter("img");
                String link = request.getParameter("link");
                Account account = (Account) request.getSession().getAttribute("a");
                String content = request.getParameter("content");
                String date = DateUtil.getDateNow();

                if (command.equals("add")) {
                    BlogService.addBlogByIdBl(img, link, date, String.valueOf(account.getId()), topic, content);
                    session.removeAttribute("imgBlog");
                }
                if (command.equals("edit")) {
                    String IdBl = request.getParameter("IdBl");
                    BlogService.editBlogByIdBl(IdBl, img, link, String.valueOf(account.getId()), topic, content);
                    session.removeAttribute("imgBlog");
                }
            } else {
                response.sendRedirect(error404);
            }
        }
    }
}
