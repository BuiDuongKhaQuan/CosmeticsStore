<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Rang Sliders</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Range Slider Css -->
<link rel="stylesheet" href="admin-template/assets/plugins/ion-rangeslider/css/ion.rangeSlider.css" />
<!-- Custom Css -->
<link  rel="stylesheet" href="admin-template/assets/css/style.min.css">

</head>

<body class="theme-blush">

<jsp:include page="header.jsp"></jsp:include>


<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Rang Sliders</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Aero</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Components</a></li>
                        <li class="breadcrumb-item active">Rang Sliders</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>
    
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="body">
                            <p>Taken by <a href="http://ionden.com/a/plugins/ion.rangeSlider/en.html" target="_blank">ionden.com/a/plugins/ion.rangeSlider/en.html</a></p>
                            <div class="irs-demo">
                                <b>Start without params</b>
                                <input type="text" id="range_01" value="" />
                            </div>
                            <div class="irs-demo">
                                <b>Set min value, max value and start point</b>
                                <input type="text" id="range_02" value="" />
                            </div>
                            <div class="irs-demo">
                                <b>Set type to double and specify range, also showing grid and adding prefix "$"</b>
                                <input type="text" id="range_03" value="" />
                            </div>
                            <div class="irs-demo">
                                <b>Set up range with negative values</b>
                                <input type="text" id="range_04" value="" />
                            </div>
                            <div class="irs-demo">
                                <b>Using step 250</b>
                                <input type="text" id="range_05" value="" />
                            </div>
                            <div class="irs-demo">
                                <b>Set up range with fractional values, using fractional step</b>
                                <input type="text" id="range_06" value="" />
                            </div>
                            <div class="irs-demo">
                                <b>Set up you own numbers</b>
                                <input type="text" id="range_07" value="" />
                            </div>
                            <div class="irs-demo">
                                <b>Using any strings as your values</b>
                                <input type="text" id="range_08" value="" />
                            </div>
                            <div class="irs-demo">
                                <b>One more example with strings</b>
                                <input type="text" id="range_09" value="" />
                            </div>
                            <div class="irs-demo">
                                <b>No prettify. Big numbers are ugly and unreadable</b>
                                <input type="text" id="range_10" value="" />
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

<script src="admin-template/assets/plugins/ion-rangeslider/js/ion.rangeSlider.js"></script> <!-- RangeSlider Plugin Js --> 

<!-- Custom Js --> 
<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script>
<script src="admin-template/assets/js/pages/ui/range-sliders.js"></script>
</body>


</html>