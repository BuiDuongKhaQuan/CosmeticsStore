package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.been.Log;
import qht.shopmypham.com.vn.db.DB;
import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Slider;
import qht.shopmypham.com.vn.service.SliderSerivce;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;
import java.util.List;

@WebServlet(name = "AddBlogController", value = "/admin-slider")
public class AdminSlider extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Slider> sliderList = SliderSerivce.getAllSlider();
        String command = request.getParameter("command");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        Account acc = (Account) request.getSession().getAttribute("a");

        if (command.equals("dashboard")) {
            request.getRequestDispatcher("/admin-template/slider-dashboard.jsp").forward(request, response);
            DB.me().insert(new Log(Log.INFO,acc,"admin-slider","Truy cập trang quản lí slider trang chủ",0,ipAddress));

        }
        if (command.equals("list")) {
            request.setAttribute("sliderList", sliderList);
            request.getRequestDispatcher("/admin-template/slider-list.jsp").forward(request, response);
            DB.me().insert(new Log(Log.INFO,acc,"admin-slider","Truy cập trang quản lí danh sách slider trang chủ",0,ipAddress));

        }
        if (command.equals("add")) {
            request.getRequestDispatcher("/admin-template/slider-post.jsp").forward(request, response);
            DB.me().insert(new Log(Log.INFO,acc,"admin-slider","Truy cập trang quản lí thêm slider trang chủ",0,ipAddress));

        }
        if (command.equals("edit")) {
            String IdSl = request.getParameter("IdSl");
            Slider slider = SliderSerivce.getSliderById(IdSl);
            request.setAttribute("slider", slider);
            request.getRequestDispatcher("/admin-template/slider-edit.jsp").forward(request, response);
            DB.me().insert(new Log(Log.INFO,acc,"admin-slider","Truy cập trang quản lí chỉnh sửa slider trang chủ",0,ipAddress));

        }
        if (command.equals("delete")) {
            String IdSl = request.getParameter("IdSl");
            SliderSerivce.deleteSliderById(IdSl);
            response.sendRedirect("admin-slider?command=list");
            DB.me().insert(new Log(Log.WARNING,acc,"admin-slider","Xóa slider trang chủ",0,ipAddress));

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String command = request.getParameter("command");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        String topic = request.getParameter("text");
        String img = request.getParameter("img");
        String status = request.getParameter("status");


        if (command.equals("add")) {
            SliderSerivce.addSlider(img, topic);
            DB.me().insert(new Log(Log.WARNING,acc, "admin-product/add","Thêm slider",0,ipAddress));
        }
        if (command.equals("edit")) {
            String IdSl = request.getParameter("IdSl");
            SliderSerivce.editSliderByIdAll(IdSl, img, topic, status);
            DB.me().insert(new Log(Log.WARNING,acc, "admin-product/edit","Chỉnh sửa slider",0,ipAddress));
        }
        response.sendRedirect("admin-slider?command=list");
    }

}
