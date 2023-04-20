package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Servlet", value = "/profile")
public class UserProfile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        if (command.equals("out")) {
            session.invalidate();
            request.getRequestDispatcher("home").forward(request,response);
        }
        if(command.equals("profile")){
            request.getRequestDispatcher("user-template/profile.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        if (command.equals("edit")) {
            String idA = request.getParameter("idA");
            String email = request.getParameter("email");
            String fullName = request.getParameter("fullName");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            AccountService.editProfileAcountById(email, phone, fullName, address, idA);
        }

    }

}
