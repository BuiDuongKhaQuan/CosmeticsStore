package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Slider;
import qht.shopmypham.com.vn.service.SliderSerivce;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddBlogController", value = "/admin-slider")
public class AdminSlider extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Slider> sliderList = SliderSerivce.getAllSlider();
        String command = request.getParameter("command");

        if (command.equals("dashboard")) {
            request.getRequestDispatcher("/admin-template/slider-dashboard.jsp").forward(request, response);
        }
        if (command.equals("list")) {
            request.setAttribute("sliderList", sliderList);
            request.getRequestDispatcher("/admin-template/slider-list.jsp").forward(request, response);
        }
        if (command.equals("add")) {
            request.getRequestDispatcher("/admin-template/slider-post.jsp").forward(request, response);
        }
        if (command.equals("edit")) {
            String IdSl = request.getParameter("IdSl");
            Slider slider = SliderSerivce.getSliderById(IdSl);
            request.setAttribute("slider", slider);
            request.getRequestDispatcher("/admin-template/slider-edit.jsp").forward(request, response);
        }
        if (command.equals("delete")) {
            String IdSl = request.getParameter("IdSl");
            SliderSerivce.deleteSliderById(IdSl);
            response.sendRedirect("admin-slider?command=list");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");

        String topic = request.getParameter("text");
        String img = request.getParameter("img");
        String status = request.getParameter("status");

        if (command.equals("add")) {
            SliderSerivce.addSlider(img, topic);
        }
        if (command.equals("edit")) {
            String IdSl = request.getParameter("IdSl");
            SliderSerivce.editSliderByIdAll(IdSl, img, topic, status);
        }
        response.sendRedirect("admin-slider?command=list");
    }

}
