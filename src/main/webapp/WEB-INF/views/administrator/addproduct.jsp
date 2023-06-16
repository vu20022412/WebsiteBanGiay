<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<!-- import sf: spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

 <!DOCTYPE html>

 <html lang="en">
 
 <head>
     <meta charset="utf-8" />
     <!-- <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png"> -->
     <!-- <link rel="icon" type="image/png" href="../assets/img/favicon.ico"> -->
     <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
     <title>Add Product</title>
     <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
     <!--     Fonts and icons     -->
     <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
     <!-- CSS Files -->
     <link href="${base }/css/bootstrap.min.css" rel="stylesheet" />
     <link href="${base }/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
     <!-- CSS Just for demo purpose, don't include it in your project -->
     <!-- <link href="../assets/css/demo.css" rel="stylesheet" /> -->
 </head>
 
 <body>
     <div class="wrapper">
         <div class="sidebar" data-image="../assets/img/sidebar-5.jpg">
             <!--
         Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"
 
         Tip 2: you can also add an image using data-image tag
     -->
             <div class="sidebar-wrapper">
                 <div class="logo">
                     <a href="http://www.creative-tim.com" class="simple-text">
                         Creative Tim
                     </a>
                 </div>
                 <ul class="nav">
                     <li><a class="nav-link" href="${base }/admin/home">
							<p>Dashboard</p>
					</a></li>

					<li><a class="nav-link" href="${base }/admin/product/list">
							<p>Quản lý sản phẩm</p>
					</a></li>

					<li><a class="nav-link" href="${base }/admin/user/list">
							<p>Quản lý người dùng</p>
					</a></li>
					<li><a class="nav-link" href="${base }/admin/contact">
							<p>Quản lý liên hệ</p>
					</a></li>
					
					<li><a class="nav-link" href="${base }/admin/saleorder/list">
							<p>Quản lý hóa đơn</p>
					</a></li>
                 </ul>
             </div>
         </div>
         <div class="main-panel">
             <!-- Navbar -->
             <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                 <div class="container-fluid">
                     <a class="navbar-brand" href="#pablo"> ADD OR UPDATE PRODUCT </a>
                     <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                         <span class="navbar-toggler-bar burger-lines"></span>
                         <span class="navbar-toggler-bar burger-lines"></span>
                         <span class="navbar-toggler-bar burger-lines"></span>
                     </button>
                     <div class="collapse navbar-collapse justify-content-end" id="navigation">
                         <ul class="nav navbar-nav mr-auto">
                             <li class="nav-item">
                                 <a href="#" class="nav-link" data-toggle="dropdown">
                                     <span class="d-lg-none">ADD OR UPDATE PRODUCT</span>
                                 </a>
                             </li>
                         </ul>
                         <ul class="navbar-nav ml-auto">
                             <li class="nav-item">
                                 <a class="nav-link" href="#pablo">
                                     <span class="no-icon">Account</span>
                                 </a>
                             </li>
                             <li class="nav-item">
                                 <a class="nav-link" href="#pablo">
                                     <span class="no-icon">Log out</span>
                                 </a>
                             </li>
                         </ul>
                     </div>
                 </div>
             </nav>

             <div class="content">
                <div class="container-fluid">
                    <sf:form modelAttribute="product" action="${base }/admin/addproduct" method="post" enctype="multipart/form-data">
                    	<div class="row">
	                    	<div class="form-group mb-2">
									<label for="productId">Product Id</label>
									<sf:input path="id" id="productId" class="form-control"></sf:input>
							</div>
						</div>
                        <div class="row">
                            <div class="col-xxl-6" style="padding-bottom: 20px;">
                                <sf:input path="title" type="text" name="title" class="form-control" placeholder="Tiêu đề" aria-label="Username" aria-describedby="addon-wrapping"></sf:input>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xxl-6" style="padding-bottom: 20px;">
                                <sf:input path="price" type="number" name="price" class="form-control" placeholder="Giá gốc" aria-label="Username" aria-describedby="addon-wrapping"></sf:input>
                            </div>

                            <div class="col-xxl-6" style="padding-bottom: 20px;">
                                <sf:input path="priceSale" type="number" name="priceSale" class="form-control" placeholder="Giá giảm" aria-label="Username" aria-describedby="addon-wrapping"></sf:input>
                            </div>

                            <div class="col-xxl-6" style="padding-bottom: 20px;">
                                <div class="form-floating">
                                    <sf:select path="categories.id" class="form-select" name="category" id="floatingSelect" aria-label="Floating label select example">
                                    <!-- <option selected>Tên thể loại</option> -->
                                    
                                    	<sf:options items="${categories }" itemValue="id" itemLabel="name"/>
                                    </sf:select>
                                    <label for="floatingSelect">Tên thể loại</label>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                        	
                            <div class="col-xxl-6" style="padding-bottom: 20px;">
                            	<label>Avatar</label>
                                <input id="fileProductAvatar" name="productAvatar" type="file" class="form-control" placeholder="Avatar" aria-label="Username" aria-describedby="addon-wrapping"></input>
                            </div> 
                            
                            <div>
                            	<img alt="" src="${base }/upload/${product.avatar}" style="width: 100px;height: 100px">
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-xxl-6" style="padding-bottom: 20px;">
                            	<label>Images</label>
                                <input id="fileProductPictures" name="productPictures" type="file" class="form-control" multiple="multiple" placeholder="Avatar" aria-label="Username" aria-describedby="addon-wrapping"></input>
                            </div> 
                            
                            <div>
                            	<c:forEach items="${product.productImages }" var="productImage">
									<img alt="" src="${base }/upload/${productImage.path}" style="width: 100px;height: 100px">
								</c:forEach>
                            	
                            </div>
                        </div>

                        <%-- <div class="row">
                            <div class="col-xxl-6" style="padding-bottom: 20px;">
                                <sf:input path="status" type="text" name="status" class="form-control" placeholder="Status" aria-label="Username" aria-describedby="addon-wrapping"></sf:input>
                            </div>
                        </div> --%>

                        <div class="row">
                            <div class="col-xxl-6" style="padding-bottom: 20px;">
                                <div class="form-floating">
                                    <sf:textarea path="shortDescription" class="form-control" name="description" placeholder="Leave a comment here" id="floatingTextarea"></sf:textarea>
                                    <label for="floatingTextarea">Mô tả</label>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xxl-6" style="padding-bottom: 20px;">
                                <div class="form-floating">
                                    <sf:textarea path="details" class="form-control" name="desciption_details" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></sf:textarea>
                                    <label for="floatingTextarea2">Mô tả chi tiết</label>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xxl-2">
                                <button class="btn btn-primary" type="submit">Add or Update</button>
                            </div>
                        </div>
                    </sf:form>
                </div>
             </div>
 
             
             <!-- End Navbar -->
 
             <!-- <footer class="footer">
                 <div class="container-fluid">
                     <nav>
                         <ul class="footer-menu">
                             <li>
                                 <a href="#">
                                     Home
                                 </a>
                             </li>
                             <li>
                                 <a href="#">
                                     Company
                                 </a>
                             </li>
                             <li>
                                 <a href="#">
                                     Portfolio
                                 </a>
                             </li>
                             <li>
                                 <a href="#">
                                     Blog
                                 </a>
                             </li>
                         </ul>
                         <p class="copyright text-center">
                             ©
                             <script>
                                 document.write(new Date().getFullYear())
                             </script>
                             <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                         </p>
                     </nav>
                 </div>
             </footer> -->
         </div>
     </div>
     <!--   -->
     <!-- <div class="fixed-plugin">
     <div class="dropdown show-dropdown">
         <a href="#" data-toggle="dropdown">
             <i class="fa fa-cog fa-2x"> </i>
         </a>
 
         <ul class="dropdown-menu">
             <li class="header-title"> Sidebar Style</li>
             <li class="adjustments-line">
                 <a href="javascript:void(0)" class="switch-trigger">
                     <p>Background Image</p>
                     <label class="switch">
                         <input type="checkbox" data-toggle="switch" checked="" data-on-color="primary" data-off-color="primary"><span class="toggle"></span>
                     </label>
                     <div class="clearfix"></div>
                 </a>
             </li>
             <li class="adjustments-line">
                 <a href="javascript:void(0)" class="switch-trigger background-color">
                     <p>Filters</p>
                     <div class="pull-right">
                         <span class="badge filter badge-black" data-color="black"></span>
                         <span class="badge filter badge-azure" data-color="azure"></span>
                         <span class="badge filter badge-green" data-color="green"></span>
                         <span class="badge filter badge-orange" data-color="orange"></span>
                         <span class="badge filter badge-red" data-color="red"></span>
                         <span class="badge filter badge-purple active" data-color="purple"></span>
                     </div>
                     <div class="clearfix"></div>
                 </a>
             </li>
             <li class="header-title">Sidebar Images</li>
 
             <li class="active">
                 <a class="img-holder switch-trigger" href="javascript:void(0)">
                     <img src="../assets/img/sidebar-1.jpg" alt="" />
                 </a>
             </li>
             <li>
                 <a class="img-holder switch-trigger" href="javascript:void(0)">
                     <img src="../assets/img/sidebar-3.jpg" alt="" />
                 </a>
             </li>
             <li>
                 <a class="img-holder switch-trigger" href="javascript:void(0)">
                     <img src="..//assets/img/sidebar-4.jpg" alt="" />
                 </a>
             </li>
             <li>
                 <a class="img-holder switch-trigger" href="javascript:void(0)">
                     <img src="../assets/img/sidebar-5.jpg" alt="" />
                 </a>
             </li>
 
             <li class="button-container">
                 <div class="">
                     <a href="http://www.creative-tim.com/product/light-bootstrap-dashboard" target="_blank" class="btn btn-info btn-block btn-fill">Download, it's free!</a>
                 </div>
             </li>
 
             <li class="header-title pro-title text-center">Want more components?</li>
 
             <li class="button-container">
                 <div class="">
                     <a href="http://www.creative-tim.com/product/light-bootstrap-dashboard-pro" target="_blank" class="btn btn-warning btn-block btn-fill">Get The PRO Version!</a>
                 </div>
             </li>
 
             <li class="header-title" id="sharrreTitle">Thank you for sharing!</li>
 
             <li class="button-container">
                 <button id="twitter" class="btn btn-social btn-outline btn-twitter btn-round sharrre"><i class="fa fa-twitter"></i> · 256</button>
                 <button id="facebook" class="btn btn-social btn-outline btn-facebook btn-round sharrre"><i class="fa fa-facebook-square"></i> · 426</button>
             </li>
         </ul>
     </div>
 </div>
  -->
 </body>
 <!--   Core JS Files   -->
 <script src="../assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
 <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
 <script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
 <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
 <script src="../assets/js/plugins/bootstrap-switch.js"></script>
 <!--  Google Maps Plugin    -->
 <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
 <!--  Chartist Plugin  -->
 <script src="../assets/js/plugins/chartist.min.js"></script>
 <!--  Notifications Plugin    -->
 <script src="../assets/js/plugins/bootstrap-notify.js"></script>
 <!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
 <script src="../assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
 <!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
 <script src="../assets/js/demo.js"></script>
 <script type="text/javascript">
     $(document).ready(function() {
         // Javascript method's body can be found in assets/js/demos.js
         demo.initDashboardPageCharts();
 
         demo.showNotification();
 
     });
 </script>
 
 </html>
 
 