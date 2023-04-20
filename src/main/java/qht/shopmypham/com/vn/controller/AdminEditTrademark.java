package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Trademark;
import qht.shopmypham.com.vn.service.TrademarkService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Edit-trademark", value = "/admin-shop-edit-trademark")
public class AdminEditTrademark extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idT = request.getParameter("idT");
        Trademark t = TrademarkService.getTrademarkByIdT(idT);
        request.setAttribute("trademark", t);
        request.getRequestDispatcher("admin-shop-edit-trademark.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idT = request.getParameter("idT");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String logo = request.getParameter("logo");
        TrademarkService.editTrademarkById(idT, logo, name, address, phone);
        response.sendRedirect("admin-shop-list-trademark");

    }
}
