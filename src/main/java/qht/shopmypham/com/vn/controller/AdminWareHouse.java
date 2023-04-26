package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Trademark;
import qht.shopmypham.com.vn.model.WareHouse;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.LogService;
import qht.shopmypham.com.vn.service.TrademarkService;
import qht.shopmypham.com.vn.service.WareHouseService;
import qht.shopmypham.com.vn.tools.DateUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "AdminWareHouse", value = "/AdminWareHouse")
public class AdminWareHouse extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String command = request.getParameter("command");
        request.setAttribute("warehouse", "toggled");
        String ipAddress = request.getRemoteAddr();
        String url = request.getRequestURI();
        int level = 1;
        int action = 4;
        String dateNow = DateUtil.getDateNow();
        String content = "";
        int idA = 0;
        if (acc.powerAccount().getWarehouseManage() == 1) {
            if (command.equals("list")) {
                List<WareHouse> wareHouseList = WareHouseService.getAll();
                request.setAttribute("wareHouseList", wareHouseList);
                request.getRequestDispatcher("admin-template/wh-warehouse-list.jsp").forward(request, response);
                content = "Truy cập trang quản lý danh sách kho";
            }
            if (command.equals("edit")) {
                String idP = request.getParameter("idP");
                WareHouse wareHouse = WareHouseService.getWareHouse(idP);
                request.setAttribute("wareHouse", wareHouse);
                request.getRequestDispatcher("admin-template/wh-warehouse-edit.jsp").forward(request, response);
                content = "Truy cập trang chỉnh sửa kho";
                action = 2;
            }
            if (command.equals("add")) {
                List<Categories> listCategories = CategoryService.getAllCategory();
                List<Trademark> trademarks = TrademarkService.getTrademarkAll();
                request.setAttribute("listCategories", listCategories);
                request.setAttribute("trademarks", trademarks);
                request.getRequestDispatcher("admin-template/wh-warehouse-add.jsp").forward(request, response);
                content = "Truy cập trang thêm hàng";
                action = 1;
            }
            if (command.equals("delete")) {
                String idP = request.getParameter("idP");
                WareHouseService.deleteWareHouse(idP);
                response.sendRedirect("AdminWareHouse?command=list");
                content = "Truy cập trang quản lý danh sách voucher";
                action = 3;
            }
            LogService.addLog(idA, action, level, ipAddress, url, content, dateNow);
        } else {
            response.sendRedirect("404.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String command = request.getParameter("command");
        String ipAddress = request.getRemoteAddr();
        String url = request.getRequestURI();
        int level = 1;
        int action = 4;
        String dateNow = DateUtil.getDateNow();
        String content = "";
        int idA = 0;
        if (acc.powerAccount().getWarehouseManage() == 1) {
            if (command.equals("edit")) {
                String idP = request.getParameter("idP");
                String quantity = request.getParameter("quantity");
                String quantityInput = request.getParameter("quantityInput");
                String dateinput = request.getParameter("dateInput");
                WareHouseService.editWareHouse(quantity, dateinput, quantityInput, idP);
                action = 2;
                content = "Chỉnh sửa sản phẩm " + idP;
            }

            if (command.equals("add")) {
                String name_product = request.getParameter("name_product");
                String quantity = request.getParameter("quantity");
                String idC = request.getParameter("idC");
                String idT = request.getParameter("idT");
                String quantityInput = request.getParameter("quantityInput");
                String dateinput = request.getParameter("dateInput");
                List<WareHouse> wareHouseList = WareHouseService.getAll();
                Collections.reverse(wareHouseList);
                WareHouseService.addWareHouse(quantity, dateinput, quantityInput, name_product, String.valueOf(wareHouseList.get(0).getIdP() + 1), idC, idT);
                action = 1;
                content = "Thêm sản phẩm vòa kho ";
            }
            LogService.addLog(idA, action, level, ipAddress, url, content, dateNow);
        } else {
            response.sendRedirect("404.jsp");
        }
    }
}
