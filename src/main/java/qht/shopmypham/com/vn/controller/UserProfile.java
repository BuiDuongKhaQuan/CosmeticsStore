package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.CheckOut;
import qht.shopmypham.com.vn.model.ListProductByCheckOut;
import qht.shopmypham.com.vn.service.AccountService;
import qht.shopmypham.com.vn.service.CheckOutService;
import qht.shopmypham.com.vn.service.ProductCheckoutService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Servlet", value = "/profile")
public class UserProfile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        if (command.equals("out")) {
            session.invalidate();
            request.getRequestDispatcher("home").forward(request,response);
        }
        if(command.equals("profile")){
            request.getRequestDispatcher("user-template/profile.jsp").forward(request,response);
        }
        if(command.equals("order-detail")){
            String idCk = request.getParameter("idCk");
            CheckOut checkOut = CheckOutService.getCheckOutByIdCk(idCk);
            List<ListProductByCheckOut> listProductByCheckOuts = ProductCheckoutService.getProductProductCheckoutByIdCk(idCk);
            request.setAttribute("listProductByCheckOuts",listProductByCheckOuts);
            request.setAttribute("checkOut",checkOut);
            request.getRequestDispatcher("user-template/order-detail.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        if (command.equals("edit")) {
            String idA = request.getParameter("idA");
            String email = request.getParameter("email");
            String fullName = request.getParameter("fullName");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            AccountService.editProfileAcountById(email, phone, fullName, address, idA);
        }

    }

}
