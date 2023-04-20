package qht.shopmypham.com.vn.controller;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.auth.oauth2.TokenResponseException;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleTokenResponse;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.*;


import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "Home", value = "/home")
public class UserHome extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list10UserProduct1 = ProductService.getTop10ProductByIdC(String.valueOf(ShopService.getOffer().get(0).getIdC2()));
        List<Product> list10UserProduct2 = ProductService.getTop10ProductByIdC(String.valueOf(ShopService.getOffer().get(1).getIdC2()));
        List<Categories> top6Categories = CategoryService.getTop6Categories();
        List<Product> productList12 = ProductService.getTop12Product();
        List<Trademark> listTrademark = SliderSerivce.getAllTrademark();
        List<Offer> listOffer = ShopService.getOffer();
        List<Slider> listSlider = SliderSerivce.getListSlider();
        List<Blog> blogList3 = BlogService.get3Blog();
        List<Categories> top3 = CategoryService.getTop3();
        List<Product> listTop8IsNew = ProductService.getTop8ProductIsNew();
        List<Product> lisTop8Promotion = ProductService.getTop8IsPromotion();

            request.setAttribute("lisTop8Promotion", lisTop8Promotion);
            request.setAttribute("listTop8IsNew", listTop8IsNew);
            request.setAttribute("top3", top3);
            request.setAttribute("blogList3", blogList3);
            request.setAttribute("productList12", productList12);
            request.setAttribute("listSlider", listSlider);
            request.setAttribute("listOffer", listOffer);
            request.setAttribute("activeHome", "active");
            request.setAttribute("listTrademark", listTrademark);
            request.setAttribute("top6Categories", top6Categories);
            request.setAttribute("list10Product1", list10UserProduct1);
            request.setAttribute("list10Product2", list10UserProduct2);

            request.getRequestDispatcher("/user-template/home.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
