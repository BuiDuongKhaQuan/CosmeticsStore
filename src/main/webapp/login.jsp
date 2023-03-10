<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./user-template/css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
<div class="overlay">

    <div style="padding: 20px 20px 20px 20px;
      font-size: 20px;
      color: #111;
      font-weight: 700;">
        <a href="index.html" style="text-decoration: none;
         ">Trang chủ</a>
    </div>
    <form action="login">
        <div class="con">
            <header class="head-form">
                <h2 style="padding-bottom: 20px;">Đăng nhập</h2>
                <p>Hãy đăng nhập với tên và mật khẩu của bạn!</p>
            </header>
            <br>
            <div class="field-set">
                <input class="form-input" id="txt-input" name="user" type="text" placeholder="Tên đăng nhập" required>
                <br>
                <input class="form-input" id="txt-input" type="password" name="pass" placeholder="Mật khẩu" id="pwd"
                       required>
                <br>
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
                <button class="log-in" type="submit"> Đăng nhập</button>
            </div>
            <div class="other">
                <a href="user-template/forgot-password.jsp" class="btn submits frgt-pass">Quên mật khẩu ?</a>
                <a href="signUp.jsp" class="btn submits sign-up">Đăng kí
                </a>
            </div>
            <br>
            <div class="other_fb" style="border-top: 2px solid #ccc; width: 80%;">
                <p style="text-align: center;">OR</p>
                <div class="form__icons" style="margin-top: 30px">
                    <fb:login-button scope="public_profile,email" onlogin="checkLoginState()">
                    </fb:login-button>
                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/ShopMyPham_war_exploded/login-google&response_type=code
                    &client_id=70792321459-u2vj38c8q86v2l64qj98jpst4kme46rg.apps.googleusercontent.com&approval_prompt=force">
                        <i class="fa fa-google" aria-hidden="true" style="font-size: 40px; margin-left: 85px;"></i></a>
                    <div id="status" style="display: none"></div>
                </div>
                <%--                <a href="https://www.facebook.com/dialog/oauth?client_id=YOUR_APP_ID&redirect_uri=YOUR_REDIRECT_URI&scope=email,user_birthday">--%>
                <%--                    <i class="fa fa-facebook-official" aria-hidden="true"--%>
                <%--                              style="font-size: 40px; margin-left: 85px;"></i></a>--%>
            </div>
        </div>
    </form>
</div>
<script src="./user-template/js/login.js"></script>
<script>

    function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
        console.log('statusChangeCallback');
        console.log(response);                   // The current login status of the person.
        if (response.status === 'connected') {   // Logged into your webpage and Facebook.
            testAPI();
        } else {                                 // Not logged into your webpage or we are unable to tell.
            document.getElementById('status').innerHTML = 'Please log ' +
                'into this webpage.';
        }
    }


    function checkLoginState() {               // Called when a person is finished with the Login Button.
        FB.getLoginStatus(function (response) {   // See the onlogin handler
            statusChangeCallback(response);
        });
    }


    window.fbAsyncInit = function () {
        FB.init({
            appId: '713236200417479',
            cookie: true,                     // Enable cookies to allow the server to access the session.
            xfbml: true,                     // Parse social plugins on this webpage.
            version: 'v16.0'           // Use this Graph API version for this call.
        });


        FB.getLoginStatus(function (response) {   // Called after the JS SDK has been initialized.
            statusChangeCallback(response);        // Returns the login status.
        });
    };

    function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
        console.log('Welcome!  Fetching your information.... ');
        FB.api('/me', function (response) {
            console.log('Successful login for: ' + response.name);
            document.getElementById('status').innerHTML =
                'Thanks for logging in, ' + response.name + '!';
            window.location.href = 'login-facebook?name=' + response.name + '&id=' + response.id;

        });
    }

</script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>

</body>

</html>