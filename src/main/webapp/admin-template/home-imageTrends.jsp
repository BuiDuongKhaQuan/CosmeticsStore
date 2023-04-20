<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.ImageTrend" %>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

    <title>:: Aero Bootstrap4 Admin :: Product detail</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Favicon-->
    <link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Custom Css -->
    <link rel="stylesheet" href="admin-template/assets/css/style.min.css">
    <link rel="stylesheet" href="admin-template/assets/plugins/dropify/css/dropify.min.css" type="text/css">
    <link rel="stylesheet" href="admin-template/assets/plugins/dropify/css/dropify.min.css" type="text/css">

</head>

<body class="theme-blush">
<jsp:include page="header.jsp"></jsp:include>

<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">

                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Danh sách Male_Fashion </h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="blog-dashboard.jsp">Quản lí trang chủ</a></li>
                        <li class="breadcrumb-item active">Danh sách Male_Fashion</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i
                            class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i
                            class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>
        <%
            List<ImageTrend> imageTrendList = (List<ImageTrend>) request.getAttribute("imageTrendList");

        %>
        <div class="container">
            <div class="col-xl-12 col-lg-8 col-md-12"
                 style="margin: 0 auto;background: azure; margin-bottom: 40px;padding: 6px">
                <div class="row clearfix">
                    <div class="col-sm-6">
                        <label for="topic">Chủ đề</label>
                        <div class="form-group">
                            <input type="text" id="topic" class="form-control"
                                   value="<%=imageTrendList.get(0).getImg()%>">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <label>Trang thái</label>
                        <select id="status_topic"
                                class="form-control show-tick ms select2"
                                data-placeholder="Select">
                            <% String s = "";
                                if (imageTrendList.get(0).getStatus() == 1) {
                                    s = "selected";
                                }%>
                            <option value="0">Ẩn
                            </option>
                            <option value="1"<%=s%>>Hiển
                            </option>
                        </select>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-sm-6">
                        <label for="topic">Nội dung</label>
                        <div class="form-group">
                            <input type="text" id="content" class="form-control"
                                   value="<%=imageTrendList.get(1).getImg()%>">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <label>Trang thái</label>
                        <select id="status_content"
                                class="form-control show-tick ms select2"
                                data-placeholder="Select">
                            <% String s1 = "";
                                if (imageTrendList.get(1).getStatus() == 1) {
                                    s1 = "selected";
                                }%>
                            <option value="0">Ẩn
                            </option>
                            <option value="1"<%=s1%>>Hiển
                            </option>
                        </select>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-sm-6">
                        <label for="topic">Từ khóa</label>
                        <div class="form-group">
                            <input type="text" id="key" class="form-control"
                                   value="<%=imageTrendList.get(2).getImg()%>">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <label>Trang thái</label>
                        <select id="status_key"
                                class="form-control show-tick ms select2"
                                data-placeholder="Select">

                            <% String s2 = "";
                                if (imageTrendList.get(2).getStatus() == 1) {
                                    s2 = "selected";
                                }%>
                            <option value="0">Ẩn
                            </option>
                            <option value="1" <%=s2%>>Hiển
                            </option>
                        </select>
                    </div>
                </div>
            </div>
            <button type="submit" onclick="edit()"
                    class="btn btn-raised btn-primary btn-round waves-effect">Lưu
            </button>
        </div>
        <div class="container">
            <div class="row">
                <%

                    for (int i = 3; i < imageTrendList.size(); i++) {

                %>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="blogitem mb-5">

                            <div class="blogitem-image">

                                <a href="#" class="img" id="img">
                                    <img src="<%=imageTrendList.get(i).getImg()%>" style="height: 450px"
                                         alt="blog image">
                                </a>
                            </div>

                            <div class="blogitem-content">
                                <div class="form-group">
                                    <div class="form-group">
                                        <input value="<%=imageTrendList.get(i).getId()%>" type="hidden" name="id"
                                               id="id">
                                    </div>
                                </div>
                                <button class="btn-primary btn" onclick="show<%=imageTrendList.get(i).getId()%>()"><i
                                        class="zmdi zmdi-edit" style="font-size: 20px;"></i></button>

                                <div id="show<%=imageTrendList.get(i).getId()%>" class="promotion">
                                    <div class="promotion-box">
                                        <label class="title">Tùy chỉnh hình ảnh</label>
                                        <i class="zmdi zmdi-close icon-close"
                                           onclick="closeNew<%=imageTrendList.get(i).getId()%>()"></i>
                                        <div class="promotion-content">
                                            <input type="text" id="imgFs" class="form-control"
                                                   value="<%=imageTrendList.get(i).getImg()%>">
                                        </div>
                                        <button onclick="edit<%=imageTrendList.get(i).getId()%>(<%=imageTrendList.get(i).getId()%>)"
                                                class="btn btn-raised btn-primary btn-round waves-effect">
                                            Lưu
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>
    </div>
</section>
<!-- Jquery Core Js -->
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="admin-template/assets/plugins/dropify/js/dropify.min.js"></script>

<%----%>
<script>
    function edit() {
        var topic = document.getElementById("topic").value;
        var status_topic = document.getElementById("status_topic").value;
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "AdminHomeAll", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                edit1();
                edit2();
                alert("Cập nhật thông tin thành công.");
            }
        };
        xhr.send("id=1"
            + "&topic=" + encodeURIComponent(topic)
            + "&status=" + encodeURIComponent(status_topic)
            + "&command=imgtrend&action=text");
    }

    function edit1() {
        var content = document.getElementById("content").value;
        var status_content = document.getElementById("status_content").value;
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "AdminHomeAll", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            }
        };
        xhr.send("id=2"
            + "&topic=" + encodeURIComponent(content)
            + "&status=" + encodeURIComponent(status_content)
            + "&command=imgtrend&action=text");
    }

    function edit2() {
        var status_key = document.getElementById("status_key").value;
        var key = document.getElementById("key").value;
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "AdminHomeAll", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            }
        };
        xhr.send("id=3"
            + "&topic=" + encodeURIComponent(key)
            + "&status=" + encodeURIComponent(status_key)
            + "&command=imgtrend&action=text");
    }

    function edit7(id1) {
        console.log(id1)
        var img = document.getElementById("imgFs").value;
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "AdminHomeAll", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                alert("Cập nhật thông tin thành công.");
            }
        };
        console.log(img)
        xhr.send("img=" + encodeURIComponent(img)
            + "&id=" + id1
            + "&command=imgtrend");
    }
</script><!-- Custom Js -->
<script>
    $('.dropify').dropify();

    <% int a =0;
            for(int i=1; i<imageTrendList.size();i++){
            a++; %>

    function show<%=imageTrendList.get(i).getId()%>() {
        var box = document.getElementById('show<%=imageTrendList.get(i).getId()%>');
        box.style.display = 'flex';
    }

    function closeNew<%=imageTrendList.get(i).getId()%>() {
        var box = document.getElementById('show<%=imageTrendList.get(i).getId()%>');
        box.style.display = 'none';
    }


    <%}%>

</script>
</body>

</html>