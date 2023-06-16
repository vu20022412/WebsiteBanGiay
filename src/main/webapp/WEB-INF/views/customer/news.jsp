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
<title>news</title>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/customer/css.jsp"></jsp:include>
<link rel="stylesheet" href="${base }/css/news.css">
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
					class="text-danger"> Tin tức</span>
			</div>
			<!-- /top-content -->

			<!-- middle-content -->
			<div class="middle-content">
				<div class="row">
					<!-- middle-content-left -->
					<div class="col-xxl-3 col-xl-3 col-lg-3 col-md-5 col-sm-6 left">
						<!-- middle-content-left -->
						<div class="middle-content-left">
							<!-- danh mục sản phẩm -->
							<div class="danhmucsanpham">
								<div class="list-group danhmuc">
									<a href="#"
										class="list-group-item list-group-item-action bg-danger"
										aria-current="true" style="color: white;"> <i
										class="uil uil-list-ul"></i>DANH MỤC TIN TỨC
									</a> <a href="#" class="list-group-item list-group-item-action">Tin
										tức khuyến mãi</a> <a href="#"
										class="list-group-item list-group-item-action">Tin tức
										giày</a> <a href="#"
										class="list-group-item list-group-item-action">Thời trang
										và cuộc sống</i>
									</a> <a href="#" class="list-group-item list-group-item-action">Xu
										hướng thời trang</a> <a href="#"
										class="list-group-item list-group-item-action">Đẹp + giày
										...</a> <a href="#" class="list-group-item list-group-item-action">Tin
										thương hiệu</a> <a href="#"
										class="list-group-item list-group-item-action">Xem thêm
										...</a>
								</div>
							</div>
							<!-- /danh mục sản phẩm -->

							<!-- img-giamgia -->
							<div class="img_giamgia"
								style="overflow: hidden; margin-top: 20px;">
								<div style="transition: scale 1.2s;" class="anh">
									<img src="img/giam50.jpg" style="width: 100%;">
								</div>
							</div>
							<!-- /img-giamgia -->

							<!-- tin tức -->
							<div class="tintuc2">
								<div class="list-group sub-tintuc">
									<div class="list-group-item list-group-item-action bg-danger"
										style="color: white; text-align: center;">TIN TỨC</div>
									<div class="row">
										<div class="col-xl-12">
											<div class="overall_tintuc">
												<!-- <div style="padding-top: 10px;padding-bottom: 10px; text-align: center;"><img src="images/tintuc.jpg"></div> -->
												<div class="text1_tintuc" style="width: 90%; margin: auto;">
													<span>Chọn giày thể thao cho bạn gái nữ tính</span>
												</div>
												<div class="text2-tintuc"
													style="width: 80%; margin: auto; padding-top: 10px;">
													<a href="#"> <i class="uil uil-user"></i> <span>
															Nguyễn Văn An</span>
													</a> <a href="#"> <i class="uil uil-calendar-alt"></i> <span>
															28/03/2023</span>
													</a>
												</div>
												<div class="text3-tintuc">
													<p>
														Giày thể thao đang là phụ kiện không thể thiếu trong tủ
														giày dép của các bạn gái . Những đôi giày thể thao với
														thiết kế đa... <a href="${base }/product-news"
															style="font-style: italic; color: red; text-decoration: none;">[Đọc
															tiếp]</a>
													</p>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tin tức -->

						</div>
						<!-- /middle-content-left -->

					</div>

					<div class="col-xxl-9 col-xl-9 col-lg-9 col-md-7 col-sm-6 main">
						<div class="middle-content-main">
							<div class="title">
								<h4>Tin tức</h4>
							</div>
							<div class="row news">
								<div class="col-xxl-5 col-xl-6 col-lg-12 col-md-12">
									<img src="img/tintuc1.jpg" class="image-tintuc">
								</div>
								<div class="col-xxl-7 col-xl-6 col-lg-12 col-md-12">
									<h5>Chọn giày thể thao cho bạn gái nữ tính</h5>
									<div class="text2-tintuc" style="padding-top: 5px;">
										<a href="#"> <i class="uil uil-user"
											style="color: #707070;"></i> <span style="color: #707070;">
												Nguyễn Văn An</span>
										</a> <a href="#"> <i class="uil uil-calendar-alt"
											style="color: #707070;"></i> <span style="color: #707070;">
												28/03/2023</span>
										</a>
									</div>
									<div class="mota">
										<span style="color: #707070;">Giày thể thao đang là phụ
											kiện không thể thiếu trong tủ giày dép của các bạn gái. Những
											đôi giày thể thao với thiết kế đa dạng, nhiều màu sắc thường
											được phái đẹp lựa chọn. Những đôi giày thể thao mang phong
											cách trẻ trung.</span>
									</div>
									<a href="${base }/product-news" class="btn btn-danger">Đọc
										thêm</a>
								</div>
							</div>

							<div class="row news">
								<div class="col-xxl-5 col-xl-6 col-lg-12 col-md-12">
									<img src="img/tintuc2.jpg" class="image-tintuc">
								</div>
								<div class="col-xxl-7 col-xl-6 col-lg-12 col-md-12">
									<h5>Giới trẻ sốt rần rần với giày Converse Chuck II</h5>
									<div class="text2-tintuc" style="padding-top: 5px;">
										<a href="#"> <i class="uil uil-user"
											style="color: #707070;"></i> <span> Nguyễn Văn An</span>
										</a> <a href="#"> <i class="uil uil-calendar-alt"
											style="color: #707070;"></i> <span> 27/05/2021</span>
										</a>
									</div>
									<div class="mota">
										<span>Chuck II, "hậu duệ" của mẫu giày Chuck Taylor 98
											năm tuổi đình đám đang là từ khóa "hot" nhất trong từ điển
											của các bạn trẻ Việt mê giày những ngày qua. 28/7 vừa qua,
											thương hiệu Converse đã chính thức ra mắt Chuck II.</span>
									</div>
									<a href="/product-news.html" class="btn btn-danger">Đọc
										thêm</a>
								</div>
							</div>

							<div class="row news">
								<div class="col-xxl-5 col-xl-6 col-lg-12 col-md-12 image-tintuc">
									<img src="img/tintuc3.jpg">
								</div>
								<div class="col-xxl-7 col-xl-6 col-lg-12 col-md-12">
									<h5>'Bí kíp' phân biệt giày Converse thật hay giả</h5>
									<div class="text2-tintuc" style="padding-top: 5px;">
										<a href="#"> <i class="uil uil-user"
											style="color: #707070;"></i> <span style="color: #707070;">
												Nguyễn Văn An</span>
										</a> <a href="#"> <i class="uil uil-calendar-alt"
											style="color: #707070;"></i> <span style="color: #707070;">
												29/07/2019</span>
										</a>
									</div>
									<div class="mota">
										<span style="color: #707070;">Giày Converse thật thường
											có giá khá cao, xứng tầm với thương hiệu và chất lượng của
											nó. Hiện nay trên thị trường giày, một đôi Converse hàng hiệu
											chính hãng thường có giá dao động từ 500.000 đến xấp xỉ
											1.500.000.</span>
									</div>
									<a href="/product-news.html" class="btn btn-danger">Đọc
										thêm</a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- content -->

	<hr>
	<!-- footer -->
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
	<!-- /footer -->
</body>
</html>