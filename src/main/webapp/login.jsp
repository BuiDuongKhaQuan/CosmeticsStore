<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Shop Mỹ Phẩm QST</title>
    <link rel="stylesheet" href="user-template/css/login.css"/>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
</head>
<body>

<div class="wrapper">
    <span class="icon-close"><ion-icon name="close"></ion-icon></span>
    <div class="form-box login">
        <h2>Đăng nhập</h2>
        <form action="login">
            <div class="input-box">
                <span class="icon"><ion-icon name="mail-outline"></ion-icon></span>
                <input type="text" name="user" required/>
                <label>Tài khoản</label>
            </div>
            <div class="input-box">
            <span class="icon"
            ><ion-icon name="lock-open-outline"></ion-icon
            ></span>
                <input type="password" name="pass" required/>
                <label>Mật khẩu</label>
            </div>
            <% String mess = (String) request.getAttribute("mess");
                if (mess != null) {%>
            <div class="alert-danger"
                 style="margin-top: 20px;
                        color: white;
                        background-color: #ff0000;
                        font-size: 20px;
                        font-weight: 900;
                        padding: 10px;
                        border-radius: 5px;">
                <%= mess %>
            </div>
            <%}%>
            <div class="remember-forgot">
                <label><input type="checkbox"/>Nhớ mật khẩu</label>
                <a href="#">Quên mật khẩu?</a>
            </div>
            <button type="submit" class="btn">Đăng nhập</button>
            <div class="login-register">
                <p>
                    Bạn chưa có tài khoản?
                    <a href="#" class="register-link">Đăng ký</a>
                </p>
            </div>
            <div
                    class="other_fb"
                    style="
              display: flex;
              justify-content: center;
              flex-direction: column;
              align-items: center;
            "
            >
                <div
                        style="
                border-top: 2px solid #ccc;
                width: 80%;
                height: 0%;
                margin-bottom: 5px;
              "
                ></div>
                <div><p style="height: 2%">OR</p></div>
                <div class="form__icons" style="">
                    <a
                            href="https://www.facebook.com/v16.0/dialog/oauth?client_id=713236200417479&redirect_uri=http://localhost:8080/ShopMyPham_war_exploded/login-facebook"
                    ><i
                            class="fa fa-facebook-official"
                            aria-hidden="true"
                            style="font-size: 40px"
                    ></i
                    ></a>
                    <a
                            href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/ShopMyPham_war_exploded/login-google&response_type=code
                    &client_id=70792321459-u2vj38c8q86v2l64qj98jpst4kme46rg.apps.googleusercontent.com&approval_prompt=force"
                    >
                        <i
                                class="fa fa-google"
                                aria-hidden="true"
                                style="font-size: 40px; margin-left: 85px"
                        ></i
                        ></a>
                </div>
            </div>
        </form>
    </div>
    <div class="form-box register">
        <h2>Sign Up</h2>
        <form action="signup" method="post">
            <div class="input-box">
            <span class="icon"
            ><ion-icon name="person-outline"></ion-icon
            ></span>
                <input type="text" name="user" required/>
                <label>Tên tài khoản</label>
            </div>
            <div class="input-box">
                <span class="icon"><ion-icon name="mail-outline"></ion-icon></span>
                <input type="text" name="email" required/>
                <label>Email</label>
            </div>
            <div class="input-box">
            <span class="icon"
            ><ion-icon name="lock-open-outline"></ion-icon
            ></span>
                <input type="password" name="pass" required/>
                <label>Mật khẩu</label>
            </div>
            <div class="input-box">
            <span class="icon"
            ><ion-icon name="lock-open-outline"></ion-icon
            ></span>
                <input type="password" name="re-pass" required/>
                <label>Nhập lại mật khẩu</label>
            </div>
            <div class="remember-forgot">
                <label
                ><input type="checkbox"/>Tôi đồng ý với các điều khoản & dịch
                    vụ</label
                >
            </div>
            <button type="submit" class="btn">Đăng ký</button>
            <div class="login-register">
                <p>
                    Bạn đã có tài khoản?
                    <a href="#" class="login-link">Đăng nhập </a>
                </p>
            </div>
            <div
                    class="other_fb"
                    style="
              display: flex;
              justify-content: center;
              flex-direction: column;
              align-items: center;
            "
            >
                <div
                        style="
                border-top: 2px solid #ccc;
                width: 80%;
                height: 0%;
                margin-bottom: 5px;
              "
                ></div>
                <div><p style="height: 2%">OR</p></div>
                <div class="form__icons" style="">
                    <a
                            href="https://www.facebook.com/v16.0/dialog/oauth?client_id=713236200417479&redirect_uri=http://localhost:8080/ShopMyPham_war_exploded/login-facebook"
                    ><i
                            class="fa fa-facebook-official"
                            aria-hidden="true"
                            style="font-size: 40px"
                    ></i
                    ></a>
                    <a
                            href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/ShopMyPham_war_exploded/login-google&response_type=code
                    &client_id=70792321459-u2vj38c8q86v2l64qj98jpst4kme46rg.apps.googleusercontent.com&approval_prompt=force"
                    >
                        <i
                                class="fa fa-google"
                                aria-hidden="true"
                                style="font-size: 40px; margin-left: 85px"
                        ></i
                        ></a>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="user-template/js/prosvip-login.js"></script>
<script
        type="module"
        src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
></script>
<script
        nomodule
        src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
></script>
</body>
</html>
