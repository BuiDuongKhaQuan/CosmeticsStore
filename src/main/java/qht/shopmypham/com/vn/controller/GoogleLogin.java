package qht.shopmypham.com.vn.controller;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.auth.oauth2.TokenResponseException;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeRequestUrl;
import com.google.api.client.googleapis.auth.oauth2.GoogleTokenResponse;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
@WebServlet(name = "GoogleLogin", value = "/GoogleLogin")
public class GoogleLogin extends HttpServlet {
    private static final String CLIENT_ID = "70792321459-u2vj38c8q86v2l64qj98jpst4kme46rg.apps.googleusercontent.com";
    private static final String CLIENT_SECRET = "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";
    private static final String REDIRECT_URI = "http://localhost:8080/ShopMyPham_war_exploded/call";
    private static final List<String> SCOPES = Arrays.asList("profile", "email");

    private static final HttpTransport HTTP_TRANSPORT;

    static {
        try {
            HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
        } catch (GeneralSecurityException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static final JacksonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();

    private static GoogleAuthorizationCodeFlow flow;

    static {
        flow = new GoogleAuthorizationCodeFlow.Builder(
                HTTP_TRANSPORT, JSON_FACTORY, CLIENT_ID, CLIENT_SECRET, SCOPES)
                .build();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        GoogleAuthorizationCodeRequestUrl url = flow.newAuthorizationUrl()
                .setRedirectUri(REDIRECT_URI);
        String authorizeUrl = url.build();
        resp.sendRedirect(authorizeUrl);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String code = req.getParameter("code");
        System.out.println(code);

        try {
            GoogleTokenResponse tokenResponse = flow.newTokenRequest(code)
                    .setRedirectUri(REDIRECT_URI)
                    .execute();

            Credential credential = flow.createAndStoreCredential(tokenResponse, null);

            // Lưu thông tin user vào session để sử dụng cho các trang khác.
            req.getSession().setAttribute("user", credential.getAccessToken());
            String u = (String) req.getSession().getAttribute("user");
            resp.sendRedirect("home");
        } catch (TokenResponseException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Lỗi xác thực: " + e.getMessage());
        }
    }
}

