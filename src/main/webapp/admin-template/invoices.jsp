<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Invoice</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet" href="admin-template/assets/css/style.min.css">
</head>

<body class="theme-blush">

<jsp:include page="header.jsp"></jsp:include>


<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Hóa đơn</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item active">Pages</li>
                        <li class="breadcrumb-item active">Hóa đơn</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="body">
                            <h5><strong>Mã đơn hàng: </strong> #123456</h5>
                            <div class="row">                                
                                <div class="col-md-6 col-sm-6">
                                    <address>
                                        <strong>ThemeMakker Inc.</strong><br>
                                        795 Folsom Ave, Suite 546 San Francisco, CA 54656<br>
                                        <abbr title="Phone">P:</abbr> (123) 456-34636
                                    </address>
                                </div>
                                <div class="col-md-6 col-sm-6 text-right">
                                    <p class="mb-0"><strong>Ngày đặt hàng: </strong> Dec 02, 2019</p>
                                    <p class="mb-0"><strong>Trạng thái đơn hàng: </strong> <span class="badge badge-success">Success</span></p>                                    
                                </div>
                            </div>
                        </div>                            
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-hover c_table theme-color">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th width="60px">Tên</th>
                                                <th></th>
                                                <th class="hidden-sm-down">Mô tả</th>
                                                <th>Số lượng</th>
                                                <th class="hidden-sm-down">Đơn giá</th>
                                                <th>Tổng đơn giá</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td><img src="admin-template/assets/images/ecommerce/1.png" width="40" alt="Product img"></td>
                                                <td>Simple Black Clock</td>
                                                <td class="hidden-sm-down">Lorem ipsum dolor sit amet.</td>
                                                <td>1</td>
                                                <td class="hidden-sm-down">$380</td>
                                                <td>$380</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td><img src="admin-template/assets/images/ecommerce/2.png" width="40" alt="Product img"></td>
                                                <td>Brone Candle</td>
                                                <td class="hidden-sm-down">There are many variations of passages of Lorem Ipsum</td>
                                                <td>5</td>
                                                <td class="hidden-sm-down">$50</td>
                                                <td>$250</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td><img src="admin-template/assets/images/ecommerce/3.png" width="40" alt="Product img"></td>
                                                <td>Wood Simple Clock</td>
                                                <td class="hidden-sm-down">Lorem ipsum dolor sit amet.</td>
                                                <td>2</td>
                                                <td class="hidden-sm-down">$500</td>
                                                <td>$1000</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td><img src="admin-template/assets/images/ecommerce/4.png" width="40" alt="Product img"></td>
                                                <td>Unero Small Bag</td>
                                                <td class="hidden-sm-down">Contrary to popular belief, Lorem Ipsum is not simply random text</td>
                                                <td>3</td>
                                                <td class="hidden-sm-down">$300</td>
                                                <td>$900</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="body">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5>Chú ý</h5>
                                    <p>Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra.</p>
                                </div>
                                <div class="col-md-6 text-right">
                                    <ul class="list-unstyled">
                                        <li><strong>Tổng thu:</strong> 2930.00</li>
                                        <li class="text-danger"><strong>Giảm giá:-</strong> 12.9%</li>
                                        <li><strong>VAT:-</strong> 12.9%</li>
                                    </ul>                                    
                                    <h3 class="mb-0 text-success">USD 2930.00</h3>
                                    <a href="javascript:void(0);" class="btn btn-info"><i class="zmdi zmdi-print"></i></a>
                                    <a href="javascript:void(0);" class="btn btn-primary">GỬI</a>
                                </div>
                            </div>
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

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
</body>


</html>