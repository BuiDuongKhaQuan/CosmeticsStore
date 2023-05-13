package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Voucher;
import qht.shopmypham.com.vn.service.VoucherService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminVoucher", value = "/AdminVoucher")
public class AdminVoucher extends HttpServlet {
    String error404 = "404.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String command = request.getParameter("command");
        int idA = 0 ;
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.powerAccount().getVoucherManage() == 1) {
                idA = acc.getId();
                if (command.equals("list")) {
                    List<Voucher> voucherList = VoucherService.getAllVoucher();
                    request.setAttribute("voucherList", voucherList);
                    request.getRequestDispatcher("admin-template/vc-voucher-list.jsp").forward(request, response);
                }
                if (command.equals("edit")) {
                    String id = request.getParameter("id");
                    Voucher voucher = VoucherService.getVoucherById(id);
                    request.setAttribute("voucher", voucher);
                    request.getRequestDispatcher("admin-template/vc-voucher-edit.jsp").forward(request, response);
                }
                if (command.equals("add")) {
                    request.getRequestDispatcher("admin-template/vc-voucher-add.jsp").forward(request, response);
                }
                if (command.equals("delete")) {
                    String id = request.getParameter("id");
                    VoucherService.deleteVoucherById(id);
                    response.sendRedirect("AdminVoucher?command=list");
                }
            } else {
                response.sendRedirect(error404);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String command = request.getParameter("command");
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.powerAccount().getBlogManage() == 1) {
                if (command.equals("edit")) {
                    String id = request.getParameter("id");
                    String name = request.getParameter("name");
                    String price = request.getParameter("price");
                    String quantity = request.getParameter("quantity");
                    String status = request.getParameter("status");
                    String code = request.getParameter("code");
                    VoucherService.editVouchertById(id, name, price, status, quantity, code);
                }
                if (command.equals("add")) {
                    String name = request.getParameter("name");
                    String price = request.getParameter("price");
                    String quantity = request.getParameter("quantity");
                    String code = request.getParameter("code");
                    VoucherService.addVoucher(price, quantity, name, code);
                }
                if (command.equals("delete")) {
                    String id = request.getParameter("id");
                    VoucherService.deleteVoucherById(id);
                }
            } else {
                response.sendRedirect(error404);
            }
        }
    }
}
