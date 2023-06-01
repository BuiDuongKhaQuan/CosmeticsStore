package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Log;
import qht.shopmypham.com.vn.service.LogService;
import qht.shopmypham.com.vn.tools.DateUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminLog", value = "/AdminLog")
public class AdminLog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account account = (Account) request.getSession().getAttribute("a");
        String ipAddress = request.getRemoteAddr();
        String url = request.getRequestURI();
        int level = 1;
        int action = 4;
        String dateNow = DateUtil.getDateNow();
        String content = "";
        int idA = 0;
        if (account.maxPower()) {
            List<Log> logList = LogService.getAllLog();
            request.setAttribute("logList", logList);
            request.getRequestDispatcher("/admin-template/log.jsp").forward(request, response);
            content = "Truy cập trang log";
            LogService.addLog(idA, action, level, ipAddress, url, content, dateNow);
        } else {
            response.sendRedirect("404.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
