package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.service.CategoryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteCategory", value = "/admin-product-category-edit")
public class AdminEditCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idC = request.getParameter("idC");
        Categories categories = CategoryService.getCategoriesById(idC);
        request.setAttribute("category", categories);
        request.getRequestDispatcher("admin-product-category-edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idC = request.getParameter("idC");
        String img = request.getParameter("img");
        String name = request.getParameter("name");
        CategoryService.editCategoryById(idC, img, name);
        response.sendRedirect("admin-product-list");
    }
}
