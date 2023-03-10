<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Advanced Form Elements</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link  rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Morris Chart Css-->
<link rel="stylesheet" href="admin-template/assets/plugins/morrisjs/morris.css" />
<!-- Colorpicker Css -->
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css" />
<!-- Multi Select Css -->
<link rel="stylesheet" href="admin-template/assets/plugins/multi-select/css/multi-select.css">
<!-- Bootstrap Spinner Css -->
<link rel="stylesheet" href="admin-template/assets/plugins/jquery-spinner/css/bootstrap-spinner.css">
<!-- Bootstrap Tagsinput Css -->
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css">
<!-- Bootstrap Select Css -->
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap-select/css/bootstrap-select.css" />
<!-- noUISlider Css -->
<link rel="stylesheet" href="admin-template/assets/plugins/nouislider/nouislider.min.css" />
<!-- Select2 -->
<link rel="stylesheet" href="admin-template/assets/plugins/select2/select2.css" />

<!-- Custom Css -->
<link rel="stylesheet" href="admin-template/assets/css/style.min.css">
</head>

<body class="theme-blush">

<jsp:include page="header.jsp"></jsp:include>
<!-- Main Content -->
<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Các phần Form</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Tổng quan</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Forms</a></li>
                        <li class="breadcrumb-item active">Form nâng cao</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>                                
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <!-- Color Pickers -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>BẢNG CHỌN</strong> MÀU</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Chỉnh sửa </a></li>
                                        <li><a href="javascript:void(0);">Xóa</a></li>
                                        <li><a href="javascript:void(0);">Báo cáo</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label>Mã HEX </label>
                                        <div class="input-group colorpicker">
                                            <input type="text" class="form-control" value="#00AABB">
                                            <div class="input-group-append">
                                                <span class="input-group-text"><span class="input-group-addon"> <i></i> </span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label>Mã RGB(A) </label>
                                        <div class="input-group colorpicker">
                                            <input type="text" class="form-control" value="rgba(0,0,0,0.7)">
                                            <div class="input-group-append">
                                                <span class="input-group-text"><span class="input-group-addon"> <i></i> </span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Star Rating Input -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>ĐÁNH GIÁ ĐẦU VÀO</strong> </h2>
                        </div>
                        <div class="body">
                            <form class="rating">
                                <label>
                                    <input type="radio" name="stars" value="1" />
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                </label>
                                <label>
                                    <input type="radio" name="stars" value="2" />
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                </label>
                                <label>
                                    <input type="radio" name="stars" value="3" />
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>   
                                </label>
                                <label>
                                    <input type="radio" name="stars" value="4" />
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                </label>
                                <label>
                                    <input type="radio" name="stars" value="5" />
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                    <span class="icon"><i class="zmdi zmdi-star"></i></span>
                                </label>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Advanced Select2 -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>NÂNG CAO</strong> </h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Hành động</a></li>
                                        <li><a href="javascript:void(0);">Hành động khác</a></li>
                                        <li><a href="javascript:void(0);">Khác</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-lg-3 col-md-6">
                                    <p> <b>Cơ bản</b> </p>
                                    <select class="form-control show-tick ms select2" data-placeholder="Select">
                                        <option></option>
                                        <option>Mustard</option>
                                        <option>Ketchup</option>
                                        <option>Relish</option>
                                    </select>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <p> <b>Với OptGroups</b> </p>
                                    <select class="form-control show-tick ms select2" data-placeholder="Select">
                                        <option></option>
                                        <optgroup label="Picnic">
                                        <option>Mustard</option>
                                        <option>Ketchup</option>
                                        <option>Relish</option>
                                        </optgroup>
                                        <optgroup label="Camping">
                                        <option>Tent</option>
                                        <option>Flashlight</option>
                                        <option>Toilet Paper</option>
                                        </optgroup>
                                    </select>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <p> <b>Nhiều lựa chọn</b> </p>
                                    <select class="form-control show-tick ms select2" multiple data-placeholder="Select">
                                        <option>Mustard</option>
                                        <option>Ketchup</option>
                                        <option>Relish</option>
                                    </select>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <p> <b>Với nút xóa</b> </p>
                                    <select class="form-control show-tick ms search-select" data-placeholder="Select">
                                        <option></option>
                                        <option>Hot Dog, Fries and a Soda</option>
                                        <option>Burger, Shake and a Smile</option>
                                        <option>Sugar, Spice and all things nice</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row clearfix m-t-30">
                                <div class="col-lg-3 col-md-6">
                                    <p> <b> Giới hạn lựa chọn tối đa: 2</b> </p>
                                    <select id="max-select" class="form-control show-tick ms" multiple>
                                        <option></option>
                                        <optgroup label="Condiments" data-max-options="2">
                                        <option>Mustard</option>
                                        <option>Ketchup</option>
                                        <option>Relish</option>
                                        </optgroup>
                                        <optgroup label="Breads" data-max-options="2">
                                        <option>Plain</option>
                                        <option>Steamed</option>
                                        <option>Toasted</option>
                                        </optgroup>
                                    </select>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <p> <b>Đang tải dữ liệu</b> </p>
                                    <input type="hidden" id="loading-select" class="form-control"/>
                                    
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <p> <b>Đang tải dữ liệu mảng</b> </p>
                                    <input type="hidden" id="array-select" class="form-control">
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <p>Tùy chọn vô hiệu hóa</p>
                                    <select class="form-control show-tick ms select2" data-placeholder="Select">
                                        <option></option>
                                        <option>Mustard</option>
                                        <option disabled>Ketchup</option>
                                        <option>Relish</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Masked Input -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Masked</strong> Input</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Sửa</a></li>
                                        <li><a href="javascript:void(0);">Xóa</a></li>
                                        <li><a href="javascript:void(0);">Báp cáo</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-lg-4 col-md-6">
                                    <label>Ngày</label>
                                    <div class="input-group masked-input">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-calendar"></i></span>
                                        </div>
                                        <input type="text" class="form-control date" placeholder="Ex: 30/07/2016">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <label>Giờ (24 giờ)</label>
                                    <div class="input-group masked-input mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-time"></i></span>
                                        </div>
                                        <input type="text" class="form-control time24" placeholder="Ex: 23:59">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <label>Thời gian (12 giờ)</label>
                                    <div class="input-group masked-input mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-time"></i></span>
                                        </div>
                                        <input type="text" class="form-control time12" placeholder="Ex: 11:59 pm">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <label>Ngày giờ</label>
                                    <div class="input-group masked-input mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-calendar-note"></i></span>
                                        </div>
                                        <input type="text" class="form-control datetime" placeholder="Ex: 30/07/2016 23:59">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <label>Số điện thoại di động</label>
                                    <div class="input-group masked-input mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-smartphone"></i></span>
                                        </div>
                                        <input type="text" class="form-control mobile-phone-number" placeholder="Ex: +00 (000) 000-00-00">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <label>Địa chỉ</label>
                                    <div class="input-group masked-input mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-phone"></i></span>
                                        </div>
                                        <input type="text" class="form-control mobile-phone-number" placeholder="Ex: +00 (000) 000-00-00">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <label>Tiền (VND)</label>
                                    <div class="input-group masked-input mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-money"></i></span>
                                        </div>
                                        <input type="text" class="form-control money-dollar" placeholder="Ex: 99,99 $">
                                    </div>
                                </div>                               
                                <div class="col-lg-4 col-md-6">
                                    <label>Ngày</label>
                                    <div class="input-group masked-input mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-laptop"></i></span>
                                        </div>
                                        <input type="text" class="form-control ip" placeholder="Ex: 255.255.255.255">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <label>Thẻ tín dụng</label>
                                    <div class="input-group masked-input mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-card"></i></span>
                                        </div>
                                        <input type="text" class="form-control credit-card" placeholder="Ex: 0000 0000 0000 0000">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <label>Địa chỉ email</label>
                                    <div class="input-group masked-input mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-email"></i></span>
                                        </div>
                                        <input type="text" class="form-control email" placeholder="Ex: example@example.com">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <label>Khóa nối tiếp</label>
                                    <div class="input-group masked-input mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-key"></i></span>
                                        </div>
                                        <input type="text" class="form-control key" placeholder="Ex: XXX0-XXXX-XX00-0XXX">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Multi Select -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2> <strong>ĐA LỰA CHỌN</strong> </h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Sửa </a></li>
                                        <li><a href="javascript:void(0);">Xóa</a></li>
                                        <li><a href="javascript:void(0);">Báo cáo</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <select id="optgroup" class="ms" multiple="multiple">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Multi Select -->
            
            <div class="row clearfix"> 
                <!-- Spinners -->
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Spinners</strong></h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Sửa </a></li>
                                        <li><a href="javascript:void(0);">Xóa</a></li>
                                        <li><a href="javascript:void(0);">Báo cáo</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                             <div class="row clearfix">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <div class="input-group spinner" data-trigger="spinner">
                                            <input type="text" class="form-control text-center" value="1" data-rule="quantity">
                                            <div class="input-group-append">
                                                <span class="input-group-text">
                                                    <a href="javascript:void(0);" class="spin-up" data-spin="up"><i class="zmdi zmdi-caret-up"></i></a>
                                                    <a href="javascript:void(0);" class="spin-down" data-spin="down"><i class="zmdi zmdi-caret-down"></i></a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <div class="input-group spinner" data-trigger="spinner">
                                            <input type="text" class="form-control text-center" value="1" data-rule="currency">
                                            <div class="input-group-append">
                                                <span class="input-group-text">
                                                    <a href="javascript:void(0);" class="spin-up" data-spin="up"><i class="zmdi zmdi-caret-up"></i></a>
                                                    <a href="javascript:void(0);" class="spin-down" data-spin="down"><i class="zmdi zmdi-caret-down"></i></a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Tags Input -->
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Tags</strong> Input</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Sửa </a></li>
                                        <li><a href="javascript:void(0);">Xóa</a></li>
                                        <li><a href="javascript:void(0);">Báo cáo</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="form-group mb-0">
                                <div class="form-line">
                                    <input type="text" class="form-control" data-role="tagsinput" value="Amsterdam,Sydney,Cairo">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- #END# Tags Input --> 
            </div>

            <!-- Advanced Select -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Advanced</strong> Select</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Sửa </a></li>
                                        <li><a href="javascript:void(0);">Xóa</a></li>
                                        <li><a href="javascript:void(0);">Báo cáo</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-lg-4 col-md-6">
                                    <p>Cơ bản</p>
                                    <div class="mb-3">
                                        <select class="form-control show-tick">
                                            <option>Mustard</option>
                                            <option>Ketchup</option>
                                            <option>Relish</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <p>Với OptGroups</p>
                                    <div class="mb-3">
                                        <select class="form-control show-tick">
                                            <optgroup label="Picnic">
                                                <option>Mustard</option>
                                                <option>Ketchup</option>
                                                <option>Relish</option>
                                            </optgroup>
                                            <optgroup label="Camping">
                                                <option>Tent</option>
                                                <option>Flashlight</option>
                                                <option>Toilet Paper</option>
                                            </optgroup>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <p>Nhiều lựa chọn</p>
                                    <div class="mb-3">
                                        <select class="form-control show-tick" multiple>
                                            <option>Mustard</option>
                                            <option>Ketchup</option>
                                            <option>Relish</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <p>Với thanh tìm kiếm</p>
                                    <div class="mb-3">
                                        <select class="form-control show-tick" data-live-search="true">
                                            <option>Hot Dog, Fries and a Soda</option>
                                            <option>Burger, Shake and a Smile</option>
                                            <option>Sugar, Spice and all things nice</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <p>Giới hạn số lượng chọn: 2</p>
                                    <div class="mb-3">
                                        <select class="form-control show-tick" multiple>
                                            <optgroup label="Condiments" data-max-options="2">
                                                <option>Mustard</option>
                                                <option>Ketchup</option>
                                                <option>Relish</option>
                                            </optgroup>
                                            <optgroup label="Breads" data-max-options="2">
                                                <option>Plain</option>
                                                <option>Steamed</option>
                                                <option>Toasted</option>
                                            </optgroup>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <p>Số lượng hiển thị</p>
                                    <div class="mb-3">
                                        <select class="form-control show-tick" multiple data-selected-text-format="count">
                                            <option>Mustard</option>
                                            <option>Ketchup</option>
                                            <option>Relish</option>
                                            <option>Onions</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <p>Với SubText</p>
                                    <div class="mb-3">
                                        <select class="form-control show-tick" data-show-subtext="true">
                                            <option data-subtext="French's">Mustard</option>
                                            <option data-subtext="Heinz">Ketchup</option>
                                            <option data-subtext="Sweet">Relish</option>
                                            <option data-subtext="Miracle Whip">Mayonnaise</option>
                                            <option data-divider="true"></option>
                                            <option data-subtext="Honey">Barbecue Sauce</option>
                                            <option data-subtext="Ranch">Salad Dressing</option>
                                            <option data-subtext="Sweet &amp; Spicy">Tabasco</option>
                                            <option data-subtext="Chunky">Salsa</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <p>Tùy chọn vô hiệu hóa</p>
                                    <div class="mb-3">
                                        <select class="form-control show-tick">
                                            <option>Mustard</option>
                                            <option disabled>Ketchup</option>
                                            <option>Relish</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Input Slider -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2> <strong>THANH TRƯỢT</strong></h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Sửa </a></li>
                                        <li><a href="javascript:void(0);">Xóa</a></li>
                                        <li><a href="javascript:void(0);">Báo cáo</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                              <div class="row clearfix">
                                <div class="col-lg-6 col-md-12">
                                    <p><b>Ví dụ cơ bản</b></p>
                                    <div id="nouislider_basic_example"></div>
                                    <div class="m-t-20 font-12"><b>Giá trị: </b><span class="js-nouislider-value"></span></div>
                                </div>
                                <div class="col-lg-6 col-md-12">
                                    <p><b>Ví dụ phạm vi</b></p>
                                    <div id="nouislider_range_example"></div>
                                    <div class="m-t-20 font-12"><b>Giá trị: </b><span class="js-nouislider-value"></span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Input Slider --> 
        </div>
    </div>
</section>
<!-- Jquery Core Js --> 
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="admin-template/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script> <!-- Bootstrap Colorpicker Js --> 
<script src="admin-template/assets/plugins/jquery-inputmask/jquery.inputmask.bundle.js"></script> <!-- Input Mask Plugin Js --> 
<script src="admin-template/assets/plugins/multi-select/js/jquery.multi-select.js"></script> <!-- Multi Select Plugin Js --> 
<script src="admin-template/assets/plugins/jquery-spinner/js/jquery.spinner.js"></script> <!-- Jquery Spinner Plugin Js --> 
<script src="admin-template/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script> <!-- Bootstrap Tags Input Plugin Js --> 
<script src="admin-template/assets/plugins/nouislider/nouislider.js"></script> <!-- noUISlider Plugin Js -->

<script src="admin-template/assets/plugins/select2/select2.min.js"></script> <!-- Select2 Js -->

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
<script src="admin-template/assets/js/pages/forms/advanced-form-elements.js"></script> 
</body>


</html>