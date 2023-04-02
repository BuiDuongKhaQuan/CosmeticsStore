package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.FAQs;
import qht.shopmypham.com.vn.service.FAQsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminAnsFaqs", value = "/admin-faqs-edit")
public class AdminEditFaqs extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idF = request.getParameter("idF");
        FAQs faQs = FAQsService.getFQAsById(idF);
        request.setAttribute("faQs", faQs);
        request.getRequestDispatcher("admin-faqs-edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String idF = request.getParameter("idF");
        String question = request.getParameter("question");
        String answer = request.getParameter("answer");
        FAQsService.editFQAsById(idF, question, answer,String.valueOf(acc.getIdA()));
        response.sendRedirect("admin-faqs-list");
    }
}
