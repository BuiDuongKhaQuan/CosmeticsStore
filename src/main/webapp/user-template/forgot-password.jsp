<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop Mỹ Phẩm QST</title>
    <link rel="stylesheet" href="user-template/css/login.css">
</head>
<body>
    <div class="overlay">
        <form action="forgot-password" method="post">
           <div class="con">
           <header class="head-form">
              <h2 style="padding-bottom: 20px;">ĐẶT LẠI MẬT KHẨU</h2>
              
           </header>
           <br>
           <div class="field-set">
                 <span class="input-item">
                   <i class="fa fa-user-circle"></i>
                 </span>
                 <input class="form-input" id="txt-input" name="user" type="text" placeholder="Tên tài khoản" required>
              <br>
              <input class="form-input" id="txt-input" name="email" type="text" placeholder="E-mail" id="pwd" required>
              <br>
               <%
                   String message = (String) request.getAttribute("message");
                   Account acc = (Account) request.getAttribute("acc");
                   if (acc != null) {
                       if (message != null) {
               %>
               <div class="alert-danger"
                    style="margin-top: 20px;
                        margin-bottom: -25px;
                        color: #000000;
                        background-color: #6eff3e;
                        font-size: 20px;
                        font-weight: 900;
                        padding: 10px;
                        border-radius: 5px;">
                   <%= message %>
               </div>
               <%
                       }
                   }
                   if (acc == null) {
                       if (message != null) {
               %>
               <div class="alert-danger"
                    style="margin-top: 20px;
                        margin-bottom: -25px;
                        color: #000000;
                        background-color: #ff0000;
                        font-size: 20px;
                        font-weight: 900;
                        padding: 10px;
                        border-radius: 5px;">
                   <%= message %>
               </div>
               <%
                       }
                   }
               %>
              <button type="submit" class="log-in"> Xác nhận</button>
           </div>
          </div>
        </form>
        </div>
        <script src="user-template/js/login.js"></script>
</body>
</html>