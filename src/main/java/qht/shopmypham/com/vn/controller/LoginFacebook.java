package qht.shopmypham.com.vn.controller;

import com.restfb.types.User;
import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.RestFB;
import qht.shopmypham.com.vn.service.LoginService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginFB", value = "/login-facebook")
public class LoginFacebook extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginFacebook() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");

        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            dis.forward(request, response);
        } else {
            String accessToken = RestFB.getToken(code);
            User user = RestFB.getUserInfo(accessToken);
            Account acc = LoginService.checkIdfacebook(user.getId());
            if (acc == null) {
                LoginService.signUpFacebook(user.getId(), user.getName());
                acc = LoginService.getAccoutFacebook(user.getId());
                HttpSession session = request.getSession();
                session.setAttribute("a", acc);
                response.sendRedirect("home");
            } else {
                acc = LoginService.getAccoutFacebook(user.getId());
                HttpSession session = request.getSession();
                session.setAttribute("a", acc);
                response.sendRedirect("home");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
