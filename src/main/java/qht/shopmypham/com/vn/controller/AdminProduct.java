package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductAdminController", value = "/admin-product")
public class AdminProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = ProductService.getAllProduct();
        List<Categories> listCategories = CategoryService.getAllCategory();
        String command = request.getParameter("command");

        if (command.equals("dashboard")) {
            request.getRequestDispatcher("/admin-template/ec-dashboard.jsp").forward(request, response);
        }
        if (command.equals("products")) {
            request.setAttribute("listCategories", listCategories);
            request.setAttribute("productList", productList);
            request.getRequestDispatcher("/admin-template/ec-product.jsp").forward(request, response);
        }
        if (command.equals("list")) {
            request.setAttribute("listCategories", listCategories);
            request.setAttribute("productList", productList);
            request.getRequestDispatcher("/admin-template/ec-product-List.jsp").forward(request, response);
        }
        if (command.equals("edit")) {
            String IdP = request.getParameter("IdP");
            Product product = ProductService.getProductById(IdP);
            request.setAttribute("product", product);
            request.setAttribute("listCategories", listCategories);
            request.getRequestDispatcher("/admin-template/ec-product-edit.jsp").forward(request, response);
        }
        if (command.equals("add")) {
            request.setAttribute("listCategories", listCategories);
            request.setAttribute("img","assets/images/sm/img.png");
            request.getRequestDispatcher("/admin-template/ec-product-add.jsp").forward(request, response);
        }
        if (command.equals("delete")) {
            String IdP = request.getParameter("IdP");
            ProductService.deleteProductById(IdP);
            response.sendRedirect("admin-product?command=list");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        String IdP = request.getParameter("IdP");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");
        String description = request.getParameter("description");
        String IdC = request.getParameter("IdC");
        String img1 = request.getParameter("img1");
        String img2 = request.getParameter("img2");
        String img3 = request.getParameter("img3");
        String img4 = request.getParameter("img4");

        if (command.equals("edit")) {
            ProductService.editProductById(name, img1, img2, img3, img4, "0", "1", "0", "1", description, IdC, price, quantity, IdP);
        }
        if (command.equals("add")) {
            System.out.println(command);
            ProductService.addProduct(name, img1, img2, img3, img4, "0", "1", "0", "1", description, IdC, price, quantity);
        }
        if (command.equals("delete")) {
            ProductService.deleteProductById(IdP);
        }
        response.sendRedirect("admin-product?command=list");

    }
}
