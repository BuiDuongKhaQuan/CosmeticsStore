<%@ page import="qht.shopmypham.com.vn.model.Blog" %>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

    <title>:: Aero Bootstrap4 Admin ::</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Favicon-->
    <link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="admin-template/assets/plugins/summernote/dist/summernote.css"/>
    <link rel="stylesheet" href="admin-template/assets/plugins/bootstrap-select/css/bootstrap-select.css"/>
    <!-- Custom Css -->
    <link rel="stylesheet" href="admin-template/assets/css/style.min.css">
</head>

<body class="theme-blush">

<jsp:include page="header.jsp"></jsp:include>

<section class="content blog-page">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Blog Post</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="admin-home"><i class="zmdi zmdi-home"></i> Aero</a>
                        </li>
                        <li class="breadcrumb-item"><a href="blog-dashboard.jsp">Blog</a></li>
                        <li class="breadcrumb-item active">Bài đăng mới</li>
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
        <div class="container-fluid">
            <div class="row">
                <% Blog blog= (Blog) request.getAttribute("blog");%>
                <div class="col-lg-12">
                    <div class="card">
                        <div class="body">
                            <div class="form-group">
                                <input value="<%=blog.getTopic()%>" id="blog_topic" type="text" class="form-control" placeholder="Tiêu đè Blog"/>
                            </div>
                            <div class="form-group">
                                <input value="<%=blog.getImg()%>" id="blog_img" type="text" class="form-control" placeholder="Hình đại đại diện"/>
                            </div>
                            <div class="form-group">
                                <input value="<%=blog.getLinkBlog()%>" id="blog_link" type="text" class="form-control" placeholder="Link bài viết"/>
                            </div>
                            <input value="<%=blog.getIdBl()%>" type="hidden" id="IdBl">
                        </div>
                    </div>
                    <div class="card">
                        <div class="body">
                            <div class="form-line">
                             <textarea rows="4" class="form-control no-resize"
                                      id="blog_content"
                                      name="description" placeholder="Hãy nhập khái quát nội dung"><%=blog.getShortContent()%></textarea>
                            </div>
                            <button onclick="saveBlog()" type="submit" class="btn btn-info waves-effect m-t-20">CẬP NHẬT
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Jquery Core Js -->
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->

<script src="admin-template/assets/plugins/dropzone/dropzone.js"></script> <!-- Dropzone Plugin Js -->

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="admin-template/assets/plugins/summernote/dist/summernote.js"></script>

<script>
    function saveBlog() {
        var blog_topic = document.getElementById("blog_topic").value;
        var blog_img = document.getElementById("blog_img").value;
        var blog_content = document.getElementById("blog_content").value;
        var blog_link = document.getElementById("blog_link").value;
        var IdBl = document.getElementById("IdBl").value;
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "admin-blog", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                alert("Bài viết đã được cập nhật thành công.");
            }
        };
        xhr.send("topic=" + encodeURIComponent(blog_topic)
            + "&img=" + encodeURIComponent(blog_img)
            + "&content=" + encodeURIComponent(blog_content)
            + "&link=" + encodeURIComponent(blog_link)
            + "&IdBl=" + encodeURIComponent(IdBl)
            + "&command=edit");
    }
</script><!-- Custom Js -->
</body>


</html>