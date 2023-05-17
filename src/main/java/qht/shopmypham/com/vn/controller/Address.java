package qht.shopmypham.com.vn.controller;

import com.google.gson.Gson;
import qht.shopmypham.com.vn.model.District;
import qht.shopmypham.com.vn.model.Ward;
import qht.shopmypham.com.vn.model.api;
import qht.shopmypham.com.vn.tools.Format;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

@WebServlet(name = "Address", value = "/Address")
public class Address extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        if (command.equals("province")) {
            // Lấy mã tỉnh/thành phố từ tham số truy vấn
            String provinceID = request.getParameter("provinceID");
            // Xử lý yêu cầu và trả về danh sách quận/huyện tương ứng dưới dạng chuỗi JSON
            List<District> districts = api.getDistrict(Integer.parseInt(provinceID));
            String li = "", option ="";
            for (District district : districts) {
                li += "<li data-value=\"" + district.getDistrictID() + "\" class=\"option\">" + district.getDistrictName() + "</li>";
                option += "<option value=\"" + district.getDistrictID() +"\">" + district.getDistrictName() +"</option>";
            }
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("<select id=\"districtID\" onchange=\"getWards()\" name=\"districtID\" style=\"display: none;\">\n" +
                    "                                                <option value=\"\">--Chọn Huyện--</option>\n" + option +
                    "                                            </select>" +
                    "<div class=\"nice-select\" tabindex=\"0\">" +
                    "<span class=\"current\">--Chọn Huyện--</span>" +
                    "<ul class=\"list\">" +
                    "<li data-value=\"\" class=\"option selected\">--Chọn Huyện--</li>" + li +
                    "</ul>" +
                    "</div>");
        }
        if (command.equals("ward")) {
            String wardID = request.getParameter("wardID");
            List<Ward> wards = api.getWard(Integer.parseInt(wardID));
            String li = "", option ="";
            for (Ward ward : wards) {
                li += "<li data-value=\"" + ward.getWardCode() + "\" class=\"option\">" + ward.getWardName() + "</li>";
                option += "<option value=\"" + ward.getWardCode()  +"\">" + ward.getWardName() +"</option>";
            }
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("<select name=\"wardID\" onchange=\"getCalculateFee()\" id=\"wardID\" style=\"display: none;\">\n" +
                    "                                                <option value=\"\">--Chọn Xã/Ấp--</option>\n" + option +
                    "                                            </select>" +
                    "<div class=\"nice-select\" tabindex=\"0\">" +
                    "<span class=\"current\">--Chọn Xã/Ấp--</span>" +
                    "<ul class=\"list\">" +
                    "<li data-value=\"\" class=\"option selected\">--Chọn Xã/Ấp--</li>" + li +
                    "</ul>" +
                    "</div>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
