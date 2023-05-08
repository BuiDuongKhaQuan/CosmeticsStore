package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.ProductService;
import qht.shopmypham.com.vn.service.ReviewService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.List;

@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final int PAGE_SIZE = 9;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page = Integer.parseInt(request.getParameter("page"));
        String command = request.getParameter("command");
        List<Product> products = ProductService.getAllProduct();
        int totalProducts = products.size();
        int totalPages = (int) Math.ceil((double) totalProducts / PAGE_SIZE);
        int start = (page - 1) * PAGE_SIZE;
        int end = Math.min(start + PAGE_SIZE, totalProducts);
        List<Product> productList = products.subList(start, end);
        Pagination pagination = new Pagination(totalPages, page, PAGE_SIZE);
        Account acc = (Account) request.getSession().getAttribute("a");
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumFractionDigits(0);
        if (command.equals("pro")) {
            for (Product p : productList) {
                List<Image> imageList = ProductService.getImages(String.valueOf(p.getIdP()));
                List<Review> reviewList = ReviewService.getAllReviewByIdP(String.valueOf(p.getIdP()));
                double avgStart = 0;
                double sum = 0;
                String chr = "";
                if (acc != null) {
                    chr = "<li><a href=\"javascript:void(0);\"><img onclick=\"insertItem(" + p.getIdP() + ")\"\n" +
                            "                                                                           src=\"user-template/img/icon/add-to-basket.png\"\n" +
                            "                                                                           alt=\"\"><span>Thêm vào giỏ</span></a></li>";
                } else {
                    chr = "<li><a href=\"javascript:void(0);\"><img onclick=\"inform()\"\n" +
                            "                                                                           src=\"user-template/img/icon/add-to-basket.png\"\n" +
                            "                                                                           alt=\"\"><span>Thêm vào giỏ</span></a></li>";
                }
                for (Review r : reviewList) {
                    sum += r.getStar();
                }
                avgStart = sum / reviewList.size();
                String start1 = "";
                String s = "style=\"margin-right: 0;\"";
                String q = "style=\"margin-right: 0;\"";
                if (avgStart == 0) {
                    start1 = "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                            " <i class=\"fa fa-star-o\"" + s + "></i>";

                }
                if (avgStart > 0 && avgStart < 0.5) {
                    start1 = "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                            " <i class=\"fa fa-star-o\"" + s + "></i>" +
                            " <i class=\"fa fa-star-o\"" + s + "></i>";
                }
                if (avgStart >= 0.5 && avgStart < 1) {
                    start1 = "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                }
                if (avgStart >= 1 && avgStart < 1.5) {
                    start1 = "<i class=\"fa fa-star\"></i> " +
                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                }
                if (avgStart >= 1.5 && avgStart < 2) {
                    start1 = "<i class=\"fa fa-star\"></i> " +
                            "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                }
                if (avgStart >= 2 && avgStart < 2.5) {
                    start1 = "<i class=\"fa fa-star\"></i> " +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                }
                if (avgStart >= 2.5 && avgStart < 3) {
                    start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i> ";
                }
                if (avgStart >= 3 && avgStart < 3.5) {
                    start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                }
                if (avgStart >= 3.5 && avgStart < 4) {
                    start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                }
                if (avgStart >= 4 && avgStart < 4.5) {
                    start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star-o\"" + s + "></i>";
                }
                if (avgStart >= 4.5 && avgStart < 5) {
                    start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star-half-o\"" + q + "></i>";
                }
                if (avgStart == 5) {
                    start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>" +
                            "<i class=\"fa fa-star\"" + s + "></i>";
                }
                if (reviewList.size() == 0) {
                    start1 = "Chưa có đánh giá";
                }
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write("<div class=\"col-lg-4 col-md-6 col-sm-6\" id=\"li\">\n" +
                        "                        <div class=\"product__item\" style=\"background-color: rgba(130,140,230,0.11)\">\n" +
                        "                            <div class=\"product__item__pic set-bg\" style=\"background-image: url(" + imageList.get(0).getImg() + ");\"> \n" +
                        "                                <ul class=\"product__hover\">\n" +
                        "                                    <li><a href=\"javascript:void(0);\"><img onclick=\"addFavorite(" + p.getIdP() + ")\"\n" +
                        "                                                                            src=\"user-template/img/icon/heart.png\"\n" +
                        "                                                                           alt=\"\"><span>Yêu thích</span></a></li>\n" +
                        "                                    <li><a href=\"javascript:void(0);\"><img onclick=\"category(" + p.getIdC() + ")\"\n" +
                        "                                                                            src=\"user-template/img/icon/compare.png\"\n" +
                        "                                                                           alt=\"\">\n" +
                        "                                        <span>Cùng loại</span></a></li>\n" +
                        "                                    <li><a href=\"javascript:void(0);\"><img onclick=\"detailProduct(" + p.getIdP() + ")\"\n" +
                        "                                                                           src=\"user-template/img/icon/view.png\"\n" +
                        "                                                                           alt=\"\"><span>Chi tiết</span></a></li>\n" +
                        "                                   " + chr + "\n" +
                        "                                </ul>\n" +
                        "                            </div>\n" +
                        "                            <div class=\"product__item__text\">\n" +
                        "                                <h6 onclick=\"detailProduct(" + p.getIdP() + ")\" style=\"cursor: pointer\">" + p.getName() + "\n" +
                        "                                </h6>\n" +
                        "                                <div class=\"rating\" >\n" +
                        "                                    " + start1 + "\n" +
                        "                                </div>\n" +
                        "                                <h5>" + nf.format(p.getPrice()) + "đ</h5>\n" +
                        "                                <div class=\"product__color__select\">\n" +
                        "                                    <label for=\"pc-4\">\n" +
                        "                                        <input type=\"radio\" id=\"pc-4\">\n" +
                        "                                    </label>\n" +
                        "                                    <label class=\"active black\" for=\"pc-5\">\n" +
                        "                                        <input type=\"radio\" id=\"pc-5\">\n" +
                        "                                    </label>\n" +
                        "                                    <label class=\"grey\" for=\"pc-6\">\n" +
                        "                                        <input type=\"radio\" id=\"pc-6\">\n" +
                        "                                    </label>\n" +
                        "                                </div>\n" +
                        "                            </div>\n" +
                        "                        </div>\n" +
                        "                    </div>");
            }
        }
        if (command.equals("pagi")){
            for (int i = 1;i<= pagination.getTotalPages(); i++){
                String html ="";
                if (i == pagination.getCurrentPage()) {
                    html += "<span class=\"current\">" + i + "</span>";
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write(html);
                }else {
                    html += "<a href=\"javascript:void(0);\" onclick=\"loadPage(" + i + ")\">" + i + "</a>";
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write(html);
                }
            }
        }
    }
}
