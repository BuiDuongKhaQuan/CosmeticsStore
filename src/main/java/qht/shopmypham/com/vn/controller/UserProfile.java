package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProfileController", value = "/profile")
public class UserProfile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        String url = "/user-template/profile.jsp";
        try {
            switch (command) {
                case "edit":
                    String id = request.getParameter("idAccount");
                    String email = request.getParameter("email");
                    String fullName = request.getParameter("fullName");
                    String address = request.getParameter("address");
                    String phone = request.getParameter("phone");

                    AccountService.editProfileAcountById(email, phone, fullName, address, id);
                    url = "profile.jsp";
                    break;
                case "logout":
                    session.invalidate();
                    url = "home";
                    break;

                default:

                    break;
            }
        } catch (Exception e) {

        }
        request.getRequestDispatcher(url).forward(request, response);
    }
}
