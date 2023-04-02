package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Slider;
import qht.shopmypham.com.vn.service.SliderSerivce;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SilderHomeController", value = "/admin-shop-edit-slider")
public class AdminEditSlider extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idSl = request.getParameter("idSl");
        Slider slider = SliderSerivce.getSliderById(idSl);
        request.setAttribute("slider", slider);
        request.getRequestDispatcher("admin-shop-edit-slider.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String on = request.getParameter("on");
        String off = request.getParameter("off");
        System.out.println(on);
        System.out.println(off);
        String idSl = request.getParameter("idSl");
        String img = request.getParameter("img");
        String text = request.getParameter("text");
        if (on == null) {
            SliderSerivce.editSliderStatusById(idSl, "0");

        }
        if (off == null) {
            SliderSerivce.editSliderStatusById(idSl, "1");

        }
        SliderSerivce.editSliderById(idSl, img, text);
        response.sendRedirect("admin-shop-list-slider");

    }
}
