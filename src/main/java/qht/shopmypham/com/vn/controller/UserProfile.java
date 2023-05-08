package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.been.Log;
import qht.shopmypham.com.vn.db.DB;
import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.CheckOut;
import qht.shopmypham.com.vn.model.ListProductByCheckOut;
import qht.shopmypham.com.vn.service.AccountService;
import qht.shopmypham.com.vn.service.CheckOutService;
import qht.shopmypham.com.vn.service.ProductCheckoutService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;
import java.util.List;

@WebServlet(name = "Servlet", value = "/profile")
public class UserProfile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        if (command.equals("out")) {
            session.invalidate();
            request.getRequestDispatcher("home").forward(request,response);
            DB.me().insert(new Log(Log.INFO,acc,"out","Đăng xuất",0,ipAddress));
        }
        if(command.equals("profile")){
            request.getRequestDispatcher("user-template/profile.jsp").forward(request,response);
            DB.me().insert(new Log(Log.INFO,acc,"profile","Truy cập trang profile",0,ipAddress));
        }
        if(command.equals("order-detail")){
            String idCk = request.getParameter("idCk");
            CheckOut checkOut = CheckOutService.getCheckOutByIdCk(idCk);
            List<ListProductByCheckOut> listProductByCheckOuts = ProductCheckoutService.getProductProductCheckoutByIdCk(idCk);
            request.setAttribute("listProductByCheckOuts",listProductByCheckOuts);
            request.setAttribute("checkOut",checkOut);
            request.getRequestDispatcher("user-template/order-detail.jsp").forward(request,response);
            DB.me().insert(new Log(Log.INFO,acc,"profile/order-detail","Truy cập trang chi tiết đơn hàng ",0,ipAddress));

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        if (command.equals("edit")) {
            Account acc = (Account) request.getSession().getAttribute("a");
//            int idA = Integer.parseInt(request.getParameter("idA"));
            String email = request.getParameter("email");
            String fullName = request.getParameter("fullName");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            AccountService.editProfileAcountById(email, phone, fullName, address, String.valueOf(acc.getIdA()));
            DB.me().insert(new Log(Log.WARNING,acc,"profile","Chỉnh sửa profile",0,ipAddress));
        }

    }

}
