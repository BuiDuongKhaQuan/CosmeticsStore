package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.been.Log;
import qht.shopmypham.com.vn.db.DB;
import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.service.LoginService;
import qht.shopmypham.com.vn.tools.Encode;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;

@WebServlet(name = "LoginController", value = "/login")
public class UserLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("user");
        String passWord = request.getParameter("pass");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        Account acc = LoginService.getAccout(userName, Encode.enCodeMD5(passWord));
        if (acc == null) {
            request.setAttribute("mess", "Sai user hoặc mật khẩu!");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            DB.me().insert(new Log(Log.WARNING,acc,"login","Login sai user hoặc mật khẩu",0,ipAddress));
        } else if (acc.getStatus() == 0) {
            request.setAttribute("mess1", "Tài khoản của bạn đã bị khóa, vui lòng liên hệ với chúng tôi qua 'khaquan9a2.2016@gmail.com' !");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            DB.me().insert(new Log(Log.WARNING,acc,"login","Login tài khoản của bạn đã bị khóa",0,ipAddress));

        } else {
            HttpSession session = request.getSession();
            session.setAttribute("a", acc);
            response.sendRedirect("home");
            DB.me().insert(new Log(Log.INFO,acc,"login","Login thành công",0,ipAddress));

        }

    }
}
