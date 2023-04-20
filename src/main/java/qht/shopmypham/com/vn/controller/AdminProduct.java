package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ProductAdminController", value = "/admin-product")
public class AdminProduct extends HttpServlet {
    String error404 = "404.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = ProductService.getAllProduct();
        List<Categories> listCategories = CategoryService.getAllCategory();
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.getProductManage() == 1) {
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
                    Product product = ProductService.getProductById(Integer.parseInt(IdP));
                    request.setAttribute("product", product);
                    request.setAttribute("listCategories", listCategories);
                    request.getRequestDispatcher("/admin-template/ec-product-edit.jsp").forward(request, response);
                }
                if (command.equals("add")) {
                    request.setAttribute("listCategories", listCategories);
                    request.setAttribute("img", "assets/images/sm/img.png");
                    request.getRequestDispatcher("/admin-template/ec-product-add.jsp").forward(request, response);
                }
                if (command.equals("delete")) {
                    String IdP = request.getParameter("IdP");
                    ProductService.deleteProductById(IdP);
                    response.sendRedirect("admin-product?command=list");
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
            if (acc.getProductManage() == 1) {
                String command = request.getParameter("command");
                String idP = request.getParameter("idP");
                String name = request.getParameter("name");
                String price = request.getParameter("price");
                String quantity = request.getParameter("quantity");
                String description = request.getParameter("description");
                String trademark = request.getParameter("trademark");
                String idC = request.getParameter("idC");

                if (command.equals("edit")) {
                    ProductService.editProductById(name, trademark, description, idC, price, quantity, idP);
                }
                if (command.equals("add")) {
                    int id = ProductService.getAllProduct().get(ProductService.getAllProduct().size() - 1).getIdP() + 1;
                    ProductService.addProduct(String.valueOf(id), name, trademark, description, idC, price, quantity);
                    Map<String, String> mapImg = (Map<String, String>) request.getSession().getAttribute("imgs");

                    for (Map.Entry<String, String> entry : mapImg.entrySet()) {
                        ProductService.addImageByIdP(String.valueOf(id), entry.getKey());
                    }
                }
                if (command.equals("promotion")) {
                    String date1 = request.getParameter("date1");
                    String date2 = request.getParameter("date2");
                    String price1 = request.getParameter("price");
                    String idP1 = request.getParameter("idP");

                    ProductService.addProductPromotion(idP1, price1, date1, date2);
                }
                if (command.equals("new")) {
                    String date_new = request.getParameter("date-new");
                    String idP1 = request.getParameter("idP");

                    ProductService.addProductNew(idP1, date_new);
                }
            } else {
                response.sendRedirect(error404);            }
        }
    }
}
