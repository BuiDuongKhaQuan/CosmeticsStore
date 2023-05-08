package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.been.Log;
import qht.shopmypham.com.vn.db.DB;
import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.service.ShopService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;

@WebServlet(name = "ShopController", value = "/admin-shop-infoShop")
public class UserShop extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        qht.shopmypham.com.vn.model.Shop shop = ShopService.getShop();
        request.setAttribute("active3", "active");
        Account acc = (Account) request.getSession().getAttribute("a");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        request.setAttribute("shop", shop);
        request.getRequestDispatcher("/user-template/admin-shop-infoShop.jsp").forward(request, response);
        DB.me().insert(new Log(Log.ALERT,acc,"infoShop","Truy cập trang thông tin cửa hàng",0,ipAddress));

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
