package qht.shopmypham.com.vn.controller;

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
        List<ListProductByCart> list = acc.getProductCart();
        request.setAttribute("list", list);
        request.setAttribute("activePage", "active");
        request.setAttribute("paymentList", paymentList);
        request.getRequestDispatcher("/user-template/checkout.jsp").forward(request, response);
        String ipAddress = request.getRemoteAddr();
        String url = request.getRequestURI();
        int level = 1;
        int action = 4;
        String dateNow = DateUtil.getDateNow();
        String content = "";
        int idA = 0;
        if (acc != null) idA = acc.getId();
        content="Truy cập trang thanh toán";
        LogService.addLog(idA, action, level, ipAddress, url, content, dateNow);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        HttpSession session = request.getSession();
        Voucher voucher = (Voucher) request.getSession().getAttribute("voucher");
        String ipAddress = request.getRemoteAddr();
        String url = request.getRequestURI();
        int level = 1;
        int action = 4;
        String dateNow = DateUtil.getDateNow();
        String content = "";
        int idA = 0;
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String note = request.getParameter("note");
        String payment = request.getParameter("payment");
        String nowDate = DateUtil.getDateNow();
        List<ListProductByCart> list = acc.getProductCart();
        if (voucher != null) {
            CheckOutService.addCheckOutByIdA(phone, address, payment, name, note, String.valueOf(acc.getId()), String.valueOf(voucher.getId()), nowDate);
            VoucherService.editQuantityVouchert(voucher.getId(), voucher.getQuantity() - 1);
            if ((voucher.getQuantity() - 1) == 0) {
                VoucherService.editStatusVouchert(voucher.getId(), 0);
            }
        } else {
            CheckOutService.addCheckOutByIdA(phone, address, payment, name, note, String.valueOf(acc.getId()), null, nowDate);
        }
        session.removeAttribute("voucher");
        List<CheckOut> checkOutList = CheckOutService.getCheckOutByIdA(String.valueOf(acc.getId()));
        String idCk = String.valueOf(checkOutList.get(checkOutList.size() - 1).getIdCk());
        for (ListProductByCart l : list) {
            ProductService.upQuantityProductById(String.valueOf(ProductService.getProductById1(l.getIdP()).getQuantity() - l.getQuantity()), String.valueOf(l.getIdP()));
            ProductCheckoutService.addProductToProductCheckout(idCk, String.valueOf(l.getIdP()), String.valueOf(l.getQuantity()));
        }
        CartService.deleteProductByIda(String.valueOf(acc.getId()));
        request.setAttribute("success", "Đặt hàng thành công, mời bạn tiếp tục mua hàng!");
        List<Payment> paymentList = PaymentService.getAllPayment();
        List<ListProductByCart> list1 = new ArrayList<>();
        request.setAttribute("list", list1);
        request.setAttribute("paymentList", paymentList);
        request.getRequestDispatcher("/user-template/checkout.jsp").forward(request, response);
content ="Thanh toán thành công đơn hàng";
        if (acc != null) idA = acc.getId();
        LogService.addLog(idA, action, level, ipAddress, url, content, dateNow);

    }
}
