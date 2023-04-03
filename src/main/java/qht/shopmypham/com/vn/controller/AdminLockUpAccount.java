package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.service.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminLockUpAccount", value = "/admin-account-lockup")
public class AdminLockUpAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idA = request.getParameter("idA");
        Account account = AccountService.getAccountById(idA);
        if (account.getStatus()==1) {
            AccountService.lockUpAcountById("0", idA);
        }
        if (account.getStatus()==0) {
            AccountService.lockUpAcountById("1", idA);
        }
        response.sendRedirect("admin-account-list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
