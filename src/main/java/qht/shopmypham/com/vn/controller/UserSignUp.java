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

@WebServlet(name = "SignupController", value = "/signup")
public class UserSignUp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        String user = request.getParameter("user");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String re_password = request.getParameter("repass");
        LoginService los = new LoginService();
        Account acc = los.checkUser(user);
        if (user == null || password == null || re_password == null) {
            response.sendRedirect("/login.jsp");
            DB.me().insert(new Log(Log.ALERT,acc,"signup","Đăng kí không thành công, chưa điền đầy đủ thông tin",0,ipAddress));
        } else {
            if (acc == null) {
                if (password.equals(re_password)) {
                    los.signUp(user, Encode.enCodeMD5(password),email);
                    request.setAttribute("success","Đăng ký thành công, mời bạn đăng nhập!");
                    request.getRequestDispatcher("/login.jsp").forward(request,response);
                    DB.me().insert(new Log(Log.ALERT,acc,"signup","Đăng kí thành công",0,ipAddress));
                } else {
                    response.sendRedirect("/login.jsp");
                    DB.me().insert(new Log(Log.ALERT,acc,"signup","Đăng kí không thành công",0,ipAddress));

                }
            } else {
                response.sendRedirect("/login.jsp");
                DB.me().insert(new Log(Log.ALERT,acc,"signup","Truy cập trang đăng kí",0,ipAddress));
            }
        }
    }
}
