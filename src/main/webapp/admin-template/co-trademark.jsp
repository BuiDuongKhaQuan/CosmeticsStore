<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

    <title>:: Aero Bootstrap4 Admin :: Product list</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Favicon-->
    <link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="admin-template/assets/plugins/footable-bootstrap/css/footable.bootstrap.min.css">
    <link rel="stylesheet" href="admin-template/assets/plugins/footable-bootstrap/css/footable.standalone.min.css">

    <!-- Custom Css -->
    <link rel="stylesheet" href="admin-template/assets/css/style.min.css">
</head>

<body class="theme-blush">

<jsp:include page="../../../../../../ShopMyPham_v9.1.5/ShopMyPham_v9.1.5/src/main/webapp/admin-template/header.jsp"></jsp:include>


<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Danh sách thương hiệu</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../../../../../../ShopMyPham_v9.1.5/ShopMyPham_v9.1.5/src/main/webapp/admin-template/index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item">Quản lí chung</li>
                        <li class="breadcrumb-item active">Danh sách thương hiệu</li>
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
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="table-responsive">
                            <table id="table_id" class="table table-hover product_item_list c_table theme-color mb-0">
                                <thead>
                                <tr>
                                    <th>Mã</th>
                                    <th data-breakpoints="xs">Tên thương hiệu</th>
                                    <th data-breakpoints="xs">Trạng thái</th>
                                    <th data-breakpoints="sm xs md">Hành động</th>

                                </tr>
                                </thead>
                                <tbody>
                                <% List<Trademark> trademarkList = (List<Trademark>) request.getAttribute("trademarkList");
                                    String status = "";
                                    for (Trademark trademark : trademarkList) {
                                        if (trademark.getStatus() == 0) {
                                            status = "Đang ẩn";
                                        } else {
                                            status = "Đang hiện";
                                        }
                                %>
                                <tr>
                                    <td><h5># <%=trademark.getIdTrademark()%>
                                    </h5>
                                    </td>
                                    <td><%=trademark.getName()%>
                                    </td>
                                    <td><span class="col-green"><%=status%></span></td>
                                    <td>
                                        <button class="btn btn-default waves-effect waves-float btn-sm waves-green"
                                                onclick="show<%=trademark.getIdTrademark()%>()"><i
                                                class="zmdi zmdi-edit"></i>
                                        </button>
                                        <div id="show<%=trademark.getIdTrademark()%>" style="display: none"
                                             class="promotion">
                                            <div class="promotion-box" style=" min-height: 700px">
                                                <h2 style="padding: 12px;margin-bottom: -30px">Chỉnh sửa thông tin thương hiệu</h2>
                                                <i class="zmdi zmdi-close icon-close"
                                                   onclick="closeNew<%=trademark.getIdTrademark()%>()"></i>
                                                <div class="promotion-content">
                                                    <img src="<%=trademark.getLogo()%> " style="height: 60px; width: 60px; margin: 0 auto">

                                                    <label for="name<%=trademark.getIdTrademark()%>">Tên thương
                                                        hiệu:</label>
                                                    <textarea id="name<%=trademark.getIdTrademark()%>" type="text"
                                                              class="form-control"><%=trademark.getName()%></textarea>
                                                    <label for="address<%=trademark.getIdTrademark()%>"
                                                           style="margin-top: 20px">Địa chỉ: </label>
                                                    <textarea id="address<%=trademark.getIdTrademark()%>" type="text"
                                                              class="form-control"><%=trademark.getAddress()%></textarea>

                                                    <label for="logo<%=trademark.getIdTrademark()%>"
                                                           style="margin-top: 20px">Logo: </label>
                                                    <textarea id="logo<%=trademark.getIdTrademark()%>" type="text"
                                                              class="form-control"><%=trademark.getLogo()%></textarea>

                                                    <label for="phone<%=trademark.getIdTrademark()%>"
                                                           style="margin-top: 20px">Điện thoại: </label>
                                                    <textarea id="phone<%=trademark.getIdTrademark()%>" type="text"
                                                              class="form-control"><%=trademark.getPhone()%></textarea>


                                                    <label for="status<%=trademark.getIdTrademark()%>"
                                                           style="margin-top: 20px"><i
                                                            class="zmdi zmdi-delicious"> Trạng thái</i></label>
                                                    <select id="status<%=trademark.getIdTrademark()%>"
                                                            class="form-control show-tick ms select2"
                                                            data-placeholder="Select">
                                                        <% String selected = "";
                                                            if (trademark.getStatus() == 1) {
                                                                selected = "selected";
                                                            }
                                                        %>
                                                        <option value="0">Ẩn
                                                        </option>
                                                        <option value="1" <%=selected%>>Hiện
                                                        </option>
                                                    </select>
                                                </div>
                                                <button onclick="edit<%=trademark.getIdTrademark()%>(<%=trademark.getIdTrademark()%>)"
                                                        class="btn btn-raised btn-primary btn-round waves-effect">
                                                    Lưu
                                                </button>
                                            </div>
                                        </div>
                                        <a href="admin-general?command=deleteTrademark&idT=<%=trademark.getIdTrademark()%>"
                                           class="btn btn-default waves-effect waves-float btn-sm waves-red"><i
                                                class="zmdi zmdi-delete"></i></a>
                                    </td>
                                </tr>
                                <%}%>
                                </tbody>
                            </table>
                            <a href="admin-general?command=addTrademark"
                                class="btn btn-default waves-effect waves-float btn-sm waves-red"><i class="zmdi zmdi-collection-plus" style="font-size: 20px"> Thêm thương hiệu</i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    <%
    for (Trademark trademark : trademarkList) {
    %>

    function show<%=trademark.getIdTrademark()%>() {
        var box = document.getElementById('show<%=trademark.getIdTrademark()%>');
        box.style.display = 'flex';
    }

    function closeNew<%=trademark.getIdTrademark()%>() {
        var box = document.getElementById('show<%=trademark.getIdTrademark()%>');
        box.style.display = 'none';
    }

    function edit<%=trademark.getIdTrademark()%>(idT) {
        var name = document.getElementById("name<%=trademark.getIdTrademark()%>").value;
        var address = document.getElementById("address<%=trademark.getIdTrademark()%>").value;
        var logo = document.getElementById("logo<%=trademark.getIdTrademark()%>").value;
        var phone = document.getElementById("phone<%=trademark.getIdTrademark()%>").value;
        var status = document.getElementById("status<%=trademark.getIdTrademark()%>").value;
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "admin-general", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                alert("chỉnh sửa thành công")
                window.location.href = "admin-general?command=trademark";
            }
        };
        xhr.send("name=" + encodeURIComponent(name)
            + "&idT=" + encodeURIComponent(idT)
            + "&address=" + encodeURIComponent(address)
            + "&logo=" + encodeURIComponent(logo)
            + "&phone=" + encodeURIComponent(phone)
            + "&status=" + encodeURIComponent(status)
            + "&command=editTrademark");
    }

    <%}%>
</script>
<!-- Jquery Core Js -->
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->

<script src="admin-template/assets/bundles/footable.bundle.js"></script> <!-- Lib Scripts Plugin Js -->

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="admin-template/assets/js/pages/tables/footable.js"></script><!-- Custom Js -->

</body>


</html>