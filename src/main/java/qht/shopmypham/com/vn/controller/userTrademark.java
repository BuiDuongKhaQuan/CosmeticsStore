package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.model.Trademark;
import qht.shopmypham.com.vn.service.ProductService;
import qht.shopmypham.com.vn.service.TrademarkService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "userTrademark", value = "/trademark")
public class userTrademark extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idT = request.getParameter("idT");
        List<Product>productList = ProductService.getProductByIdT(idT);
        Trademark trademark = TrademarkService.getTrademarkByIdT(idT);
        request.setAttribute("idT", idT);
        request.setAttribute("productListByIdC",productList);
        request.setAttribute("trademark",trademark);
        request.getRequestDispatcher("/user-template/trademark.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
