package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.AccountService;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminAccount", value = "/admin-account")
public class AdminAccount extends HttpServlet {
    String error404 = "404.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.getAccountManage() == 1) {
                List<Account> accountList = AccountService.getAllAccount();
                String command = request.getParameter("command");
                if (command.equals("dashboard1")) {
                    request.getRequestDispatcher("/admin-template/ac-dashboard.jsp").forward(request, response);
                }
                if (command.equals("accounts")) {
                    request.setAttribute("accountList", accountList);
                    request.getRequestDispatcher("/admin-template/ac-account.jsp").forward(request, response);
                }
                if (command.equals("list1")) {
                    request.setAttribute("accountList", accountList);
                    request.getRequestDispatcher("/admin-template/ac-account-list.jsp").forward(request, response);
                }
                if (command.equals("edit1")) {
                    String IdA = request.getParameter("IdA");
                    Account account = AccountService.getAccountById(IdA);
                    request.setAttribute("account", account);
                    request.getRequestDispatcher("/admin-template/ac-account-edit.jsp").forward(request, response);
                }
                if (command.equals("delete")) {
                    String IdA = request.getParameter("IdA");
                    AccountService.deleteAccountById(IdA);
                    response.sendRedirect("admin-account?command=list1");
                }
            } else {
                response.sendRedirect(error404);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.getAccountManage() == 1) {
                String command = request.getParameter("command");
                String idA = request.getParameter("IdA");
                String name = request.getParameter("name");
                String price = request.getParameter("price");
                String quantity = request.getParameter("quantity");
                String description = request.getParameter("description");
                String IdC = request.getParameter("IdC");
                String img1 = request.getParameter("img1");
                String img2 = request.getParameter("img2");
                String img3 = request.getParameter("img3");
                String img4 = request.getParameter("img4");
            } else {
                response.sendRedirect(error404);
            }
        }
    }
}
