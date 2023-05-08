package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.been.Log;
import qht.shopmypham.com.vn.db.DB;
import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.FAQs;
import qht.shopmypham.com.vn.service.FAQsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;
import java.util.List;

@WebServlet(name = "FAQsController", value = "/faqs")
public class UserFAQs extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        List<FAQs> FAQsList = FAQsService.getAllFQAsBy1();
        request.setAttribute("FAQsList", FAQsList);
        request.getRequestDispatcher("/user-template/FAQs.jsp").forward(request, response);
        DB.me().insert(new Log(Log.INFO,acc,"faqs","Truy cập trang faqs",0, ipAddress));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
