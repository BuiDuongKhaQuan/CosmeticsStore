package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Subscibe;
import qht.shopmypham.com.vn.service.SubscibeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminSearchSubrise", value = "/admin-subrise-search")
public class AdminSearchSubrise extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        List<Subscibe> subscibe = SubscibeService.getSubscibeByEmail1(email);

        request.setAttribute("txtSearch1", email);
        request.setAttribute("active7", "active");
        request.setAttribute("subscibe", subscibe);
        request.getRequestDispatcher("admin-subrise-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
