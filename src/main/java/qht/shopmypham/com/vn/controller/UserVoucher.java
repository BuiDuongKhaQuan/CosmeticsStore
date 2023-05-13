package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Voucher;
import qht.shopmypham.com.vn.service.VoucherService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.List;

@WebServlet(name = "UserVoucher", value = "/voucher")
public class UserVoucher extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Voucher> voucherList = VoucherService.getAllVoucherByStatus();
        request.setAttribute("voucherList", voucherList);
        request.getRequestDispatcher("user-template/voucher.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        HttpSession session = request.getSession();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumFractionDigits(0);
        if (command.equals("voucher")) {
            int price = Integer.parseInt(request.getParameter("total"));
            String code = request.getParameter("code");
            Voucher voucher = VoucherService.getVoucherByCode(code);
            String rs = "";
            if (voucher != null) {
                if (voucher.getQuantity() > 0 && voucher.getStatus() == 1) {
                    int reduction = price * voucher.getPrice() / 100;
                    int priceLast = price - reduction;
                    rs = "<ul>\n" +
                            "                            <li>Đơn giá <span>"+nf.format(price)+"đ</span></li>\n" +
                            "                            <li>Phí vận chuyển <span>25.000đ</span></li>\n" +
                            "                            <li>Giảm giá <span>- "+nf.format(reduction)+"đ</span></li>\n" +
                            "                            <li>Tổng cộng <span>"+nf.format(priceLast+25000)+"đ</span></li>\n" +
                            "                        </ul>\n" +
                            "                        <a href=\"checkout\" class=\"primary-btn\">THANH TOÁN</a>";
                    session.setAttribute("voucher", voucher);
                }
            }
            if (voucher == null) {
                session.removeAttribute("voucher");
                rs = "<ul>\n" +
                        "                            <li>Đơn giá <span>"+nf.format(price)+"đ</span></li>\n" +
                        "                            <li>Phí vận chuyển <span>25.000đ</span></li>\n" +
                        "                            <li>Giảm giá <span>0đ</span></li>\n" +
                        "                            <li>Tổng cộng <span>"+nf.format(price+25000)+"đ</span></li>\n" +
                        "                        </ul>\n" +
                        "                        <a href=\"checkout\" class=\"primary-btn\">THANH TOÁN</a>";
            }
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(rs);
        }
        if (command.equals("mess")) {
            String code = request.getParameter("code");
            Voucher voucher = VoucherService.getVoucherByCode(code);
            String rs = "";
            if (voucher != null) {
                if (voucher.getQuantity() > 0 && voucher.getStatus() == 1) {
                    rs = "<p style=\"color: #1fdc0a\">Áp dụng thành công!</p>";
                }
            }
            if (voucher == null) {
                rs = "<p style=\"color: red\">Mã giảm giá không hợp lệ!</p>\n";
            }
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(rs);
        }
    }
}
