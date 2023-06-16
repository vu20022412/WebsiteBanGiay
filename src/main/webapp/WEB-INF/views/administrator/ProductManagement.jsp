<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Product Management</title>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<!-- CSS Files -->

<link href="${base }/css/bootstrap.min.css" rel="stylesheet" />
<link href="${base }/css/simplePagination.css" rel="stylesheet" />
<link href="${base }/css/light-bootstrap-dashboard.css?v=2.0.0 "
	rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<!--<script src="${base }/js/jquery.simplePagination.js"></script>  -->
<script src="${base }/js/jquery-3.6.3.min.js"></script>
<script src="${base }/js/jquery.simplePagination.js"></script>
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
						Creative Tim </a>
				</div>
				<ul class="nav">
					<li><a class="nav-link" href="${base }/admin/home">
							<p>Dashboard</p>
					</a></li>

					<li class="nav-item active"><a class="nav-link"
						href="${base }/admin/product/list">

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
				<div class="container-fluid" style="margin-left: 15px;margin-right: 15px;">
					<a class="navbar-brand" href="#pablo"> Quản lý sản phẩm </a>
					<button href="" class="navbar-toggler navbar-toggler-right"
						type="button" data-toggle="collapse"
						aria-controls="navigation-index" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-bar burger-lines"></span> <span
							class="navbar-toggler-bar burger-lines"></span> <span
							class="navbar-toggler-bar burger-lines"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<span class="no-icon">Account</span>
							</a></li>
							<!-- <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="no-icon">Dropdown</span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                    <div class="divider"></div>
                                    <a class="dropdown-item" href="#">Separated link</a>
                                </div>
                            </li> -->
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<a href="${base }/logout" style="text-decoration: none; color: black;"><span>Log out ${userLogined.email}</span></a>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<div class="container-fluid">
				<form class="form-inline" action="${base }/admin/product/list" method="get">
					<div class="row">
						<div class="col-xxl-12 add" style="padding-bottom: 30px;">
							<a class="btn btn-primary" href="${base }/admin/addproduct" role="button">Add
								product</a>
						</div>
						
						<div class="d-flex flex-row" style="padding-bottom:20px;">
								<input id="page" name="page" class="form-control" value="${searchModel.page }"> 
								
								<!-- tìm kiếm theo tên sản phẩm -->
								<input type="text" id="keyword" name="keyword" class="form-control" placeholder="Search" autocomplete="off"  style="margin-right: 5px;" value="${searchModel.keyword }">
								
								<!-- tìm kiếm theo danh mục sản phẩm -->
								<select class="form-control" name="categoryId" id="categoryId" style="margin-right: 5px;">
									<option value="0">All</option>
									<c:forEach items="${categories}" var="category">
										<option value="${category.id }">${category.name }</option>
									</c:forEach>
								</select>
								
								<button type="submit" id="btnSearch" name="btnSearch" value="Search" class="btn btn-primary">Seach</button>
							</div>
							
						<div class="col-md-12">
							<div class="card strpied-tabled-with-hover">
								<!-- <div class="card-header ">
                                        <h4 class="card-title">Quản lý tài khoản</h4>
                                        <p class="card-category">Here is a subtitle for this table</p>
                                    </div> -->
								<div class="card-body table-full-width table-responsive">
									
									<table class="table table-hover">
								        <thead>
											<th>Ảnh</th>
											<th>Tiêu đề</th>
											<th>Giá</th>
											<th>Giá giảm</th>
											<!--<th>Mô tả</th>  
											<th>Mô tả chi tiết</th>-->
											<th>Thể loại</th>
											<th>Status</th>
											
											<th></th>
											<th></th>
										</thead>
								        <tbody>
                                            <c:forEach items="${products.data }" var="product">
												<tr>
                                                <td>
                                                	<img src="${base }/upload/${product.avatar}" alt="">
                                                </td>
                                                <td>${ product.title}</td>
                                                <td>${ product.price}</td>
                                                <td>${ product.priceSale}</td>
                                                <!--  <td>${ product.shortDescription}</td>
                                                <td>${ product.details}</td>-->
                                                <td>${ product.categories.name}</td>
                                                <td>
													<span id="_product_status_${product.id}">
														<c:choose>
															<c:when test="${product.status}">
																<input type="checkbox" checked="checked" readonly="readonly">
															</c:when>
															<c:otherwise>
																<input type="checkbox" readonly="readonly">
															</c:otherwise>
														</c:choose>
													</span>
												</td>
                                                
                                                <td><a class="btn btn-primary" href="${base }/admin/product/management/${product.getId() }" role="button">Sửa</a></td>
                                                <td><a class="btn btn-danger" href="${base }/admin/product/delete/${product.getId() }" role="button" onclick="confirm()">Xóa</a></td>
                                            	</tr>
											</c:forEach>
										</tbody>
								      </table>
								      
								      <div class="row" style="padding-left:20px;">
								      		<div class="col-12">
								      			<div id="paging"></div>
								      		</div>
								      </div>
								</div>
							</div>
						</div>
						<!-- <div class="col-md-12">
                            <div class="card card-plain table-plain-bg">
                                <div class="card-header ">
                                    <h4 class="card-title">Table on Plain Background</h4>
                                    <p class="card-category">Here is a subtitle for this table</p>
                                </div>
                                <div class="card-body table-full-width table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Salary</th>
                                            <th>Country</th>
                                            <th>City</th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Dakota Rice</td>
                                                <td>$36,738</td>
                                                <td>Niger</td>
                                                <td>Oud-Turnhout</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Minerva Hooper</td>
                                                <td>$23,789</td>
                                                <td>Curaçao</td>
                                                <td>Sinaai-Waas</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Sage Rodriguez</td>
                                                <td>$56,142</td>
                                                <td>Netherlands</td>
                                                <td>Baileux</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Philip Chaney</td>
                                                <td>$38,735</td>
                                                <td>Korea, South</td>
                                                <td>Overland Park</td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Doris Greene</td>
                                                <td>$63,542</td>
                                                <td>Malawi</td>
                                                <td>Feldkirchen in Kärnten</td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>Mason Porter</td>
                                                <td>$78,615</td>
                                                <td>Chile</td>
                                                <td>Gloucester</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div> -->
					</div>
				</div>
				</form>
			</div>
			<footer class="footer">
				<div class="container-fluid">
					<nav>
						<ul class="footer-menu">
							<li><a href="#"> Home </a></li>
							<li><a href="#"> Company </a></li>
							<li><a href="#"> Portfolio </a></li>
							<li><a href="#"> Blog </a></li>
						</ul>
						<p class="copyright text-center">
							©
							<script>
								document.write(new Date().getFullYear())
							</script>
							<a href="http://www.creative-tim.com">Creative Tim</a>, made with
							love for a better web
						</p>
					</nav>
				</div>
			</footer>
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
<script type="text/javascript">
			$( document ).ready(function() {
				// đặt giá trị của category ứng với điều kiện search trước đó
				$("#categoryId").val(${searchModel.categoryId});
				
				$("#paging").pagination({
					currentPage: ${products.currentPage}, 	//trang hiện tại
			        items: ${products.totalItems},			//tổng số sản phẩm
			        itemsOnPage: ${products.sizeOfPage}, 	//số sản phẩm trên 1 trang
			        cssStyle: 'light-theme',
			        onPageClick: function(pageNumber, event) {
			        	$('#page').val(pageNumber);
			        	$('#btnSearch').trigger('click');
			        	
					}, 
			    });
			});
			
			
			function confirm(){
        		/* alert($("#contact-content").val());
        		var data = {
        			name: $("#name").val(),
        			email: $("#email").val(),
        			content: $("#contact-content").val()
        		};
        		
        		jQuery.ajax({
        			url:  "/ajax/contact-us-ajax",
					type: "post",						
					contentType: "application/json",
					data: JSON.stringify(data),
	
					dataType: "json", 
        			success: function(jsonResult){
        				alert(jsonResult.statusContent)
        			},
        			error: function(jqXhr , textStatus , errorMessage){
        				alert("error");
        			}
        		}); */
				var cf = confirm("Bạn có muốn xóa ?");
					$.ajax({

                    type: "POST",

                    url : "/admin/product/delete/{productId}",

                    data: {confirm: cf},

                    /* success: function(responseText){

                            $('#result').text(responseText);

                    } */

            });
        		
        	}
</script>
</body>
<style>
	.card .table tbody td:last-child, .card .table thead th:last-child{
        display: table-cell;
    }
</style>

<!--   Core JS Files   -->


	
<%-- <script src="${base }/js/core/popper.min.js" type="text/javascript"></script>
<script src="${base }/js/core/bootstrap.min.js" type="text/javascript"></script>
<script src="${base }/js/plugins/bootstrap-switch.js"></script> -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<script src="${base }/js/plugins/chartist.min.js"></script>
<script src="${base }/js/plugins/bootstrap-notify.js"></script>
<script src="${base }/js/light-bootstrap-dashboard.js?v=2.0.0 "
	type="text/javascript"></script>
<script src="${base }/js/demo.js"></script>
<script src="${base }/js/jquery.simplePagination.js"
	type="text/javascript"></script> --%>
	


</html>
