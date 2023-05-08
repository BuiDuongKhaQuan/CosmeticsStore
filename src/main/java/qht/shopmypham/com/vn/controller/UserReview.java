package qht.shopmypham.com.vn.controller;

import org.apache.http.client.utils.DateUtils;
import qht.shopmypham.com.vn.been.Log;
import qht.shopmypham.com.vn.db.DB;
import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.AccountService;
import qht.shopmypham.com.vn.service.CartService;
import qht.shopmypham.com.vn.service.ProductService;
import qht.shopmypham.com.vn.service.ReviewService;
import qht.shopmypham.com.vn.tools.DateUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.InetAddress;
import java.text.NumberFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@WebServlet(name = "ReviewController", value = "/review")
public class UserReview extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        InetAddress ip = InetAddress.getLocalHost();
        String ipAddress = ip.getHostAddress();
        String information = request.getParameter("mess");
        String idP = request.getParameter("idP");
        String command = request.getParameter("command");
        if (command.equals("add")) {
            Account acc = (Account) request.getSession().getAttribute("a");
            String rating = request.getParameter("start");
            if (rating == "") {
                rating = "0";
            }
            ReviewService.addReview(idP, String.valueOf(acc.getIdA()), information, rating, DateUtil.getDateNow());
            DB.me().insert(new Log(Log.ALERT,acc,"profile","Thêm đánh giá sản phẩm",0,ipAddress));
        }
        Product product = ProductService.getProductById(Integer.parseInt(idP));
        List<Review> reviewList = ReviewService.getAllReviewByIdP(idP);
        if (command.equals("r")) {
            Collections.reverse(reviewList);
            for (Review r : reviewList) {
                Account acc = AccountService.getAccountById(String.valueOf(r.getIdA()));
                String name = "";
                if (acc.getUser() != null) {
                    name = acc.getUser();
                }
                if (acc.getUser() == null) {
                    name = acc.getFullName();
                }
                if (acc.getUser() != null && acc.getFullName() != null) {
                    name = acc.getFullName();
                }
                String start = "";
                if (r.getStar() == 5) {
                    start = " <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>";
                }
                if (r.getStar() == 4.5) {
                    start = " <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-half\"></i> ";
                }
                if (r.getStar() == 4) {
                    start = " <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i> ";
                }
                if (r.getStar() == 3.5) {
                    start = "  <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-half\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>";
                }
                if (r.getStar() == 3) {
                    start = "    <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>";
                }
                if (r.getStar() == 2.5) {
                    start = " <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-half\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>";
                }
                if (r.getStar() == 2) {
                    start = "<i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>";
                }
                if (r.getStar() == 1.5) {
                    start = " <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-half\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>";
                }
                if (r.getStar() == 1) {
                    start = "  <i class=\"fa fa-star\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>";
                }
                if (r.getStar() == 0.5) {
                    start = "<i class=\"fa fa-star-half\"></i>                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>";
                }
                if (r.getStar() == 0) {
                    start = " <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>\n" +
                            "                                                        <i class=\"fa fa-star-o\"></i>";
                }
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write("<div class=\"media mb-4\">\n" +
                        "                                                <img src=\"" + acc.getImg() + "\" alt=\"Image\" class=\"img-fluid mr-3 mt-1\"\n" +
                        "                                                     style=\"width: 50px;border-radius: 50%; height: 50px;\">\n" +
                        "                                                <div class=\"media-body\">\n" +
                        "                                                    <h6>" + name + "<small>\n" +
                        "                                                        - <i>" + r.getDate() + "\n" +
                        "                                                    </i></small></h6>\n" +
                        "                                                    <div class=\"rating\">\n" + start +
                        "                                                    </div>\n" +
                        "                                                    <p>" + r.getInfomation() + "\n" +
                        "                                                    </p>\n" +
                        "                                                </div>\n" +
                        "                                            </div>");

            }
        }
        if (command.equals("s")) {
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("<h4 class=\"mb-4\">" + reviewList.size() + " đánh giá về " + product.getName() + "\n" +
                    "                                                </h4> ");
        }
        if (command.equals("b")) {
            Account acc = (Account) request.getSession().getAttribute("a");
            String button = "";
            if (acc == null) {
                button = "<div class=\"form-group mb-0\">\n" +
                        "                                                    <a href=\"login.jsp\"\n" +
                        "                                                       class=\"btn btn-primary px-3\"\n" +
                        "                                                       style=\"border-radius: 5px\"> Đăng nhập để đánh giá\n" +
                        "                                                    </a>\n" +
                        "                                                </div>";
            }
            if (acc != null) {
                button = "<div class=\"form-group mb-0\">\n" +
                        "                                                    <button type=\"button\" onclick=\"send(" + product.getIdP() + ")\"\n" +
                        "                                                            class=\"btn btn-primary px-3\"> Đánh giá\n" +
                        "                                                    </button>\n" +
                        "                                                </div>";
            }
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("<h4 class=\"mb-4\">Để lại đánh giá của bạn</h4>\n" +
                    "                                            <div class=\"d-flex my-3\">\n" +
                    "                                                <p class=\"mb-0 mr-2\">Đánh giá * :</p>\n" +
                    "                                                <form method=\"get\" id=\"rating\" class=\"text-primary\"\n" +
                    "                                                      style=\"margin-top: -10px\">\n" +
                    "                                                    <input type=\"radio\" id=\"star5\" name=\"star\" value=\"5\"/>\n" +
                    "                                                    <label class=\"full\" for=\"star5\"\n" +
                    "                                                           title=\"Rất tốt - 5 stars\"></label>\n" +
                    "\n" +
                    "                                                    <input type=\"radio\" id=\"star4half\" name=\"star\" value=\"4.5\"/>\n" +
                    "                                                    <label class=\"half\" for=\"star4half\" title=\"4.5 sao\"></label>\n" +
                    "\n" +
                    "                                                    <input type=\"radio\" id=\"star4\" name=\"star\" value=\"4\"/>\n" +
                    "                                                    <label class=\"full\" for=\"star4\" title=\"Tốt - 4 sao\"></label>\n" +
                    "\n" +
                    "                                                    <input type=\"radio\" id=\"star3half\" name=\"star\" value=\"3.5\"/>\n" +
                    "                                                    <label class=\"half\" for=\"star3half\" title=\"3.5 stars\"></label>\n" +
                    "\n" +
                    "                                                    <input type=\"radio\" id=\"star3\" name=\"star\" value=\"3\"/>\n" +
                    "                                                    <label class=\"full\" for=\"star3\"\n" +
                    "                                                           title=\"Bình thường - 3 sao\"></label>\n" +
                    "\n" +
                    "                                                    <input type=\"radio\" id=\"star2half\" name=\"star\" value=\"2.5\"/>\n" +
                    "                                                    <label class=\"half\" for=\"star2half\" title=\"2.5 sao\"></label>\n" +
                    "\n" +
                    "                                                    <input type=\"radio\" id=\"star2\" name=\"star\" value=\"2\"/>\n" +
                    "                                                    <label class=\"full\" for=\"star2\"\n" +
                    "                                                           title=\"Trung bình  - 2 sao\"></label>\n" +
                    "\n" +
                    "                                                    <input type=\"radio\" id=\"star1half\" name=\"star\" value=\"1\"/>\n" +
                    "                                                    <label class=\"half\" for=\"star1half\" title=\"1.5 sao\"></label>\n" +
                    "\n" +
                    "                                                    <input type=\"radio\" id=\"star1\" name=\"star\" value=\"1\"/>\n" +
                    "                                                    <label class=\"full\" for=\"star1\" title=\"Tệ - 1 sao\"></label>\n" +
                    "\n" +
                    "                                                    <input type=\"radio\" id=\"starhalf\" name=\"star\" value=\"0.5\"/>\n" +
                    "                                                    <label class=\"half\" for=\"starhalf\"\n" +
                    "                                                           title=\"Rất tệ - 0.5 sao\"></label>\n" +
                    "                                                </form>\n" +
                    "\n" +
                    "                                            </div> <div class=\"form-group\">\n" +
                    "                                                    <label for=\"message\">Đánh giá của bạn *</label>\n" +
                    "                                                    <textarea id=\"message\"\n" +
                    "                                                              name=\"information\" cols=\"30\" rows=\"5\"\n" +
                    "                                                              class=\"form-control\" required></textarea>\n" +
                    "                                                </div>\n" + button + "</div>");
        }

    }


}
