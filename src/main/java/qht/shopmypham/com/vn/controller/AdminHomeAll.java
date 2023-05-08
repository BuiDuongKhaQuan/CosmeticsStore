package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.been.Log;
import qht.shopmypham.com.vn.db.DB;
import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.*;
import qht.shopmypham.com.vn.tools.DateUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@WebServlet(name = "AdminHomeAll", value = "/AdminHomeAll")
public class AdminHomeAll extends HttpServlet {
    String error404 = "404.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.getHomeManage() == 1) {
                if (command.equals("productHome")) {
                    Home home = HomeService.getHome();
                    request.setAttribute("home", home);
                    request.getRequestDispatcher("/admin-template/home-product.jsp").forward(request, response);
                    DB.me().insert(new Log(Log.INFO,acc,"AdminHomeAll/productHome","Truy cập trang quản lí sản phẩm trang chủ",0,ipAddress));
                }
                if (command.equals("cate")) {
                    Home home = HomeService.getHome();
                    List<Categories> categoriesList = CategoryService.getAllCategory();
                    List<Categories> categoriesHome = new ArrayList<>();
                    categoriesHome.add(CategoryService.getCategoriesById(String.valueOf(home.getIdC1())));
                    categoriesHome.add(CategoryService.getCategoriesById(String.valueOf(home.getIdC2())));
                    categoriesHome.add(CategoryService.getCategoriesById(String.valueOf(home.getIdC3())));
                    request.setAttribute("categoriesList", categoriesList);
                    request.setAttribute("categoriesHome", categoriesHome);
                    request.getRequestDispatcher("/admin-template/home-catagory.jsp").forward(request, response);
                    DB.me().insert(new Log(Log.INFO,acc,"AdminHomeAll/cate","Truy cập trang quản lí cate trên trang chủ",0,ipAddress));

                }
                if (command.equals("selling")) {
                    List<Product> promotionProducts = new ArrayList<>();
                    List<PromotionProduct> promotionProductList = ProductService.getPromotion();
                    Selling selling = ProductService.getSelling();
                    String pattern = "hh:mm:ss a dd/MM/yyyy";
                    SimpleDateFormat formatter = new SimpleDateFormat(pattern);
                    for (PromotionProduct pp : promotionProductList) {
                        try {
                            Date date1 = formatter.parse(pp.getStartDay());
                            Date date2 = formatter.parse(pp.getEndDay());
                            Date dateNow = formatter.parse(DateUtil.getDateNow());
                            if (dateNow.after(date1) && dateNow.before(date2)) {
                                promotionProducts.add(ProductService.getProductById(pp.getIdP()));
                            }
                        } catch (ParseException e) {
                            throw new RuntimeException(e);
                        }
                    }
                    request.setAttribute("selling", selling);
                    request.setAttribute("promotionProducts", promotionProducts);
                    request.getRequestDispatcher("/admin-template/home-selling.jsp").forward(request, response);
                    DB.me().insert(new Log(Log.INFO,acc,"AdminHomeAll/selling","Truy cập trang quản lí ưu đãi trong tuần",0,ipAddress));
                }
                if (command.equals("imageTrend")) {
                    List<String> content = new ArrayList<>();
                    List<String> img = new ArrayList<>();
                    List<ImageTrend> imageTrendList = HomeService.getImageFs();
                    for (int i = 0; i < 3; i++) {
                        content.add(imageTrendList.get(i).getImg());
                    }
                    for (int i = 3; i < imageTrendList.size(); i++) {
                        img.add(imageTrendList.get(i).getImg());
                    }
                    request.setAttribute("contentTrends", content);
                    request.setAttribute("imgTrends", img);
                    request.setAttribute("imageTrendList", imageTrendList);
                    request.getRequestDispatcher("/admin-template/home-image-trends.jsp").forward(request, response);
                    DB.me().insert(new Log(Log.INFO,acc,"AdminHomeAll/imageTrend","Truy cập trang quản lí Cosmetics Trends",0,ipAddress));

                }
                if (command.equals("information")) {
                    Shop shop = ShopService.getShop();
                    request.setAttribute("shop", shop);
                    request.getRequestDispatcher("/admin-template/home-information.jsp").forward(request, response);
                    DB.me().insert(new Log(Log.INFO,acc,"AdminHomeAll/imageTrend","Truy cập trang quản lí thông tin cửa hàng",0,ipAddress));
                }
                if (command.equals("editTrend")) {
                    String idT = request.getParameter("idT");
                    ImageTrend imageTrend = HomeService.getImageTrendById(idT);
                    request.setAttribute("imgTrend", imageTrend);
                    request.getRequestDispatcher("/admin-template/home-image-trends-edit.jsp").forward(request, response);
                    DB.me().insert(new Log(Log.INFO,acc,"AdminHomeAll/editTrend","Truy cập trang quản lí chỉnh sửa  Cosmetics Trends",0,ipAddress));

                }
            } else {
                response.sendRedirect(error404);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.getHomeManage() == 1) {
                if (command.equals("information")) {
                    String idS = request.getParameter("idS");
                    String phone = request.getParameter("phone");
                    String address = request.getParameter("address");
                    String slogan = request.getParameter("slogan");
                    String contact = request.getParameter("contact");
                    String email = request.getParameter("email");
                    String name = request.getParameter("name");
                    String desginer = request.getParameter("desginer");
                    String logo_header = request.getParameter("logo_header");
                    ShopService.editShop(idS, name, logo_header, slogan, address, phone, email, desginer, contact);
                    HttpSession session = request.getSession();
                    session.removeAttribute("logo");
                    DB.me().insert(new Log(Log.WARNING,acc,"AdminHomeAll/edit","chỉnh sửa thông tin cửa hàng",0,ipAddress));

                }
                if (command.equals("category")) {
                    String idC1 = request.getParameter("idC1");
                    String idC2 = request.getParameter("idC2");
                    String idC3 = request.getParameter("idC3");
                    HomeService.edit(idC1, idC2, idC3);
                    DB.me().insert(new Log(Log.WARNING,acc,"AdminHomeAll/category","chỉnh sửa doanh mục trên trang chủ",0,ipAddress));

                }
                if (command.equals("quantity")) {
                    String quantityProS = request.getParameter("quantityProS");
                    String quantityProN = request.getParameter("quantityProN");
                    String quantityProP = request.getParameter("quantityProP");
                    String quantityBlog = request.getParameter("quantityBlog");
                    HomeService.editQuantity(quantityProP, quantityProN, quantityProS, quantityBlog);
                }
                if (command.equals("selling")) {
                    String idP = request.getParameter("idP");
                    String text = request.getParameter("text");
                    String text1 = request.getParameter("text1");
                    String text2 = request.getParameter("text2");
                    String text3 = request.getParameter("text3");
                    ProductService.editSelling(text, text1, text2, text3, idP);
                }
                if (command.equals("imgtrend")) {
                    String action = request.getParameter("action");
                    if (action.equals("text")) {
                        String id = request.getParameter("id");
                        String topic = request.getParameter("topic");
                        String status = request.getParameter("status");
                        HomeService.editImgTrends(topic, id, status);
                    }
                    if (action.equals("trend")) {
                        String idT = request.getParameter("idT");
                        String imgT = request.getParameter("imgT");
                        String status = request.getParameter("status");
                        HomeService.editImgTrends(imgT, idT, status);
                        HttpSession session = request.getSession();
                        session.removeAttribute("imgsTrends");
                    }
                }
            } else {
                response.sendRedirect(error404);
            }
        }
    }
}
