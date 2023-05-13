package qht.shopmypham.com.vn.controller;


import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.service.AccountService;
import qht.shopmypham.com.vn.service.LogService;
import qht.shopmypham.com.vn.tools.DateUtil;

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
        String ipAddress = request.getRemoteAddr();
        String url = request.getRequestURI();
        String dateNow = DateUtil.getDateNow();
        int idA = 0;
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.powerAccount().getAccountManage() == 1) {
                idA = acc.getId();
                List<Account> accountList = AccountService.getAllAccount();
                String command = request.getParameter("command");
                if (command.equals("dashboard")) {
                    request.getRequestDispatcher("/admin-template/ac-dashboard.jsp").forward(request, response);
                    LogService.addLog(idA, 4, 1, ipAddress, url, "Truy cập trang tổng quan tài khoản", dateNow);
                }
                if (command.equals("profile")) {
                    Account account = acc.getAccount();
                    request.setAttribute("acc", account);
                    request.getRequestDispatcher("/admin-template/profile.jsp").forward(request, response);
                    LogService.addLog(idA, 4, 1, ipAddress, url, "Truy cập trang cá nhân", dateNow);
                }
                if (command.equals("list")) {
                    request.setAttribute("accountList", accountList);
                    request.getRequestDispatcher("/admin-template/ac-account-list.jsp").forward(request, response);
                    LogService.addLog(idA, 4, 1, ipAddress, url, "Truy cập trang danh sách tài khoản", dateNow);

                }
                if (command.equals("edit")) {
                    String IdA = request.getParameter("IdA");
                    Account account = AccountService.getAccountById(Integer.parseInt(IdA));
                    request.setAttribute("account", account);
                    request.getRequestDispatcher("/admin-template/ac-account-edit.jsp").forward(request, response);
                    LogService.addLog(idA, 4, 1, ipAddress, url, "Truy cập trang chỉnh sửa tài khoản", dateNow);
                }
                if (command.equals("delete")) {
                    String IdA = request.getParameter("IdA");
                    AccountService.deleteAccountById(IdA);
                    response.sendRedirect("admin-account?command=list1");
                    LogService.addLog(idA, 3, 3, ipAddress, url, "Xóa tài khoản" + IdA, dateNow);
                }
            } else {
                response.sendRedirect(error404);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String ipAddress = request.getRemoteAddr();
        String url = request.getRequestURI();
        String dateNow = DateUtil.getDateNow();
        int idA = 0;
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.powerAccount().getAccountManage() == 1) {
                idA = acc.getId();
                String command = request.getParameter("command");
                if (command.equals("edit")) {
                    String idA1 = request.getParameter("idA");
                    String fullName = request.getParameter("fullName");
                    String email = request.getParameter("email");
                    String phone = request.getParameter("phone");
                    String address = request.getParameter("address");
                    AccountService.updateImgAcountByIdAll(fullName, email, phone, address, idA1);
                    LogService.addLog(idA, 2, 2, ipAddress, url, "Chỉnh sửa tài khoản" + idA1, dateNow);
                }
                if (command.equals("editAuthur")) {
                    String idA1 = request.getParameter("idA");
                    String acountMana = request.getParameter("acountMana");
                    String productMana = request.getParameter("productMana");
                    String orderMana = request.getParameter("orderMana");
                    String blogMana = request.getParameter("blogMana");
                    String genaralMana = request.getParameter("genaralMana");
                    String homeMana = request.getParameter("homeMana");
                    if (acountMana.equals("true")) {
                        AccountService.updateacountMana("1", idA1);
                        LogService.addLog(idA, 2, 3, ipAddress, url, "Cấp quyền quản lý tài khoản", dateNow);
                    } else {
                        AccountService.updateacountMana("0", idA1);
                        LogService.addLog(idA, 2, 3, ipAddress, url, "Thu hồi quyền quản lý tài khoản", dateNow);
                    }
                    if (productMana.equals("true")) {
                        AccountService.updateproductMana("1", idA1);
                        LogService.addLog(idA, 2, 3, ipAddress, url, "Cấp quyền quản lý sản phẩm", dateNow);
                    } else {
                        AccountService.updateproductMana("0", idA1);
                        LogService.addLog(idA, 2, 3, ipAddress, url, "Thu hồi quyền quản lý sản phẩm", dateNow);
                    }
                    if (orderMana.equals("true")) {
                        AccountService.updateorderMana("1", idA1);
                        LogService.addLog(idA, 2, 3, ipAddress, url, "Cấp quyền quản lý đơn hàng", dateNow);
                    } else {
                        AccountService.updateorderMana("0", idA1);
                        LogService.addLog(idA, 2, 3, ipAddress, url, "Thu hồi quyền quản lý đơn hàng", dateNow);
                    }
                    if (blogMana.equals("true")) {
                        AccountService.updateblogMana("1", idA1);
                        LogService.addLog(idA, 2, 3, ipAddress, url, "Cấp quyền quản lý bài viết", dateNow);
                    } else {
                        AccountService.updateblogMana("0", idA1);
                        LogService.addLog(idA, 2, 3, ipAddress, url, "Thu hồi quyền quản lý bài viết", dateNow);
                    }
                    if (genaralMana.equals("true")) {
                        AccountService.updategenaralMana("1", idA1);
                        LogService.addLog(idA, 2, 3, ipAddress, url, "Cấp quyền quản lý chung", dateNow);
                    } else {
                        AccountService.updategenaralMana("0", idA1);
                        LogService.addLog(idA, 2, 3, ipAddress, url, "Thu hồi quyền quản lý chung", dateNow);
                    }
                    if (homeMana.equals("true")) {
                        AccountService.updatehomeMana("1", idA1);
                        LogService.addLog(idA, 2, 3, ipAddress, url, "Cấp quyền quản lý trang chủ", dateNow);
                    } else {
                        AccountService.updatehomeMana("0", idA1);
                        LogService.addLog(idA, 2, 3, ipAddress, url, "Thu hồi quyền quản lý trang chủ", dateNow);
                    }
                }
            } else {
                response.sendRedirect(error404);
            }
        }
    }
}
