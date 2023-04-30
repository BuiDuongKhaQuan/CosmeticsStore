package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.CheckOutService;
import qht.shopmypham.com.vn.service.ProductCheckoutService;
import qht.shopmypham.com.vn.tools.DateUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "AdminOrder", value = "/admin-order")
public class AdminOrder extends HttpServlet {
    String error404 = "404.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CheckOut> checkOuts = CheckOutService.getAllCheckOut();
        Collections.reverse(checkOuts);
        String command = request.getParameter("command");
        String nowDate = DateUtil.getDateNow();
        Account acc = (Account) request.getSession().getAttribute("a");
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.getOrderManage() == 1) {
                if (command.equals("dashboard")) {
                    request.getRequestDispatcher("/admin-template/order-dashboard.jsp").forward(request, response);
                }
                if (command.equals("orders")) {
                    request.setAttribute("checkOuts", checkOuts);
                    request.getRequestDispatcher("/admin-template/order.jsp").forward(request, response);
                }
                if (command.equals("list")) {
                    request.setAttribute("checkOuts", checkOuts);
                    request.getRequestDispatcher("/admin-template/order-List.jsp").forward(request, response);
                }
                if (command.equals("edit")) {
                    String idCk = request.getParameter("IdCk");
                    CheckOut checkOut = CheckOutService.getCheckOutByIdCk(idCk);
                    request.setAttribute("checkOut", checkOut);
                    request.getRequestDispatcher("/admin-template/order-edit.jsp").forward(request, response);
                }
                if (command.equals("detail")) {
                    String idCk = request.getParameter("IdCk");
                    List<ListProductByCheckOut> listProductByCheckOuts = ProductCheckoutService.getProductProductCheckoutByIdCk(idCk);
                    CheckOut checkOut = CheckOutService.getCheckOutByIdCk(idCk);
                    request.setAttribute("checkOut", checkOut);
                    request.setAttribute("listProductByCheckOuts", listProductByCheckOuts);
                    request.getRequestDispatcher("admin-template/order-detail.jsp").forward(request, response);
                }
                if (command.equals("ok")) {
                    String idCk = request.getParameter("idCk");
                    CheckOutService.confirmCheckOutByidCk(idCk, String.valueOf(acc.getIdA()), nowDate);
                    response.sendRedirect("admin-order?command=list");
                }
                if (command.equals("confirm")) {
                    String idCk = request.getParameter("idCk");
                    CheckOutService.completeCheckOutByidCk(idCk, String.valueOf(acc.getIdA()), nowDate);
                    response.sendRedirect("admin-order?command=list");
                }
                if (command.equals("cance")) {
                    String idCk = request.getParameter("idCk");
                    CheckOutService.canceCheckOutByidCk(idCk, String.valueOf(acc.getIdA()));
                    response.sendRedirect("admin-order?command=list");
                }
                if (command.equals("delete")) {
                    String IdCk = request.getParameter("IdCk");
                    CheckOutService.deleteCheckOutById(IdCk);
                    response.sendRedirect("admin-order?command=list");
                }
            } else {
                response.sendRedirect(error404);            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.getOrderManage() == 1) {
                String command = request.getParameter("command");
                String idCk = request.getParameter("idCk");
                String phone = request.getParameter("phone");
                String address = request.getParameter("address");
                String name = request.getParameter("name");
                String note = request.getParameter("note");
                if (command.equals("edit")) {
                    CheckOutService.editCheckOut(idCk, String.valueOf(acc.getIdA()), note, phone, address, name);
                }
                response.sendRedirect("admin-order?command=list");
            } else {
                response.sendRedirect(error404);            }
        }
    }
}