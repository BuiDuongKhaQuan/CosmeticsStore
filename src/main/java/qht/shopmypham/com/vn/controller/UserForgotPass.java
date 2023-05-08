package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.been.Log;
import qht.shopmypham.com.vn.db.DB;
import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Email;
import qht.shopmypham.com.vn.model.OTP;
import qht.shopmypham.com.vn.service.OTPService;
import qht.shopmypham.com.vn.tools.EmailUtil;
import qht.shopmypham.com.vn.service.AccountService;
import qht.shopmypham.com.vn.tools.Encode;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Collections;
import java.util.List;
import java.util.Random;

@WebServlet(name = "ForgotPassController", value = "/forgot-password")
public class UserForgotPass extends HttpServlet {
    int count = 1;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        HttpSession session = request.getSession();

        if (command.equals("forgot")) {
            try {
                InetAddress ip = InetAddress.getLocalHost();
                String ipAddress = ip.getHostAddress();
                String email = request.getParameter("email");
                String user = request.getParameter("user");
                String number = String.format("%06d", new Random().nextInt(999999));
                Account acc = AccountService.getAccountByUserAndEmail(user, email);
                session.setAttribute("account_forgot_pass", acc);
                if (acc == null) {
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("<i class=\"bx bx-error-circle\"></i>\n" +
                            "                <label>Tài khoản hoặc email không đúng!</label>");
                    DB.me().insert(new Log(Log.INFO, acc, "forgot-password.jsp", "Tài khoản hoặc email không chính xác", 0, ipAddress));
                } else {
                    Email email1 = new Email();
                    email1.setFrom("khaquan9a2.2016@gmail.com");
                    email1.setFromPasswork("xowopqrkiyjsdsbf");
                    email1.setTo(email);
                    email1.setSubject("Quên mật khẩu");
                    StringBuffer sb = new StringBuffer();
                    sb.append("Chào ").append(user + ". ");
                    sb.append("Bạn đang sử dụng chức năng quên mật khẩu.\n");
                    sb.append("Mật mã OTP của bạn là ").append(number + ".\n");
                    sb.append("Mã có hiệu lực trong 3 phút!");
                    email1.setContent(sb.toString());
                    EmailUtil.send(email1);
                    OTPService.addOTP(String.valueOf(acc.getIdA()), String.valueOf(number));
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("active");
                    DB.me().insert(new Log(Log.ALERT, acc, "forgot-password.jsp", "Gửi otp thành công", 0, ipAddress));
                }
            } catch (Exception e) {
                request.setAttribute("mess", e.getMessage());
            }
        }
        if (command.equals("forgot_otp")) {
            String reOtp = request.getParameter("otp");
            String pass = request.getParameter("pass");
            String repass = request.getParameter("repass");
            Account acc = (Account) request.getSession().getAttribute("account_forgot_pass");
            String idA = String.valueOf(acc.getIdA());
            List<OTP> otpList = OTPService.getOTPByIdA(idA);
            Collections.reverse(otpList);
            String otp = String.valueOf(otpList.get(0).getOTP());
            InetAddress ip = InetAddress.getLocalHost();
            String ipAddress = ip.getHostAddress();
            if (count < 3) {
                if (reOtp.equals(otp) && pass.equals(repass)) {
                    AccountService.changePasswordAccountById(idA, Encode.enCodeMD5(pass));
                    request.getSession().removeAttribute("account_forgot_pass");
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("<div class=\"remember-forgot\"\n" +
                            "                     style=\"justify-content: space-evenly; color: #009d0c; font-size: 0.96em;\">\n" +
                            "                    <i class=\"fa-light fa-check\"></i>\n" +
                            "                    <label>Đổi mật khẩu thành công! <a href=\"login.jsp\">Đăng nhập</a></label>\n" +
                            "                </div>");
                    DB.me().insert(new Log(Log.WARNING, acc, "forgot-password.jsp", "Đổi mật khẩu thành công", 0, ipAddress));
                }
                if (!reOtp.equals(otp)) {
                    count++;
                    System.out.println(count);
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write(" <div class=\"remember-forgot\"\n" +
                            "                     style=\"justify-content: space-evenly; color: #ff0000; font-size: 0.96em; margin-right: 4px;\">\n" +
                            "                    <i class=\"bx bx-error-circle\"></i>\n" +
                            "                    <label>Sai mã OTP, nhập sai quá 3 lần tài khoản của bạn sẽ bị khóa!</label>\n" +
                            "                </div>");
                DB.me().insert(new Log(Log.WARNING, acc, "forgot-password.jsp", "Nhập sai otp lần " + count, 0, ipAddress));
                }
            } else {
                AccountService.lockUpAcountById("0", String.valueOf(acc.getIdA()));
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(" <div class=\"remember-forgot\"\n" +
                        "                     style=\"justify-content: flex-start; color: #ff0000; font-size: 0.96em; margin-right: 4px;\">\n" +
                        "                    <i class=\"bx bx-error-circle\" style=\"margin-right: 2px;\"></i>\n" +
                        "                    <label>Tài khoản của bạn đã bị khóa! <a href=\"contact\">Trợ giúp</a></label>\n" +
                        "                </div>");
                DB.me().insert(new Log(Log.WARNING, acc, "forgot-password.jsp", "Khóa tài khoản", 0, ipAddress));
            }
        }
    }
}
