package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.service.LogService;
import qht.shopmypham.com.vn.service.LoginService;
import qht.shopmypham.com.vn.tools.DateUtil;
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
        String user = request.getParameter("user");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String re_password = request.getParameter("repass");
        LoginService los = new LoginService();
        Account acc = los.checkUser(user);
        String ipAddress = request.getRemoteAddr();
        String url = request.getRequestURI();
        int level = 1;
        int action = 4;
        String dateNow = DateUtil.getDateNow();
        String content = "";
        int idA = 0;
        if (user == null || password == null || re_password == null) {
            response.sendRedirect("/login.jsp");
        } else {
            if (acc == null) {
                if (password.equals(re_password)) {
                    los.signUp(user, Encode.enCodeMD5(password),email);
                    request.setAttribute("success","Đăng ký thành công, mời bạn đăng nhập!");
                    request.getRequestDispatcher("/login.jsp").forward(request,response);
                    action=5;
                    level=2;
                    content="Đăng kí tài khoản thành công";
                } else {
                    response.sendRedirect("/login.jsp");
                    action=5;
                    level=2;
                    content="Đăng kí tài khoản thất bại";
                }
            } else {
                response.sendRedirect("/login.jsp");
                action=5;
                level=2;
                content="Đăng kí tài khoản thất bại";
            }
        }
        LogService.addLog(idA, action, level, ipAddress, url, content, dateNow);

    }
}
