<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- myheader -->
<div class="myheader">
	<div class="container py-3">
		<!-- row -->
		<div class="row top">
			<div class="col-xxl-3 col-xl-3 col-lg-4 big-shoe">
				<img src="img/big-shoe.jpg">
			</div>
			<div class="col-xxl-6 col-xl-6 col-lg-8 col-md-12 search">
				<div class="row pb-3">
					<div class="col-md-3 hd" style="color: red;">
						<a href="#">Xu hướng tìm kiếm</a>
					</div>
					<div class="col-md-2 hd">
						<a href="#">Converse</a>
					</div>
					<div class="col-md-2 hd">
						<a href="#">Giày da</a>
					</div>
					<div class="col-md-4 hd">
						<a href="#">Giày thời trang nam</a>
					</div>
				</div>
				<div class="row">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="Tìm kiếm"
							aria-label="Recipient's username" aria-describedby="basic-addon2">
						<span class="input-group-text" id="basic-addon2"><i
							class="uil uil-search"></i></span>
					</div>
				</div>
			</div>
			<div class="col-xl-2 ps-4 login">
				<div class="row ps-5 pb-3">
					<div class="fs-4">
						<i class="uil uil-user-circle"></i>
					</div>
				</div>
				<div class="row">Đăng nhập / Đăng ký</div>
			</div>
			<div class="col-xl-1 col-lg-1 giohang">
				<a class="row pb-3" href="${base }/cart">
					<div>
						<button type="button" class="position-relative">
							<div class="fs-5">
								<i class="uil uil-shopping-cart-alt"></i>
							</div>
							<span
								class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" id="tongsanphamtronggiohang">
								 ${TongSoLuongSanPhamTrongGioHang }<span class="visually-hidden">unread messages</span>
							</span>
						</button>
					</div>

				</a>
				<div class="row">Giỏ hàng</div>
			</div>

		</div>
		<!-- /row -->


	</div>

</div>
<!-- /myheader -->

<!-- list -->
    <div class="list bg-danger">
        <div class="container">
            <div class="row menu">
                <div class="col-xxl-10 col-xl-8 col-lg-12 sub-list">
                    <ul style="line-height: 50px;margin-bottom: 0px;padding-left: 0px;">
                        <li>
                            <a href="${base }/home">TRANG CHỦ</a>
                        </li>
                        <li><a href="#">VỀ CHÚNG TÔI</a></li>
                        <li style="margin-left: -4px;">
                            <a href="${base }/shop">SẢN PHẨM</a>
                            <ul class="sub-menu">
                                <li><a href="#">Bộ sưu tập mới</a></li>
                                <li><a href="#">Giày thời trang nam</a></li>
                                <li><a href="#">Giày thời trang nữ</a></li>
                                <li><a href="#">Giày mùa hè</a></li>
                                <li><a href="#">Giày công sở</a></li>
                                <li><a href="#">Giày thể thao</a></li>
                                <li><a href="#">Giày đi chơi</a></li>
                                <li><a href="#">Giày trẻ em</a></li>
                                <li><a href="#">Giày</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="${base }/news">TIN TỨC</a>
                            <ul class="sub-menu">
                                <li><a href="#">Tin tức khuyến mại</a></li>
                                <li><a href="#">Tin tức giày</a></li>
                                <li><a href="#">Thời trang và cuộc sống</a></li>
                                <li><a href="#">Xu hướng thời trang</a></li>
                                <li><a href="#">Đẹp + Giày ...</a></li>
                                <li><a href="#">Tin thương hiệu</a></li>
                                <li><a href="#">Câu hỏi thường gặp</a></li>
                            </ul>
                        </li>
                        <li><a href="${base }/contact-us-spring-form">LIÊN HỆ</a></li>
                    </ul>
                </div>
                <div class="col-xxl-2 col-xl-4 hotline" style="line-height: 50px;color: white;">
                    <i class="uil uil-phone-volume"> &nbsp;&nbsp;&nbsp;HOTLINE: 1900 7650</i>
                </div>

            </div>
        </div>
    </div>
    <!-- /list -->

