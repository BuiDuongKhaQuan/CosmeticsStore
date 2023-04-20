package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.CheckOut;
import qht.shopmypham.com.vn.model.ListProductByCart;
import qht.shopmypham.com.vn.model.Payment;
import qht.shopmypham.com.vn.service.*;
import qht.shopmypham.com.vn.tools.DateUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CheckOutController", value = "/checkout")
public class UserCheckOut extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Payment> paymentList = PaymentService.getAllPayment();
        Account acc = (Account) request.getSession().getAttribute("a");
        List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));
        request.setAttribute("list", list);
        request.setAttribute("activePage", "active");
        request.setAttribute("paymentList", paymentList);
        request.getRequestDispatcher("/user-template/checkout.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String note = request.getParameter("note");
        String payment = request.getParameter("payment");
        String nowDate = DateUtil.getDateNow();
        List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));

        CheckOutService.addCheckOutByIdA(phone, address, payment, name, note, String.valueOf(acc.getIdA()), nowDate);
        List<CheckOut> checkOutList = CheckOutService.getCheckOutByIdA(String.valueOf(acc.getIdA()));
        String idCk = String.valueOf(checkOutList.get(checkOutList.size() - 1).getIdCk());
        for (ListProductByCart l : list) {
            ProductService.upQuantityProductById(String.valueOf(ProductService.getProductById(l.getIdP()).getQuantity() - l.getQuantity()), String.valueOf(l.getIdP()));
            ProductCheckoutService.addProductToProductCheckout(idCk, String.valueOf(l.getIdP()), String.valueOf(l.getQuantity()));
        }
        CartService.deleteProductByIda(String.valueOf(acc.getIdA()));
        request.setAttribute("success", "Đặt hàng thành công, mời bạn tiếp tục mua hàng!");
        List<Payment> paymentList = PaymentService.getAllPayment();
        List<ListProductByCart> list1 = new ArrayList<>();
        request.setAttribute("list", list1);
        request.setAttribute("paymentList", paymentList);
        request.getRequestDispatcher("/user-template/checkout.jsp").forward(request, response);
    }
}
