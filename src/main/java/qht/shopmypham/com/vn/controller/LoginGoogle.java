package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.GooglePojo;
import qht.shopmypham.com.vn.tools.GoogleUtils;
import qht.shopmypham.com.vn.service.LoginService;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login-google")
public class LoginGoogle extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginGoogle() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");

        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            dis.forward(request, response);
        } else {
            String accessToken = GoogleUtils.getToken(code);
            GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
            Account acc = LoginService.checkIdGoogle(googlePojo.getId());
            if (acc == null) {
                LoginService.signUpGoogle(googlePojo.getId(),googlePojo.getEmail());
                acc = LoginService.getAccoutGoogle(googlePojo.getId());
                HttpSession session = request.getSession();
                session.setAttribute("a", acc);
                response.sendRedirect("home");
            }
            if (acc != null) {
                HttpSession session = request.getSession();
                session.setAttribute("a", acc);
                response.sendRedirect("home");
            }
        }
    }

}
