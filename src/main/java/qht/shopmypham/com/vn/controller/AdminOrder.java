package qht.shopmypham.com.vn.controller;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.common.PDRectangle;
import org.apache.pdfbox.pdmodel.font.PDFont;
import org.apache.pdfbox.pdmodel.font.PDType0Font;
import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.*;
import qht.shopmypham.com.vn.tools.DateUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetAddress;
import java.text.NumberFormat;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "AdminOrder", value = "/admin-order")
public class AdminOrder extends HttpServlet {
    String error404 = "404.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CheckOut> checkOuts = CheckOutService.getAllCheckOut();
        Collections.reverse(checkOuts);
        String command = request.getParameter("command");
        String nowDate = DateUtil.getDateNow();
        Account acc = (Account) request.getSession().getAttribute("a");
        String ipAddress = request.getRemoteAddr();
        String url = request.getRequestURI();
        int level = 1;
        int action = 4;
        String dateNow = DateUtil.getDateNow();
        String content = "";
        int idA = 0;
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.powerAccount().getOrderManage() == 1) {
                idA = acc.getId();
                if (command.equals("dashboard")) {
                    request.getRequestDispatcher("/admin-template/order-dashboard.jsp").forward(request, response);
                    content = "Truy cập trang quản lý tổng quan đơn hàng";
                }

                if (command.equals("list")) {
                    request.setAttribute("checkOuts", checkOuts);
                    request.getRequestDispatcher("/admin-template/order-List.jsp").forward(request, response);
                    content = "Truy cập trang quản lý danh sách đơn hàng";
                }
                if (command.equals("edit")) {
                    String idCk = request.getParameter("IdCk");
                    CheckOut checkOut = CheckOutService.getCheckOutByIdCk(idCk);
                    request.setAttribute("checkOut", checkOut);
                    request.getRequestDispatcher("/admin-template/order-edit.jsp").forward(request, response);
                    content = "Truy cập trang quản lí chỉnh sửa đơn hàng";
                }
                if (command.equals("detail")) {
                    String idCk = request.getParameter("IdCk");
                    List<ListProductByCheckOut> listProductByCheckOuts = ProductCheckoutService.getProductProductCheckoutByIdCk(idCk);
                    CheckOut checkOut = CheckOutService.getCheckOutByIdCk(idCk);
                    request.setAttribute("checkOut", checkOut);
                    request.setAttribute("listProductByCheckOuts", listProductByCheckOuts);
                    request.getRequestDispatcher("admin-template/order-detail.jsp").forward(request, response);
                    content = "Truy cập trang quản lí chi tiết đơn hàng";
                }
                if (command.equals("ok")) {
                    String idCk = request.getParameter("idCk");
                    CheckOutService.confirmCheckOutByidCk(idCk, String.valueOf(acc.getId()), nowDate);
                    response.sendRedirect("admin-order?command=list");
                    content = "Xác nhận đơn hàng" + idCk;
                    action = 2;
                    level = 2;
                }
                if (command.equals("confirm")) {
                    String idCk = request.getParameter("idCk");
                    CheckOutService.completeCheckOutByidCk(idCk, String.valueOf(acc.getId()), nowDate);
                    response.sendRedirect("admin-order?command=list");
                    content = "Xác nhận vận chuyển đơn hàng" + idCk;
                    action = 2;
                    level = 2;
                }
                if (command.equals("cance")) {
                    String idCk = request.getParameter("idCk");
                    CheckOutService.canceCheckOutByidCk(idCk, String.valueOf(acc.getId()));
                    response.sendRedirect("admin-order?command=list");
                    content = "Xác nhận hủy đơn hàng" + idCk;
                    action = 8;
                    level = 3;
                }
                if (command.equals("delete")) {
                    String IdCk = request.getParameter("IdCk");
                    CheckOutService.deleteCheckOutById(IdCk);
                    response.sendRedirect("admin-order?command=list");
                }
                if (command.equals("bill")) {
                    long total = 0;
                    NumberFormat nf = NumberFormat.getInstance();
                    nf.setMinimumFractionDigits(0);
                    String IdCk = request.getParameter("IdCk");
                    CheckOut checkOut = CheckOutService.getCheckOutByIdCk(IdCk);
                    Account account = AccountService.getAccountById(checkOut.getIdA());
                    Voucher voucher = VoucherService.getVoucherById(checkOut.getIdVoucher());
                    List<ListProductByCheckOut> list = ProductCheckoutService.getProductProductCheckoutByIdCk(String.valueOf(checkOut.getIdCk()));
                    PDDocument document = new PDDocument();

                    // tạo trang
                    PDPage page = new PDPage(PDRectangle.A4);
                    document.addPage(page);

                    // thiết lập font chữ
                    String path = "admin-template/assets/fonts/TimesNewRoman400.ttf";
                    ServletContext context = getServletContext();
                    String absolutePath = context.getRealPath(path);
                    PDFont font = PDType0Font.load(document, new File(absolutePath));

                    // tạo content stream để vẽ trên trang
                    PDPageContentStream contentStream = new PDPageContentStream(document, page);

                    // vẽ nội dung hóa đơn
                    contentStream.beginText();
                    contentStream.setFont(font, 12);
                    contentStream.moveTextPositionByAmount(50, 750);
                    contentStream.drawString("HÓA ĐƠN");
                    contentStream.moveTextPositionByAmount(0, -50);
                    contentStream.drawString("Tên khách hàng: " + account.getName());
                    contentStream.moveTextPositionByAmount(0, -20);
                    contentStream.drawString("Số hóa đơn: #" + checkOut.getIdCk());
                    contentStream.moveTextPositionByAmount(0, -20);
                    contentStream.drawString("Thời gian: " + DateUtil.getDateNow());
                    contentStream.moveTextPositionByAmount(0, -20);
                    contentStream.drawString("Địa chỉ: " + checkOut.getAddress());
                    contentStream.moveTextPositionByAmount(0, -50);
                    contentStream.drawString("Sản phẩm:");
                    String text = "";
                    int a = 0;
                    for (ListProductByCheckOut l : list) {
                        a++;
                        Product p = ProductService.getProductById(l.getIdP());
                        total += p.getPrice() * l.getQuantity();
                        text += a + ") " + p.getName() + ": " + nf.format(p.getPrice()) + "đ\n";
                        text += "x " + l.getQuantity() + ": " + nf.format(p.getPrice() * l.getQuantity()) + "đ\n";
                    }
                    String[] lines = text.split("\\n");
                    for (String line : lines) {
                        if (!line.isBlank()) {
                            contentStream.moveTextPositionByAmount(0, -20);
                            contentStream.showText(line);
                        }
                    }
                    long reduction = 0;
                    if (voucher != null) {
                        reduction = total * voucher.getPrice() / 100;
                    }
                    long priceLast = total - reduction;
                    contentStream.moveTextPositionByAmount(0, -50);
                    contentStream.drawString("Tổng hàng: " + nf.format(total) + "đ");
                    contentStream.moveTextPositionByAmount(0, -20);
                    contentStream.drawString("Giảm giá: - " + nf.format(reduction) + "đ");
                    contentStream.moveTextPositionByAmount(0, -20);
                    contentStream.drawString("Tổng đơn hàng: " + nf.format(priceLast) + "đ");

                    contentStream.moveTextPositionByAmount(0, -50);
                    contentStream.drawString("Chú ý: " + checkOut.getNote());
                    contentStream.endText();

                    // đóng content stream
                    contentStream.close();

                    // thiết lập thông tin header để tải xuống file PDF
                    response.setContentType("application/pdf");
                    response.setHeader("Content-Disposition", "attachment; filename=HoaDon.pdf");

                    // gửi document đến trình duyệt để tải xuống
                    OutputStream out = response.getOutputStream();
                    document.save(out);
                    out.flush();
                    out.close();

                    // đóng document
                    document.close();
                    content = "Xuất hóa đơn đơn hàng mã " + IdCk;
                }
                LogService.addLog(idA, action, level, ipAddress, url, content, dateNow);
            } else {
                response.sendRedirect(error404);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String ipAddress = request.getRemoteAddr();
        String url = request.getRequestURI();
        int level = 1;
        int action = 4;
        String dateNow = DateUtil.getDateNow();
        String content = "";
        int idA = 0;
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.powerAccount().getOrderManage() == 1) {
                idA = acc.getId();
                String command = request.getParameter("command");
                String idCk = request.getParameter("idCk");
                String phone = request.getParameter("phone");
                String address = request.getParameter("address");
                String name = request.getParameter("name");
                String note = request.getParameter("note");
                if (command.equals("edit")) {
                    CheckOutService.editCheckOut(idCk, String.valueOf(acc.getId()), note, phone, address, name);
                    level = 2;
                    action = 2;
                    content = "chỉnh sửa đơn hàng" + idCk;
                }
                response.sendRedirect("admin-order?command=list");
            } else {
                response.sendRedirect(error404);
            }
        }
        LogService.addLog(idA, action, level, ipAddress, url, content, dateNow);

    }
}