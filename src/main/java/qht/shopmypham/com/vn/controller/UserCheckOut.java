package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.been.Log;
import qht.shopmypham.com.vn.db.DB;
import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.*;
import qht.shopmypham.com.vn.tools.DateUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CheckOutController", value = "/checkout")
public class UserCheckOut extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Payment> paymentList = PaymentService.getAllPayment();
        Account acc = (Account) request.getSession().getAttribute("a");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));
        request.setAttribute("list", list);
        request.setAttribute("activePage", "active");
        request.setAttribute("paymentList", paymentList);
        request.getRequestDispatcher("/user-template/checkout.jsp").forward(request, response);
        DB.me().insert(new Log(Log.INFO,acc,"checkout","Truy cập trang thanh toán",0, ipAddress));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        HttpSession session = request.getSession();
        Voucher voucher = (Voucher) request.getSession().getAttribute("voucher");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String note = request.getParameter("note");
        String payment = request.getParameter("payment");
        String nowDate = DateUtil.getDateNow();
        List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));
        if (voucher!=null){
            CheckOutService.addCheckOutByIdA(phone, address, payment, name, note, String.valueOf(acc.getIdA()), String.valueOf(voucher.getId()), nowDate);
        } else {
            CheckOutService.addCheckOutByIdA(phone, address, payment, name, note, String.valueOf(acc.getIdA()),null, nowDate);
        }
        session.removeAttribute("voucher");
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
        DB.me().insert(new Log(Log.ALERT,acc,"checkout","Đặt hàng thành công",0, ipAddress));
    }
}
