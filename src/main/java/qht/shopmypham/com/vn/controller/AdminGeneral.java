package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Contact;
import qht.shopmypham.com.vn.model.Email;
import qht.shopmypham.com.vn.model.FAQs;
import qht.shopmypham.com.vn.service.ContactService;
import qht.shopmypham.com.vn.service.FAQsService;
import qht.shopmypham.com.vn.tools.EmailUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminGeneral", value = "/admin-general")
public class AdminGeneral extends HttpServlet {
    String error404 = "404.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.getGeneralManage() == 1) {
                if (command.equals("list")) {
                    List<Contact> contact = ContactService.getAllContact();
                    request.setAttribute("contact", contact);
                    request.getRequestDispatcher("/admin-template/co-contact.jsp").forward(request, response);
                }
                if (command.equals("question")) {
                    List<FAQs> faQsList = FAQsService.getAllFQAs();

                    request.setAttribute("faQsList", faQsList);
                    request.getRequestDispatcher("/admin-template/co-Faqs.jsp").forward(request, response);
                }
                if (command.equals("addQ")) {

                    request.getRequestDispatcher("/admin-template/co-add-Faqs.jsp").forward(request, response);

                }
            } else {
                response.sendRedirect(error404);            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.getGeneralManage() == 1) {
                if (command.equals("answer")) {
                    String idCt = request.getParameter("idCt");
                    String reply = request.getParameter("reply");
                    System.out.println(reply);
                    try {
                        Contact contact = ContactService.getContactById(idCt);
                        Email email1 = new Email();
                        email1.setFrom("khaquan9a2.2016@gmail.com");
                        email1.setFromPasswork("xowopqrkiyjsdsbf");
                        email1.setTo(contact.getEmail());
                        email1.setSubject("Cửa hàng Mỹ Phẩm QST");
                        StringBuffer sb = new StringBuffer();
                        sb.append("Xin chào " + contact.getFullName() + "\n");
                        sb.append("Cám ơn bạn đã liên hệ với chúng tôi. \n");
                        sb.append(reply + "\n");
                        sb.append("Thân chào \n");
                        sb.append("Nhân viên chăm sóc khách hàng \n");
                        email1.setContent(sb.toString());
                        EmailUtil.send(email1);
                        ContactService.editContactById(idCt);
                    } catch (Exception e) {
                        request.setAttribute("message", e.getMessage());
                    }
                }
                if (command.equals("edit")) {
                    String question = request.getParameter("question");
                    String idF = request.getParameter("idF");
                    String answer = request.getParameter("answer");
                    String status = request.getParameter("status");
                    FAQsService.editFQAsById(idF, question, answer, status);
                }
                System.out.println(command);
                if (command.equals("add")) {
                    String question = request.getParameter("question");
                    String answer = request.getParameter("answer");
                    String status = request.getParameter("status");
                    FAQsService.addFQAs(question, answer, status);
                }
            } else {
                response.sendRedirect(error404);            }
        }
    }
}
