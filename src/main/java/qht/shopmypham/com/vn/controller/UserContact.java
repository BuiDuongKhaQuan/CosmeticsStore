package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.been.Log;
import qht.shopmypham.com.vn.db.DB;
import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Shop;
import qht.shopmypham.com.vn.service.ContactService;
import qht.shopmypham.com.vn.service.ShopService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;

@WebServlet(name = "Contact", value = "/contact")
public class UserContact extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        Shop shop = ShopService.getShop();
        request.setAttribute("activeContact", "active");
        request.setAttribute("shop", shop);
        request.getRequestDispatcher("/user-template/contact.jsp").forward(request, response);
        DB.me().insert(new Log(Log.INFO,acc,"contact","Truy cập trang liên hệ",0, ipAddress));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String fullName = request.getParameter("name");
        String email = request.getParameter("email");
        String content = request.getParameter("content");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        String mess = "Cám ơn bạn đã liên hệ với chúng tôi, chúng tôi sẽ phản hồi tới bạn sớm nhất!";
        if (acc != null) {
            ContactService.addContact(String.valueOf(acc.getIdA()), email, content, fullName);
        } else {
            ContactService.addContact(null, email, content, fullName);
        }
        Shop shop = ShopService.getShop();
        request.setAttribute("shop", shop);
        request.setAttribute("mess", mess);
        request.setAttribute("activeContact", "active");
        request.getRequestDispatcher("/user-template/contact.jsp").forward(request, response);
        DB.me().insert(new Log(Log.ALERT,acc,"contact","Liên hệ thành công",0, ipAddress));
    }
}
