package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.FAQs;
import qht.shopmypham.com.vn.service.FAQsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FAQsController", value = "/faqs")
public class UserFAQs extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<FAQs> FAQsList = FAQsService.getAllFQAsBy1();
        request.setAttribute("FAQsList", FAQsList);
        request.getRequestDispatcher("/user-template/FAQs.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
