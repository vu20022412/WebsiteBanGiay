<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cart</title>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/customer/css.jsp"></jsp:include>
<link rel="stylesheet" href="${base }/css/cart.css">
<link rel="stylesheet" href="${base }/img">
<script src="js/jquery-3.6.3.min.js"></script>
</head>
<body>
	<!-- myheader -->
	<jsp:include page="/WEB-INF/views/customer/layout/myheader.jsp"></jsp:include>
	<!-- /myheader -->


	<!-- contennt -->
	<div class="content">
		<div class="container">
			<!-- top-content -->
			<div class="top-content">
				<span>Trang chủ </span><i
					class="uil uil-angle-double-right text-danger"></i><span
					class="text-danger"> Giỏ hàng</span>
			</div>
			<!-- /top-content -->

			<!-- middle-content -->
			<div class="middle-content">
				<table class="table">
					<tbody>
						<!-- <tr class="row tr">
                    <td class="td col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2"><div class="image"><img src="img/sp-moi1.jpg"></div></td>
                        <td class="td col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-3">
                            
                            <div><p class="name">Giày da Converse cao cấp</p>
                            <p class="color">Đen</p>
                            </div>
                        </td>
                        <td class="td col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2"><div class="price">1.200.000đ</div></td>
                        <td class="td col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2">
                            
                                <div class="amount">
                                    <div class="reduce"><button>-</button></div>
                                    <div class="number"><button>1</button></div>
                                    <div class="increase"><button>+</button></div>
                                </div>
                            
                            
                        </td>
                        <td class="td col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2"><div class="sum-price"><span>1.200.000đ</span></div></td>
                        <td class="td col-xxl-1 col-xl-1 col-lg-1 col-md-1 col-sm-1"><div class="icon1"><i class="uil uil-trash-alt" style="color: red;"></i></div></td>
                  </tr>
                  <tr class="row tr">
                    <td class="td col-xxl-2 col-xl-2 col-lg-2 col-md-2  col-sm-2"><div class="image"><img src="img/km3.jpg"></div></td>
                        <td class="td col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-3">
                            <div><p class="name">Giày Converse Star Coolar Break</p>
                            <p class="color">Xanh</p></div>
                        </td>
                        <td class="td col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2"><div class="price">480.000đ</div></td>
                        <td class="td col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2">
                            
                                <div class="amount">
                                    <div class="reduce"><button type="button">-</button></div>
                                    <div class="number"><button type="button">2</button></div>
                                    <div class="increase"><button type="button">+</button></div>
                                </div>
                            
                        </td>
                        <td class="td col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2"><div class="sum-price">960.000đ</div></td>
                        <td class="td col-xxl-1 col-xl-1 col-lg-1 col-md-1 col-sm-1"><div class="icon1"><i class="uil uil-trash-alt" style="color: red;"></i></div></td>
                  </tr> -->


						<c:forEach items="${cart.cartItems }" var="ci">
							<tr class="row tr">
								<td class="td col-xxl-2 col-xl-2 col-lg-2 col-md-2  col-sm-2"><div
										class="image">
										<img src="${base }/upload/${ci.avatar }">
									</div></td>
								<td class="td col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-3">
									<div>
										<p class="name">${ci.productName }</p>
										<!--<p class="color">Xanh</p></div>  -->
								</td>
								<td class="td col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2"><div
										class="price">${ci.priceUnit }</div></td>
								<td class="td col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2">

									<div class="amount">
										<div class="reduce">
											<button type="button"
												onclick="increaseOrDecrease('${base}',${ci.productId },'decrease')">-</button>
										</div>
										<div class="number">
											<button type="button" id="${ci.productId }">${ci.quanlity }</button>
										</div>
										<div class="increase">
											<button type="button"
												onclick="increaseOrDecrease('${base}',${ci.productId },'increase')">+</button>
										</div>
									</div>

								</td>
								<td class="td col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2"><div
										class="sum-price" id="tong${ci.productId }">${ci.tongGia() }</div></td>
								<td class="td col-xxl-1 col-xl-1 col-lg-1 col-md-1 col-sm-1"><div
								 class="icon1">
								 <a href="${base }/cart/delete/${ci.productId}"><i class="uil uil-trash-alt" style="color: red;"></i></a></div></td>
								<!--  <td class="td col-xxl-1 col-xl-1 col-lg-1 col-md-1 col-sm-1"><div
										class="icon1">
										<i class="uil uil-trash-alt" style="color: red;"
											onclick="delete('${base}',${ci.productId })"></i>
									</div></td>-->
							</tr>
						</c:forEach>



					</tbody>
				</table>
				<!-- <div class="sum">
                <p class="tongtien">Tổng tiền</p>
                <p style="margin-left: 970px;color: red;" class="tongtien gia">1.980.000đ</p>
              </div> -->
				<div class="row" style="padding-top: 20px;">
					<div class="col-xxl-9 col-xl-9 col-lg-9 col-md-9 col-sm-9 tongtien">
						<p>Tổng tiền</p>
					</div>
					<div
						class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-3 ps-5 tongtien gia">
						<p id="tongGiaGioHang" name="tongGiaGioHang" style="color: red;">${tongGiaTatCaSanPham}đ</p>
					</div>
				</div>
				<hr>

				<!-- <div class="thanhtoan">
                <button type="button" class="btn btn-secondary">Tiếp tục mua hàng</button>
                <button type="button" class="btn btn-danger btn_thanhtoan" style="margin-left: 870px;">THANH TOÁN</button>
              </div> -->
				<div class="row">
					<div class="col-xxl-9 col-xl-9 col-lg-9 col-md-9 col-sm-9">
						<button type="button" class="btn btn-secondary">Tiếp tục
							mua hàng</button>
					</div>
					<div class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-3 ps-4">
						<button type="button" class="btn btn-danger btn_thanhtoan">THANH
							TOÁN</button>
					</div>
				</div>
			</div>
			<!-- middle-content -->

			<form action="${base }/cart" method="post">

				<div class="row py-5 p-4 bg-white rounded shadow-sm">
					<div class="col-lg-6">
						<!-- <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Coupon code</div>
						<div class="p-4">
							<p class="font-italic mb-4">If you have a coupon code, please enter it in the box below</p>
							<div class="input-group mb-4 border rounded-pill p-2">
								<input type="text" placeholder="Apply coupon" aria-describedby="button-addon3" class="form-control border-0">
								<div class="input-group-append border-0">
									<button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill">
										<i class="fa fa-gift mr-2"></i>Apply coupon
									</button>
								</div>
							</div>
						</div> -->
						<div
							class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thông
							tin khách hàng</div>
						<div class="p-4">

							<c:choose>
								<c:when test="${isLogined }">
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerPhone">Họ và tên khách hàng</label> <input
											type="text" class="form-control" id="customerFullName"
											name="customerFullName" value="${userLogined.username }"
											placeholder="Full name">
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerEmail">Địa chỉ Email</label> <input
											type="email" class="form-control" id="customerEmail"
											name="customerEmail" value="${userLogined.email }"
											placeholder="Enter email"> <small id="emailHelp"
											class="form-text text-muted">We'll never share your
											email with anyone else.</small>
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerPhone">Phone</label> <input type="tel"
											class="form-control" id="customerPhone" name="customerPhone"
											placeholder="Phone">
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerAddress">Địa chỉ giao hàng</label> <input
											type="text" class="form-control" id="customerAddress"
											name="customerAddress" placeholder="Address">
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										 
										 <input
											type="text" class="form-control" id="tongGiaGioHang1"
											name="tongGiaGioHang1" placeholder="Address" value="${tongGiaTatCaSanPham}" style="display:none;">
									</div>
								</c:when>
								<c:otherwise>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerPhone">Họ và tên khách hàng</label> <input
											type="text" class="form-control" id="customerFullName"
											name="customerFullName" placeholder="Full name">
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerEmail">Địa chỉ Email</label> <input
											type="email" class="form-control" id="customerEmail"
											name="customerEmail" placeholder="Enter email"> <small
											id="emailHelp" class="form-text text-muted">We'll
											never share your email with anyone else.</small>
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerPhone">Phone</label> <input type="tel"
											class="form-control" id="customerPhone" name="customerPhone"
											placeholder="Phone">
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerAddress">Địa chỉ giao hàng</label> <input
											type="text" class="form-control" id="customerAddress"
											name="customerAddress" placeholder="Address">
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										 <%-- <p name="tongGiaGioHang1" id="tongGiaGioHang1">${tongGiaTatCaSanPham}</p> --%>
										 <input
											type="text" class="form-control" id="tongGiaGioHang1"
											name="tongGiaGioHang1" placeholder="Address" value="${tongGiaTatCaSanPham}" style="display:none;">
									</div>
								</c:otherwise>
							</c:choose>


						</div>
					</div>
					<div class="col-lg-6">
						<div
							class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thông
							tin thanh toán</div>
						<div class="p-4">
							<p class="font-italic mb-4">Shipping and additional costs are
								calculated based on values you have entered.</p>
							<ul class="list-unstyled mb-4">
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">Order Subtotal </strong><strong>${cart.totalPrice }</strong></li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">Shipping and handling</strong><strong>$0.00</strong></li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">Tax</strong><strong>$0.00</strong></li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">Total</strong>
									<h5 class="font-weight-bold totalPrice" id="totalPrice">${cart.tongTienGioHang()}</h5></li>
							</ul>
							<button type="submit"
								class="btn btn-dark rounded-pill py-2 btn-block">Procceed
								to checkout</button>
						</div>
					</div>
				</div>

			</form>
		</div>
	</div>
	<!-- content -->


	<hr>
	<!-- footer -->
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
	<!-- /footer -->

	<script type="text/javascript">
    	function increaseOrDecrease(_baseUrl,_productId , _increaseOrDecrease){
		var requestBody = {
				productId: _productId,
				increaseOrDecrease : _increaseOrDecrease
		}
		
		jQuery.ajax({
    		url: _baseUrl + "/cart/increaseOrDecrease",
    		type: "post",					   
    		contentType: "application/json",  
    		data: JSON.stringify(requestBody), 
    		dataType: "json", 				   
    		success: function(jsonResult) {  
    			//$("#soluongsanphamtronggiohang").html(jsonResult.totalItems);
    			//alert("Thanhf coong");\
    			//document.getElementById(_productId).innerHTML = jsonResult.soluong;
    			//document.getElementById('tong' + _productId).innerHTML = jsonResult.tongGia;
    			//document.getElementById('tongGiaGioHang').innerHTML = jsonResult.tongGiaTatCaSanPham;
    			
    			$("#"+_productId).html(jsonResult.soluong);
    			$("#tong"+_productId).html(jsonResult.tongGia);
    			$("#tongGiaGioHang").html(jsonResult.tongGiaTatCaSanPham+"đ");
    			//$("#tongGiaGioHang1").html(jsonResult.tongGiaTatCaSanPham);
    			$("#tongsanphamtronggiohang").html(jsonResult.totalItems);
    			$("#totalPrice").html(jsonResult.tongGiaTatCaSanPham);
    			document.getElementById("tongGiaGioHang1").value = jsonResult.tongGiaTatCaSanPham;
    		},
    		error: function(jqXhr, textStatus, errorMessage) {
    			alert("error");
    		}
    	});
	}
    </script>
</body>
</html>