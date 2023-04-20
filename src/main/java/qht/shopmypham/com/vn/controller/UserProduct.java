package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.CartService;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.ProductService;
import qht.shopmypham.com.vn.service.ReviewService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Categories", value = "/product")
public class UserProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");

        if (command.equals("product")) {
            List<Product> listProduct = ProductService.getAllProduct();
            String checked = "checked";
            request.setAttribute("activeProduct", "active");
            request.setAttribute("checked0", checked);
            request.setAttribute("listProduct", listProduct);
            request.getRequestDispatcher("/user-template/product.jsp").forward(request, response);
        }
        if (command.equals("favorite")) {
            List<Product> productList = ProductService.getFavoriteProductByIdA(acc.getIdA());
            request.setAttribute("productList", productList);
            request.getRequestDispatcher("/user-template/favorite-product.jsp").forward(request, response);
        }
        if (command.equals("search")) {
            String name = request.getParameter("name");
            request.setCharacterEncoding("UTF-8");
            NumberFormat nf = NumberFormat.getInstance();
            nf.setMinimumFractionDigits(0);
            List<Product> listProductBySearch = ProductService.getProductByName(name);
            request.setAttribute("txtSearch", name);
            request.setAttribute("txtSearch1", name);

            for (Product p : listProductBySearch) {
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
                response.getWriter().write("<div class=\"col-lg-4 col-md-6 col-sm-6\">\n" +
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
        if (command.equals("arrange")) {
            String action = request.getParameter("action");
            NumberFormat nf = NumberFormat.getInstance();
            nf.setMinimumFractionDigits(0);
            List<Product> productList = new ArrayList<>();
            if (action.equals("ascending")) {
                productList = ProductService.getProductSortDescendingByPrice();
            }
            if (action.equals("decrease")) {
                productList = ProductService.getProductSortAscendingByPrice();
            }
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
                response.getWriter().write("<div class=\"col-lg-4 col-md-6 col-sm-6\">\n" +
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
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product_id = request.getParameter("IdP");
        String quantity = "1";
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");
        if (acc != null) {
            ListProductByCart byCart = CartService.checkProduct(product_id, String.valueOf(acc.getIdA()));
            if (command.equals("insertItem")) {
                if (byCart == null) {
                    CartService.addProductToCart(product_id, quantity, String.valueOf(acc.getIdA()));
                } else {
                    int quantity1 = byCart.getQuantity();
                    CartService.upQuantityProductListProductByCart(String.valueOf(quantity1 + 1), product_id, String.valueOf(acc.getIdA()));
                }
            }
            if (command.equals("addItem")) {
                if (byCart != null) {
                    int quantity1 = byCart.getQuantity();
                    CartService.upQuantityProductListProductByCart(String.valueOf(quantity1 + 1), product_id, String.valueOf(acc.getIdA()));
                }
            }
            if (command.equals("subItem")) {
                int quantity1 = byCart.getQuantity();
                if (quantity1 > 1) {
                    CartService.upQuantityProductListProductByCart(String.valueOf(quantity1 - 1), product_id, String.valueOf(acc.getIdA()));
                }
                if (quantity1 == 1) {
                    CartService.deleteProductByIdpAndIda(product_id, String.valueOf(acc.getIdA()));
                }
            }
            if (command.equals("deleteItem")) {
                CartService.deleteProductByIdpAndIda(product_id, String.valueOf(acc.getIdA()));
            }
            if (command.equals("favorite")) {
                Favorite favorite = ProductService.getFavoriteProduct(product_id, String.valueOf(acc.getIdA()));
                if (favorite == null) {
                    ProductService.addFavoriteProduct(product_id, String.valueOf(acc.getIdA()));
                }
            }

            if (command.equals("delete-favorite")) {
                ProductService.deleteFavoriteProduct(product_id, String.valueOf(acc.getIdA()));

            }
            if (command.equals("load_list_favorite")) {
                NumberFormat nf = NumberFormat.getInstance();
                nf.setMinimumFractionDigits(0);
                List<Product> productList = ProductService.getFavoriteProductByIdA(acc.getIdA());
                if (productList.size() != 0) {
                    for (Product p : productList) {
                        List<Image> imageList = ProductService.getImages(String.valueOf(p.getIdP()));
                        Categories category = CategoryService.getCategoriesById(String.valueOf(p.getIdC()));
                        response.setContentType("application/json");
                        response.setCharacterEncoding("UTF-8");
                        response.getWriter().write("<tr>\n" +
                                "                                        <th scope=\"row\" class=\"border-0\">\n" +
                                "                                            <div class=\"p-2\">\n" +
                                "                                                <img src=\"" + imageList.get(0).getImg() + "\"\n" +
                                "                                                     alt=\"\"\n" +
                                "                                                     width=\"70\" class=\"img-fluid rounded shadow-sm\">\n" +
                                "                                                <div class=\"ml-3 d-inline-block align-middle\">\n" +
                                "                                                    <h5 class=\"mb-0\"><a href=\"javascript:void(0);\"\n" +
                                "                                                                        onclick=\"detailProduct(" + p.getIdP() + ")\"\n" +
                                "                                                                        class=\"text-dark d-inline-block align-middle\"\n" +
                                "                                                                        style=\"width: 500px;overflow: hidden;white-space: nowrap;\n" +
                                "                                                                        text-overflow: ellipsis;\">" + p.getName() + "\n" +
                                "                                                    </a></h5><span onclick=\"category(" + p.getIdC() + ")\"\n" +
                                "                                                                   class=\"text-muted font-weight-normal font-italic d-block\">Danh mục: " + category.getNameC() + "</span>\n" +
                                "                                                </div>\n" +
                                "                                            </div>\n" +
                                "                                        </th>\n" +
                                "                                        <td class=\"border-0 align-middle\"><strong>" + nf.format(p.getPrice()) + "đ</strong>\n" +
                                "                                        </td>\n" +
                                "                                        <td class=\"border-0 align-middle\"><a href=\"javascript:void(0);\"\n" +
                                "                                                                             onclick=\"insertItem(" + p.getIdP() + ")\"\n" +
                                "                                                                             class=\"text-dark flex-table\">\n" +
                                "                                            <i class=\"fa fa-shopping-cart\"></i>\n" +
                                "                                        </a></td>\n" +
                                "                                        <td class=\"border-0 align-middle\"><a href=\"javascript:void(0);\"\n" +
                                "                                                                             onclick=\"deleteFavorite(" + p.getIdP() + ")\"\n" +
                                "                                                                             class=\"text-dark\"\n" +
                                "                                                                             style=\"margin-left: 10px;\"><i\n" +
                                "                                                class=\"fa fa-trash\"></i></a></td>\n" +
                                "                                    </tr>");

                    }
                } else {
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("<tr>\n" +
                            "                                        <th>\n" +
                            "                                        Không có sản phẩm yêu thích!\n" +
                            "                                        </th>\n" +
                            "                                    </tr>");
                }
            }
        }
    }
}