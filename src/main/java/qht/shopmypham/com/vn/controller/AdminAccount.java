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
                if (command.equals("dashboard")) {
                    request.getRequestDispatcher("/admin-template/ac-dashboard.jsp").forward(request, response);
                }
                if (command.equals("profile")) {
                    Account account = AccountService.getAccountById(String.valueOf(acc.getIdA()));
                    request.setAttribute("acc",account);
                    request.getRequestDispatcher("/admin-template/profile.jsp").forward(request, response);
                }
                if (command.equals("accounts")) {
                    request.setAttribute("accountList", accountList);
                    request.getRequestDispatcher("/admin-template/ac-account.jsp").forward(request, response);
                }
                if (command.equals("list")) {
                    request.setAttribute("accountList", accountList);
                    request.getRequestDispatcher("/admin-template/ac-account-list.jsp").forward(request, response);
                }
                if (command.equals("edit")) {
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
                if (command.equals("edit")) {
                    String idA = request.getParameter("idA");
                    String fullName = request.getParameter("fullName");
                    String email = request.getParameter("email");
                    String phone = request.getParameter("phone");
                    String address = request.getParameter("address");
                    AccountService.updateImgAcountByIdAll(fullName, email, phone, address, idA);
                }
                if (command.equals("editAuthur")) {
                    String idA = request.getParameter("idA");
                    String acountMana = request.getParameter("acountMana");
                    String productMana = request.getParameter("productMana");
                    String orderMana = request.getParameter("orderMana");
                    String blogMana = request.getParameter("blogMana");
                    String genaralMana = request.getParameter("genaralMana");
                    String homeMana = request.getParameter("homeMana");
                    if (acountMana.equals("true")) {
                        AccountService.updateacountMana("1", idA);
                    } else {
                        AccountService.updateacountMana("0", idA);
                    }
                    if (productMana.equals("true")) {
                        AccountService.updateproductMana("1", idA);
                    } else {
                        AccountService.updateproductMana("0", idA);
                    }
                    if (orderMana.equals("true")) {
                        AccountService.updateorderMana("1", idA);
                    } else {
                        AccountService.updateorderMana("0", idA);
                    }
                    if (blogMana.equals("true")) {
                        AccountService.updateblogMana("1", idA);
                    } else {
                        AccountService.updateblogMana("0", idA);
                    }
                    if (genaralMana.equals("true")) {
                        AccountService.updategenaralMana("1", idA);
                    } else {
                        AccountService.updategenaralMana("0", idA);
                    }
                    if (homeMana.equals("true")) {
                        AccountService.updatehomeMana("1", idA);
                    } else {
                        AccountService.updatehomeMana("0", idA);
                    }
                }
            } else {
                response.sendRedirect(error404);
            }
        }
    }
}
