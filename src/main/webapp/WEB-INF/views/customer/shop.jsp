<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop</title>
	<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/customer/css.jsp"></jsp:include>
	<link rel="stylesheet" href="${base }/css/shop.css">
	<base href="/">
	<link rel="stylesheet" href="${base }/img">
	
	<base href="/">
    <script src="${base }/js/jquery-3.6.3.min.js"></script>
    <base href="/">
    <script src="${base }/js/jquery.simplePagination.js"></script>
    
</head>
<body>
	<!-- myheader -->
    <jsp:include page="/WEB-INF/views/customer/layout/myheader.jsp"></jsp:include>
    <!-- /myheader -->

    <!-- content -->
    <div class="content">
        <div class="container">
            <!-- top-content -->
            <div class="top-content">
                <span>Trang chủ </span><i class="uil uil-angle-double-right text-danger"></i><span class="text-danger"> ${productName}</span>
            </div>
            <!-- /top-content -->


            <div class="middle-content">
                <div class="row">
                    <!-- middle-content-left -->
                    <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-4 col-sm-6 left" >
                        <!-- middle-content-left -->
                        <div class="middle-content-left">
                            <!-- danh mục sản phẩm -->
                            <div class="danhmucsanpham">
                                <div class="list-group danhmuc">
                                    <a href="#" class="list-group-item list-group-item-action bg-danger" aria-current="true" style="color: white;">
                                        <i class="uil uil-list-ul icon-danhmuc"></i>DANH MỤC SẢN PHẨM
                                    </a>
                                    <ul style="width: 100%;" class="list-group ul">
                                        <%-- <li><a href="#" class="list-group-item list-group-item-action">Bộ sưu tập mới</a></li>
                                        <li>
                                            <a href="#" class="list-group-item list-group-item-action">Giày thời trang nam</a>
                                            <ul class="sub-ul-li">
                                                <li><a href="#" class="list-group-item list-group-item-action">Giày da</a></li> 
                                                <li><a href="#" class="list-group-item list-group-item-action">Giày vải</a></li>
                                                <li><a href="#" class="list-group-item list-group-item-action">Giày Converse</a></li>
                                                <li><a href="#" class="list-group-item list-group-item-action">Giày Vans</a></li>
                                                <li><a href="#" class="list-group-item list-group-item-action">Giày Lacoste</a></li>
                                                <li><a href="#" class="list-group-item list-group-item-action">Giày D&G</a></li>
                                                <li><a href="#" class="list-group-item list-group-item-action">Giày Bata</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#" class="list-group-item list-group-item-action">Giày thời trang nữ</a>
                                            <ul class="sub-ul-li">
                                                <li><a href="#" class="list-group-item list-group-item-action">Giày Converse</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#" class="list-group-item list-group-item-action">Giày mùa hè</a></li>
                                        <li><a href="#" class="list-group-item list-group-item-action">Giày công sở</a></li>
                                        <li><a href="${base }/shop/Giày thể thao" class="list-group-item list-group-item-action">Giày thể thao</a></li>
                                        <li id="xemthem1" class="xemthem1"><a href="#" class="list-group-item list-group-item-action ">Giày đi chơi</a></li>
                                        <li id="xemthem2" class="xemthem1"><a href="#" class="list-group-item list-group-item-action ">Giày trẻ em</a></li>
                                        <li id="xemthem3" class="xemthem1"><a href="#" class="list-group-item list-group-item-action ">Giày</a></li>
                                        <li id="xemthem4" class="xemthem1"><a href="#id" class="list-group-item list-group-item-action ">Thu gọn ...</a></li>
                                        <li id="xemthem" class="xemthem"><a href="#id" class="list-group-item list-group-item-action">Xem thêm ...</a></li> --%>
                                        <c:forEach items="${categoriesNulls }" var="categoriesNull">
                                        	<li><a href="${base }/shop/${categoriesNull.name}" class="list-group-item list-group-item-action">${categoriesNull.name}</a>
                                        	 <ul class="sub-ul-li">
	                                        	<c:forEach items="${categoriesNotNulls }" var="categoriesNotNull">
	                                        		<c:if test="${categoriesNotNull.parent.getId() == categoriesNull.getId() }">
	                                        			<li><a href="${base }/shop/${categoriesNotNull.name}" class="list-group-item list-group-item-action">${categoriesNotNull.name }</a></li> 
	                                        		</c:if>  
	                                        	</c:forEach>
                                        	</ul>
                                        	</li>
                                        </c:forEach>
                                    </ul>
                                  </div>
                            </div>
                            <!-- /danh mục sản phẩm -->

                            <!-- hỗ trợ trực tuyến -->
                            <div class="hotrotructuyen">
                                <div class="list-group hotro">
                                    <a href="#" class="list-group-item list-group-item-action bg-danger" aria-current="true" style="color: white; text-align: center;">
                                        HỖ TRỢ TRỰC TUYẾN
                                    </a>
                                    <div class="list-group-item list-group-item-action">
                                        <div class="row">
                                            <div class="col-xl-2 ps-3 pt-1 sp-tructuyen">
                                                <div class="icon_call-hotro fs-5 text-danger" style="margin-left: 10px;"><i class="uil uil-phone-volume"></i></div>
                                            </div>
                                            <div class="col-xl-10 col-lg-12 pe-5">
                                                <b>Tư vấn bán hàng 1</b> <br>
                                                Mrs.Dung:<b>(04) 3781 1847</b>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="list-group-item list-group-item-action">
                                        <div class="row">
                                            <div class="col-xl-2 ps-3 pt-1 sp-tructuyen">
                                                <div class="icon_call-hotro fs-5 text-danger" style="margin-left: 10px;"><i class="uil uil-phone-volume"></i></div>
                                            </div>
                                            <div class="col-xl-10 col-lg-12 pe-5">
                                                <b>Tư vấn bán hàng 2</b> <br>
                                                Mrs.Tuấn:<b>(04) 3781 1847</b>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="list-group-item list-group-item-action">
                                        <div class="row">
                                            <div class="col-xl-2 ps-3 pt-1 sp-tructuyen">
                                                <div class="icon_call-hotro fs-5 text-danger" style="margin-left: 10px;"><i class="uil uil-envelope"></i></div>
                                            </div>
                                            <div class="col-xl-10 col-lg-12 pe-5">
                                                <b>Email liên hệ</b> <br>
                                                <b>support@bizweb.vn</b>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                            </div>
                            <!-- /hỗ trợ trực tuyến -->


                            <!-- sản phẩm nổi bật -->
                            <div class="sanphamnoibat">
                                <div class="list-group noibat">
                                    <div class="list-group-item list-group-item-action bg-danger">
                                        <div class="row">
                                            <div class="col-xl-10 col-lg-12 ps-5" style="text-align: center;color: white;">
                                                SẢN PHẨM NỔI BẬT
                                            </div>
                                            <div class="col-xl-2 text-white icon-spnoibat" style="display: flex;">
                                                <div><i class="uil uil-angle-left"></i></div>
                                                <div><i class="uil uil-angle-right"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <ul class="list-group list_sp_noibat"> 
                                        <li class="list-group-item list-group-item-action sp_noibat">
                                            <div class="row">
                                                <div class="col-xl-4">
                                                    <img src="img/noibat1.jpg">
                                                </div>
                                                <div class="col-xl-8 product_all_product">
                                                    <span>Giày da Converse cao cấp</span><br>
                                                    <span style="color: red;">1.200.000đ</span><br>
                                                    <span style="text-decoration: line-through;">1.400.000đ</span>

                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action sp_noibat">
                                            <div class="row">
                                                <div class="col-xl-4">
                                                    <img src="img/noibat2.jpg">
                                                </div>
                                                <div class="col-xl-8 product_all_product">
                                                    <span>Giày vải Converse 3</span><br>
                                                    <span style="color: red;">700.000đ</span><br>
                                                    <span style="text-decoration: line-through;">800.000đ</span>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="list-group-item list-group-item-action sp_noibat">
                                            <div class="row">
                                                <div class="col-xl-4">
                                                    <img src="img/noibat3.jpg">
                                                </div>
                                                <div class="col-xl-8 product_all_product">
                                                    <span>Giày Converse cao cấp</span><br>
                                                    <span style="color: red;">450.000đ</span><br>
                                                    <span style="text-decoration: line-through;">600.000đ</span>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="list-group-item list-group-item-action sp_noibat">
                                            <div class="row">
                                                <div class="col-xl-4">
                                                    <img src="img/noibat4.jpg">
                                                </div>
                                                <div class="col-xl-8 product_all_product">
                                                    <span>Giày vải Star Floral Crochet</span><br>
                                                    <span style="color: red;">600.000đ</span><br>
                                                    <span style="text-decoration: line-through;">750.000đ</span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                  </div>
                            </div>
                            <!-- /sản phẩm nổi bật -->

                            <!-- img-giamgia -->
                            <div class="img_giamgia" style="overflow: hidden; margin-top: 20px;">
                                <div style="transition: scale 1.2s;" class="anh"><img src="img/giam50.jpg" style="width: 100%;"></div>
                            </div>
                            <!-- /img-giamgia -->
                            
                        </div>
                        <!-- /middle-content-left -->


                    </div>
                    <!-- /middle-content-left -->

                    <!-- middle-content-main -->     
                    <div class="col-xl-9 col-lg-9 col-md-8 col-sm-6 main">
                        <div class="middle-content-main">
                                <div>
                                	<h3>${productName}</h3>
                                
                                </div>
                                <div class="row sort">
                                    <div class="col-xxl-2 col xl-2 col-lg-3 col-md-3 sapxeptheo">Sắp xếp theo:</div>
                                    <div class="col-xxl-9 col-xl-8 col-lg-7 col-md-7 sort_select" >
                                        <form name="frm1">
                                            <select name="sortby" id="sortby" onchange="document.frm1.submit()">
                                              <option value="default" name="sort">Mặc định</option>
                                              <option value="low_to_high" name="sort" >Giá từ thấp đến cao</option>
                                              <option value="high_to_low" name="sort" >Giá từ cao đến thấp</option>
                                            </select>
                                          </form>
                                    </div>
                                    <div class="col-xxl-1 col-xl-1 col-lg-2 col-md-2">
                                        <i class="uil uil-table" style="color: #dc3333;"></i>
                                        <i class="uil uil-list-ul" style="color: #dc3333;"></i>
                                    </div>
                                </div>

                                <!-- all_product -->
                                <div class="all_product">
                                        <div class="row" style="margin-left: 0px !important; margin-right: 0px !important;">
                                        <c:forEach items="${products.data }" var="product">
                                        	<div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 product_all_product">
                                                <div class="img-all_product"><img src="${base }/upload/${product.avatar}"></div>
                                                <div class="text-all_product" style="height: 50px; width: 170px;">${product.title }</div>
                                                <div class="giamgia_all_product"><div><a href="" onclick="AddToCart('${base}',${product.getId() },1)" role="button" style="color: black;"><i class="uil uil-shopping-cart-alt"></i></a></div></div>
                                                <!--<div class="price-spmoi">480.000đ</div>
                                                <div class="giamgia_all_product">-4%</div>  -->
                                                <div style="display: flex;">
                                                    <div class="price-all_product">${product.price}đ</div>
                                                    <div class="price-giamgia_all_product">${product.priceSale}đ</div>
                                                </div>
                                                <!-- <div class="tuychon"><a class="btn btn-primary" href="#" onclick="AddToCart('${base}',${product.getId() },1)" role="button">Tuy chon</a></div> -->
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>
                                        </c:forEach>
                                        
                                        </div>

                                        
                                </div>
                                <!-- /all_product -->
                                
                                <!-- <div class="row" style="padding-left:20px; height:30px;">
								      		<div class="col-12">
								      			<div id="paging" style=" height:30px;"></div>
								      		</div>
										</div> -->
								<nav aria-label="Page navigation example" style="padding-top: 30px;float: right;">
								  <ul class="pagination">
								    <li class="page-item"><a class="page-link" style="color: red;" href="${base }/shop/${productName}?page=1&sortby=${sortby}">First</a></li>
								    <li class="page-item"><a class="page-link" style="color: red;" href="${base }/shop/${productName}?page=${productSearch.page - 1}&sortby=${sortby}">Prev</a></li>
								    <li class="page-item"><a class="page-link" style="color: red;" href="${base }/shop/${productName}?page=${productSearch.page + 1}&sortby=${sortby}">Next</a></li>
								    <li class="page-item"><a class="page-link" style="color: red;" href="${base }/shop/${productName}?page=${products.getTotalPage()}&sortby=${sortby}">Last</a></li>
								  </ul>
								</nav>
                                

                                <!-- <div class="page_number">
                                    <div class="row flex justify-content-end">
                                        <button type="button" class="btn btn-light col-xl-4">1</button>
                                        <button type="button" class="btn btn-light col-xl-4">2</button>
                                        <button type="button" class="btn btn-light col-xl-4"><i class="uil uil-angle-double-right"></i></button>
                                    </div>
                                </div> -->
                        </div>
                    </div>
                        <!-- /middle-content-main -->
                </div>
        </div>
    <!-- middle-content -->
        </div>
    </div>
    <!-- /content -->

    <hr>
    <!-- footer -->
    <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
    <!-- /footer -->

    <script>
        var liNode = document.getElementById("xemthem");
        liNode.onclick = function(){
            document.getElementById("xemthem1").classList.remove("xemthem1");
            document.getElementById("xemthem2").classList.remove("xemthem1");
            document.getElementById("xemthem3").classList.remove("xemthem1");
            document.getElementById("xemthem4").classList.remove("xemthem1");
            liNode.classList.add("xemthem1")
        }

        var liNode2 = document.getElementById("xemthem4");
        liNode2.onclick = function(){
            document.getElementById("xemthem1").classList.add("xemthem1");
            document.getElementById("xemthem2").classList.add("xemthem1");
            document.getElementById("xemthem3").classList.add("xemthem1");
            document.getElementById("xemthem").classList.add("xemthem");
            liNode2.classList.add("xemthem1");
            liNode.classList.remove("xemthem1")
        }
        
        function AddToCart(_baseUrl, _productId, _quanlity) {
        	alert("Bạn đang chọn mua sản phẩm có ID = " + _productId + " với số lượng là " + _quanlity);
        	// tạo javascript object để binding với data bên phía controller  
        	var requestBody = {
        		productId: _productId,
        		quanlity: _quanlity
        	};
        	
        	// $ === jQuery
        	// json == javascript object
        	jQuery.ajax({
        		url: _baseUrl + "/ajax/addToCart", //-> request mapping định nghĩa bên controller
        		type: "post",					   //-> method type của Request Mapping	
        		contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
        		data: JSON.stringify(requestBody), //-> chuyển 1 javascript object thành string json
        	
        		dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
        		success: function(jsonResult) {    // gọi ajax thành công
        			alert(jsonResult.status + ", Số lượng trong giỏ hàng là: " + jsonResult.totalItems);
        			$("#tongsanphamtronggiohang").html(jsonResult.totalItems);
        			//document.getElementById('tongsanphamtronggiohang').innerHTML = jsonResult.totalItems;
        		},
        		error: function(jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
        			alert("error");
        		}
        	});
        }
        
        
        
        //phân trang
        $( document ).ready(function() {
			$("#paging").pagination({
				currentPage: ${products.currentPage}, 	//trang hiện tại
		        items: ${products.totalItems},			//tổng số sản phẩm
		        itemsOnPage: ${products.sizeOfPage},
		        //số sản phẩm trên 1 trang
		        cssStyle: 'light-theme',
		        onPageClick: function(pageNumber, event) {
		        	$('#page').val(pageNumber);
				},
				
		    });
		});
        
        
        function a(){
        	alert(${products.totalItems} / ${products.sizeOfPage});
        }
        
        
        
        
        function increaseOrDecreasePage(_baseUrl,_productSearchPage) {
        	
        	var requestBody = {
        		page: _productSearchPage
        	};
        	
        	// $ === jQuery
        	// json == javascript object
        	jQuery.ajax({
        		url: _baseUrl + "/shop/{productName}/{page}", //-> request mapping định nghĩa bên controller
        		type: "get",					   //-> method type của Request Mapping	
        		contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
        		data: JSON.stringify(requestBody), //-> chuyển 1 javascript object thành string json
        	
        		dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
        		success: function() {    // gọi ajax thành công
        			alert("Thành công");
        		},
        		error: function(jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
        			alert("error");
        		}
        	});
        }
        
    </script>
</body>
</html>