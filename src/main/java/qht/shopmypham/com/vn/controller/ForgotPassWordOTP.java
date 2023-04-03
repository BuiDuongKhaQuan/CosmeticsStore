package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.OTP;
import qht.shopmypham.com.vn.service.AccountService;
import qht.shopmypham.com.vn.service.OTPService;
import qht.shopmypham.com.vn.tools.Encode;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "ForgotPassWordOTP", value = "/forgot-password-otp")
public class ForgotPassWordOTP extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("message","Mã đã được gửi vào email, bạn vui lòng kiểm tra email!");
        request.getRequestDispatcher("forgot-password-OTP.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reOTP = request.getParameter("otp");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        Account acc = (Account) request.getSession().getAttribute("a");
        String idA = String.valueOf(acc.getIdA());
        System.out.println(idA);
        List<OTP> otpList = OTPService.getOTPByIdA(idA);
        Collections.reverse(otpList);
        String otp = String.valueOf(otpList.get(0).getOTP());
        System.out.println(otp);
        if (reOTP.equals(otp) && pass.equals(repass)) {
            AccountService.changePasswordAccountById(idA, Encode.enCodeMD5(pass));
            request.setAttribute("success", "Đổi mật khẩu thành công!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            request.getSession().removeAttribute("a");
        } else {
            request.setAttribute("message1", "Sai thông tin!");
            request.getRequestDispatcher("forgot-password-OTP.jsp").forward(request, response);
        }
    }
}
