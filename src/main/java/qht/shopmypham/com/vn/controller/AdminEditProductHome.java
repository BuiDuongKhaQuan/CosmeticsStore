package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Offer;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.ShopService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeProductController", value = "/admin-shop-product")
public class AdminEditProductHome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Offer> offerList = ShopService.getOffer();
        List<Categories> categoriesList = CategoryService.getAllCategory();
        request.setAttribute("active3", "active");

        request.setAttribute("categoriesList", categoriesList);
        request.setAttribute("offerList", offerList);
        request.getRequestDispatcher("admin-shop-product-edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idOf = request.getParameter("idOf");
        String idC1 = request.getParameter("category1");
        String idC2 = request.getParameter("category2");
        String name = request.getParameter("name");
        ShopService.editOfferByIdOf(idOf,name,idC1,idC2);
        response.sendRedirect("admin-shop-product");
    }
}
