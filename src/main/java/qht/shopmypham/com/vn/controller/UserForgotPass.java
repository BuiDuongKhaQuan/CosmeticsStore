package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Email;
import qht.shopmypham.com.vn.service.OTPService;
import qht.shopmypham.com.vn.tools.EmailUtil;
import qht.shopmypham.com.vn.service.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "ForgotPassController", value = "/forgot-password")
public class UserForgotPass extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/user-template/forgot-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String email = request.getParameter("email");
            String user = request.getParameter("user");
            String number = String.format("%06d",new Random().nextInt(999999));
            Account acc = AccountService.getAccountByUserAndEmail(user, email);
            HttpSession session = request.getSession();
            session.setAttribute("a", acc);
            request.setAttribute("acc",acc);
            if (acc == null) {
                request.setAttribute("message", "Tài khoản hoặc email không chính xác!");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);

            } else {
                Email email1 = new Email();
                email1.setFrom("khaquan9a2.2016@gmail.com");
                email1.setFromPasswork("xowopqrkiyjsdsbf");
                email1.setTo(email);
                email1.setSubject("Forgot password function");
                StringBuffer sb = new StringBuffer();
                sb.append("Dear").append(user);
                sb.append("You are used the forgot password function. ");
                sb.append("You password is ").append(number);
                sb.append("Regards");
                sb.append("Administrator");
                email1.setContent(sb.toString());
                EmailUtil.send(email1);
                request.setAttribute("message", "Mã đã được gửi vào tài khoản gmail của bạn, vui lòng kiểm tra email của bạn");
                OTPService.addOTP(String.valueOf(acc.getIdA()), String.valueOf(number));

            }

        } catch (Exception e) {
            request.setAttribute("message", e.getMessage());
        }
        response.sendRedirect("forgot-password-otp");
    }
}
