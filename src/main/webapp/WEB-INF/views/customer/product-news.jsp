<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>product-news</title>
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/customer/css.jsp"></jsp:include>
	<link rel="stylesheet" href="${base }/css/product-news.css">
	<link rel="stylesheet" href="${base }/img">
    <script src="js/jquery-3.6.3.min.js"></script>
</head>
<body>
    <!-- myheader -->
    <jsp:include page="/WEB-INF/views/customer/layout/myheader.jsp"></jsp:include>
    <!-- /myheader -->


    <!-- content -->
    <div class="content">
        <div class="container">
            <div class="top-content">
                <span>Trang chủ </span><i class="uil uil-angle-double-right"></i><span> Tin tức </span><i class="uil uil-angle-double-right text-danger"></i><span class="text-danger">Chọn giày thể thao cho bạn gái nữ tính</span>
            </div>

            <div class="middle-content">
                    <div class="row">
                        <!-- middle-content-left -->
                        <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-5 col-sm-6 left" >
                            <!-- middle-content-left -->
                            <div class="middle-content-left">
                                <!-- danh mục tin tức -->
                                <div class="danhmucsanpham">
                                    <div class="list-group danhmuc">
                                        <a href="#" class="list-group-item list-group-item-action bg-danger" aria-current="true" style="color: white;">
                                            <i class="uil uil-list-ul"></i>DANH MỤC SẢN PHẨM
                                        </a>
                                        <a href="#" class="list-group-item list-group-item-action">Tin tức khuyến mãi</a>
                                        <a href="#" class="list-group-item list-group-item-action">Tin tức giày</a>
                                        <a href="#" class="list-group-item list-group-item-action">Thời trang và cuộc sống</i></a>
                                        <a href="#" class="list-group-item list-group-item-action">Xu hướng thời trang</a>
                                        <a href="#" class="list-group-item list-group-item-action">Đẹp + giày ...</a>
                                        <a href="#" class="list-group-item list-group-item-action">Tin thương hiệu</a>
                                        <a href="#" class="list-group-item list-group-item-action" style="font-weight: bold;">Xem thêm ...</a>
                                      </div>
                                </div>
                                <!-- /danh mục tin tức -->
    
    
                                <!-- img-giamgia -->
                                <div class="img_giamgia" style="overflow: hidden; margin-top: 20px;">
                                    <div style="transition: scale 1.2s;" class="anh"><img src="img/giam50.jpg" style="width: 100%;"></div>
                                </div>
                                <!-- /img-giamgia -->
    
                                <!-- tin tức -->
                                <div class="tintuc2">
                                    <div class="list-group sub-tintuc">
                                        <div class="list-group-item list-group-item-action bg-danger" style="color: white;text-align: center;">
                                            TIN TỨC
                                        </div>
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <div class="overall_tintuc">
                                                    <div style="padding-top: 10px;padding-bottom: 10px; text-align: center;"><img src="img/tintuc.jpg" class="img-tintuc"></div>
                                                    <div class="text1_tintuc" style="width: 90%;margin: auto;"><span>Chọn giày thể thao cho bạn gái nữ tính</span></div>
                                                    <div class="text2-tintuc" style="width: 80%; margin: auto; padding-top: 10px;">
                                                        <a href="#">
                                                            <i class="uil uil-user"></i>
                                                            <span> Nguyễn Văn An</span>
                                                        </a>
                                                        <a href="#">
                                                            <i class="uil uil-calendar-alt"></i>
                                                            <span> 28/03/2023</span>
                                                        </a>
                                                    </div>
                                                    <div class="text3-tintuc">
                                                        <p>Giày thể thao đang là phụ kiện không thể thiếu trong tủ giày dép của các bạn gái . Những đôi giày thể thao với thiết kế đa dạng</p>
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
                        <!-- /middle-content-left -->

                        <div class="col-xxl-8 col-xl-9 col-lg-9 col-md-7 col-sm-6 main">
                            <div class="middle-content-main">
                                <div>
                                    <img src="img/product-news.jpg" class="img-product-news">
                                    <h3>Chọn giày thể thao cho bạn gái nữ tính</h3>
                                </div>
                                <div class="text2-tintuc" style="padding-top: 5px;">
                                    <a href="#">
                                        <i class="uil uil-user" style="color: #707070;"></i>
                                        <span style="color: #707070;"> Nguyễn Văn An&nbsp;&nbsp;</span>
                                    </a>
                                    <a href="#">
                                        <i class="uil uil-calendar-alt" style="color: #707070;"></i>
                                        <span style="color: #707070;"> 27/05/2021</span>
                                    </a>
                                </div>
                                <div style="padding-top: 5px;">
                                    <p>Giày thể thao đang là phụ kiện không thể thiếu trong tủ giày dép của các bạn gái. Những đôi giày thể thao với thiết kế đa dạng, nhiều màu sắc thường được phái đẹp lựa chọn. Những đôi giày thể thao mang phong cách trẻ trung với gam màu ngọt ngào như cam, hồng, vàng… thể hiện sự năng động nhưng không kém phần nữ tính cho phái đẹp. Giày thể thao không chỉ đẹp về kiểu dáng mà còn tạo sự thoải mái và tiện lợi, luôn là người bạn đồng hành không thể thiếu của những cô nàng mê thể thao. Trong tiết trời se lạnh, giày thể thao càng chứng tỏ được tầm quan trọng nhờ khả năng giữ ấm cho bàn chân. Với các gam màu kẹo ngọt, các bạn nữ có thể phối cùng với những bộ trang phục như váy ngắn, áo thun, quần short tùy ý.</p>
                                </div>
                                <div style="padding-bottom: 20px;">
                                    <p>Không đơn thuần dành riêng cho nam giới, những đôi giày thể thao với thiết kế đa dạng, phối nhiều màu sắc khác nhau sẽ giúp các bạn nữ nổi bật và tự tin hơn. Với đặc điểm đế thấp, những đôi giày thể thao có cấu tạo nhẹ, đơn giản nên thỏa mãn được nhu cầu của nhiều tín đồ thời trang. Các gam màu đa dạng được phối cùng nhau tạo nên tổng thể bắt mắt sẽ là trợ thủ đắc lực của những bạn nữ luôn chú trọng ngoại hình nội bật. Với những đôi giày thể thao cá tính, các bạn gái có thể dễ dàng phối cùng các trang phục năng động như áo thun oversize cùng quần skinny, đi kèm với những chiếc áo khoác thật đa dạng.  </p>
                                </div>

                                <div style="display: flex;">
                                    <p style="display: block;margin-bottom: 0px !important;margin-top: 5px;">Tags:&nbsp;&nbsp;&nbsp;&nbsp;</p>
                                    <button type="button" class="btn btn-danger">giay</button>
                                    <button type="button" class="btn btn-danger" style="margin-left: 10px;">tin tuc</button>
                                </div>

                                <div style="padding-top: 20px;display: flex;">
                                    <p style="display: block;">Chia sẻ:&nbsp;&nbsp;&nbsp;&nbsp;</p>
                                    <a href="#" class="icon-fb-tw-gg"><i class="uil uil-facebook"></i></a>
                                    <a href="#" class="icon-fb-tw-gg"><i class="uil uil-twitter"></i></a>
                                    <a href="#" class="icon-fb-tw-gg"><i class="uil uil-google"></i></a>
                                </div>

                                <div style="margin-top: 20px;">
                                    <h4>BÌNH LUẬN (0)</h4>
                                </div>
                            </div>

                            <div class="comment">
                                <h4 style="padding-bottom: 20px;">VIẾT BÌNH LUẬN</h4>
                                <form action="" method="post">
                                    <div class="hoten-email">
                                        <input type="text" placeholder="Họ tên" style="width: 295px;">
                                        <input type="text" placeholder="Email" style="width: 295px;margin-left: 20px;">
                                    </div>
                                    <textarea name="cmt" id="cmt" cols="80" rows="5" placeholder="Nội dung" style="margin-top: 30px;display: block;"></textarea>
                                    <input type="submit" value="Gửi bình luận" style="margin-top: 20px;border: red;color: white;line-height: 30px;" class="bg-danger">
                                </form>
                            </div>
                        </div>
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

</body>
</html>






