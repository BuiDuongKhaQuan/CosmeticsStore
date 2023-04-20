package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.BranchShop;
import qht.shopmypham.com.vn.service.ShopService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditShopBranchShopController", value = "/admin-shop-edit-branch")
public class AdminEditBranch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idB = request.getParameter("idB");
        BranchShop branchShop = ShopService.getBranchShopByIdB(idB);

        request.setAttribute("branchShop", branchShop);
        request.getRequestDispatcher("admin-shop-edit-branch.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idB = request.getParameter("idB");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String text = request.getParameter("text");
        ShopService.editBranchShopByIdB(name, address, phone, email, text, idB);
        response.sendRedirect("admin-shop-list-branch");
    }
}
