<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="user-template/css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
    .field-set .form__input {
        width: 280px;
        height: 42px;
        margin-bottom: 12px;
    }
</style>
<body>
    <div class="overlay">
        <div style="padding: 20px 20px 20px 20px;
      font-size: 20px;
      color: #111;
      font-weight: 700;">
            <a href="index.html" style="text-decoration: none;
         ">Trang chủ</a>
        </div>
        <form action="signup">
            <div class="con">
                <header class="head-form">
                    <h2 style="padding-bottom: 20px;">Đăng kí</h2>
                    <p>Hãy điền đầy đủ các thông tin để đăng kí</p>
                </header>
                <br>
                <div class="field-set">

                    <input name="user" class="form__input" type="text" placeholder="Tài khoản" required/>
                    <br>
                    <input name="pass" class="form__input" type="password" placeholder="Mật khẩu" required/>
                    <br>
                    <input name="re-pass" class="form__input" type="password" placeholder="Nhập lại mật khẩu" required/>
                    <br>
                    <button class="switch__button button switch-btn">ĐĂNG KÝ</button>
                </div>
                <div class="other">
                    <a href="login.jsp" class="log-in"
                       style="background-color: rgba(255, 255, 255, 0.2); text-decoration: none;">Tôi đã có tài
                        khoản</a>

                </div>
                <br>
                <div class="other_fb" style="border-top: 2px solid #ccc; width: 80%;">
                   <p style="text-align: center;">OR</p>
                   <a href=""><i class="fa fa-facebook-official" aria-hidden="true" style="font-size: 40px; margin-left: 85px;"></i></a>
                   <a href=""> <i class="fa fa-google" aria-hidden="true" style="font-size: 40px; margin-left: 85px;"></i></a>
                </div>
            </div>
        </form>
    </div>
    <script src="user-template/js/login.js"></script>
</body>

</html>