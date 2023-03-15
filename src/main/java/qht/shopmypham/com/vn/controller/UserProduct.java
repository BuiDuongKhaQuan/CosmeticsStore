package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.ListProductByCart;
import qht.shopmypham.com.vn.service.CartService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Categories", value = "/product")
public class UserProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<qht.shopmypham.com.vn.model.Product> listProduct = ProductService.getTop12Product();
        String checked = "checked";

        request.setAttribute("activeProduct", "active");
        request.setAttribute("checked0", checked);
        request.setAttribute("listProduct", listProduct);
        request.getRequestDispatcher("/user-template/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product_id = request.getParameter("IdP");
        String quantity = "1";
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");
        if (acc != null) {
            ListProductByCart byCart = CartService.checkProduct(product_id, String.valueOf(acc.getIdA()));
            if (command.equals("insertItem")) {
                if (byCart == null) {
                    CartService.addProductToCart(product_id, quantity, String.valueOf(acc.getIdA()));
                } else {
                    int quantity1 = byCart.getQuantity();
                    CartService.upQuantityProductListProductByCart(String.valueOf(quantity1 + 1), product_id, String.valueOf(acc.getIdA()));
                }
            }
            if (command.equals("addItem")) {
                if (byCart != null) {
                    int quantity1 = byCart.getQuantity();
                    CartService.upQuantityProductListProductByCart(String.valueOf(quantity1 + 1), product_id, String.valueOf(acc.getIdA()));
                }
            }
            if (command.equals("subItem")) {
                int quantity1 = byCart.getQuantity();
                if (quantity1 > 1) {
                    CartService.upQuantityProductListProductByCart(String.valueOf(quantity1 - 1), product_id, String.valueOf(acc.getIdA()));
                }
                if (quantity1 == 1) {
                    CartService.deleteProductByIdpAndIda(product_id, String.valueOf(acc.getIdA()));
                }
            }
            if (command.equals("deleteItem")) {
                CartService.deleteProductByIdpAndIda(product_id, String.valueOf(acc.getIdA()));
            }

        }
    }
}
