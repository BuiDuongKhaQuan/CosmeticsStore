package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.CheckOutService;
import qht.shopmypham.com.vn.service.ProductCheckoutService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet(name = "AdminOrder", value = "/admin-order")
public class AdminOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CheckOut> checkOuts = CheckOutService.getAllCheckOut();
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");
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
            CheckOut checkOut =  CheckOutService.getCheckOutByIdCk(idCk);
            request.setAttribute("checkOut", checkOut);
            request.getRequestDispatcher("/admin-template/order-edit.jsp").forward(request, response);
        }
        if(command.equals("detail")){
            String idCk = request.getParameter("IdCk");
            List<ListProductByCheckOut> listProductByCheckOuts = ProductCheckoutService.getProductProductCheckoutByIdCk(idCk);
            CheckOut checkOut = CheckOutService.getCheckOutByIdCk(idCk);
            request.setAttribute("checkOut",checkOut);
            request.setAttribute("listProductByCheckOuts",listProductByCheckOuts);
            request.getRequestDispatcher("admin-template/order-detail.jsp").forward(request,response);
        }
        if (command.equals("ok")){
            String idCk = request.getParameter("idCk");
            Date date = new Date();
            CheckOutService.confirmCheckOutByidCk(idCk, String.valueOf(acc.getIdA()), date.toString());
            request.getRequestDispatcher("admin-order").forward(request, response);
        }
        if (command.equals("confirm")){
            String idCk = request.getParameter("idCk");
            Date date = new Date();
            CheckOutService.completeCheckOutByidCk(idCk, String.valueOf(acc.getIdA()), date.toString());
            request.getRequestDispatcher("admin-order").forward(request, response);
        }
        if (command.equals("cance")){
            String idCk = request.getParameter("idCk");
            CheckOutService.canceCheckOutByidCk(idCk, String.valueOf(acc.getIdA()));
            request.getRequestDispatcher("admin-order").forward(request, response);
        }
        if (command.equals("add")) {
            request.getRequestDispatcher("/admin-template/order-add.jsp").forward(request, response);
        }
        if (command.equals("delete")) {
            String IdCk = request.getParameter("IdCk");
            CheckOutService.deleteCheckOutById(IdCk);
            response.sendRedirect("admin-order?command=list");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        String IdCk = request.getParameter("IdCk");
        Account account = (Account) request.getSession().getAttribute("a");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String idPm = request.getParameter("idPm");
        String idStatus = request.getParameter("idStatus");
        String name = request.getParameter("name");
        String orderDate = request.getParameter("orderDate");
        String DateConfirm = request.getParameter("DateConfirm");
        String DateRecieded = request.getParameter("DateRecieded");
        String note = request.getParameter("note");
        if (command.equals("edit")) {
            CheckOutService.editCheckOutByidCk(IdCk, idStatus, String.valueOf(account.getIdA()), orderDate, DateConfirm, DateRecieded);
        }
        if (command.equals("add")) {
            CheckOutService.addCheckOutByIdA(phone, address, idPm, name, note, String.valueOf(account.getIdA()), orderDate);
        }
        if (command.equals("delete")) {
            CheckOutService.deleteCheckOutById(IdCk);
        }
        response.sendRedirect("admin-order?command=list");

    }
}