<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>product-detail</title>
	<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/customer/css.jsp"></jsp:include>
	<link rel="stylesheet" href="${base }/css/product-detail.css">
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
                <span>Trang chủ </span><i class="uil uil-angle-double-right"></i><span> Giày đi chơi </span><i class="uil uil-angle-double-right text-danger"></i><span class="text-danger">Copy of Giày Converse Star Dainty</span>
            </div>
            <hr>


            <!-- middle-content -->
            <div class="middle-content">
                <div class="row">
                    <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-12">
                        <div class="row">
                            <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 img" style="margin-left:6%;">
                                <img style="width: 60%; text-align: center;border: 1px solid #ebebeb;margin-top: -10px;" src="https://bizweb.dktcdn.net/100/091/132/products/16-min-6e3aee76-ce87-4537-b513-8b3ebfd4ee1e.jpg?v=1490599565733" id="show-image">
                            </div>
                            <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-3"><img src="https://bizweb.dktcdn.net/100/091/132/products/16-min-6e3aee76-ce87-4537-b513-8b3ebfd4ee1e.jpg?v=1490599565733" class="iamge-nho"  style="border: 1px solid #ebebeb;" id="img1" onclick="change_img('img1')"></div>
                            <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-3"><img src="https://bizweb.dktcdn.net/thumb/large/100/091/132/products/2-min-39c1ec99-340a-4c62-b11c-7e582ebf95ad.jpg" class="iamge-nho"  style="border: 1px solid #ebebeb;" id="img2" onclick="change_img('img2')"></div>
                            <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-3"><img src="https://bizweb.dktcdn.net/thumb/large/100/091/132/products/7-min-0984679d-d830-4001-b1f2-edc174fca256-13f60619-8f5e-4b74-a805-b43024ac36c3.jpg" class="iamge-nho"  style="border: 1px solid #ebebeb;" id="img3" onclick="change_img('img3')"></div>
                        </div>
                    </div>
                    <div class="col-xxl-5 col-xl-5 col-lg-5 col-md-6 col-sm-8 thongtingiay">
                        <h5>Copy of Giày Converse Star Dainty</h5>
                        <div style="display: flex;">
                            <p style="display: block;">Thương hiệu:</p>
                            <p style="display: block;color: red;padding-right: 5px;border-right: 2px solid #ebebeb;" class="thuonghieu">&nbsp;Converse</p>
                            <p style="display: block;padding-left: 5px;">Loại: </p>
                            <p style="display: block;color: red;">&nbsp;Giày vải</p>
                        </div>
                        <h5 style="color: red;"><a href="${base }/contact-us-spring-form">Liên hệ</a></h5>
                        <hr>
                        <p>Mô tả : </p>
                        <p>- Chất liệu giày bằng da bò mềm với chi tiết mũi giày cap-toe</p>
                        <p>- Mắt xỏ dây âm với dây cột nylon</p>
                        <p>- Lót trong bằng da thoáng khí tự nhiên</p>
                        <hr>
                        <div style="display: flex;padding-top: 30px;">
                            <p style="display: block;">Tags:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                            <p style="display: block;padding-right: 15px;">converse</p>
                            <p style="display: block;">Giày vải</p>
                        </div>
                        <div style="padding-top: 20px;display: flex;">
                            <p style="display: block;">Chia sẻ:&nbsp;&nbsp;&nbsp;&nbsp;</p>
                            <a href="#" class="icon-fb-tw-gg"><i class="uil uil-facebook" style="padding-right: 20px;"></i></a>
                            <a href="#" class="icon-fb-tw-gg"><i class="uil uil-twitter" style="padding-right: 20px;"></i></a>
                            <a href="#" class="icon-fb-tw-gg"><i class="uil uil-google"></i></a>
                        </div>
                    </div>
                    <div class="col-xxl-3 col-xl-3 col-lg-3 col-sm-8 thongtinvanchuyen">
                        <div style="border-top: 1px solid #ebebeb;border-right: 1px solid #ebebeb;border-left: 1px solid #ebebeb;padding-bottom: 10px;">
                            <div class="fs-2" style="text-align: center;"><i class="uil uil-car-sideview"></i></div>
                            <p style="width: 90%; text-align: center;margin: auto;">Miễn phí vận chuyển với đơn hàng lớn hơn 1.000.000 đ</p>
                        </div>

                        <div style="border-top: 1px solid #ebebeb;border-right: 1px solid #ebebeb;border-left: 1px solid #ebebeb;padding-bottom: 10px;">
                            <div class="fs-2" style="text-align: center;"><i class="uil uil-clock-three"></i></div>
                            <p style="width: 90%; text-align: center;margin: auto;">Giao hàng ngay sau khi đặt hàng (áp dụng với Hà Nội & HCM)</p>
                        </div>

                        <div style="border-top: 1px solid #ebebeb;border-right: 1px solid #ebebeb;border-left: 1px solid #ebebeb;padding-bottom: 10px;">
                            <div class="fs-2" style="text-align: center;"><i class="uil uil-arrows-h"></i></div>
                            <p style="width: 90%; text-align: center;margin: auto;">Đổi trả trong 3 ngày, thủ tục đơn giản</p>
                        </div>

                        <div style="border: 1px solid #ebebeb;padding-bottom: 10px;">
                            <div class="fs-2" style="text-align: center;"><i class="uil uil-receipt"></i></div>
                            <p style="width: 90%; text-align: center;margin: auto;">Nhà cung cấp xuất hóa đơn cho sản phẩm này</p>
                        </div>
                    </div>
                </div>

                <div class="chitietsanpham" style="margin-top: 50px;">
                    <div class="row row_chitiet">
                        <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-4 col-sm-6 chitiet" style="text-align: center;color: red;border-top: 2px solid black;border-right: 1px solid #ebebeb;border-left: 1px solid #ebebeb;" id="chitiet" onclick="clickChiTiet()">CHI TIẾT SẢN PHẨM</div>
                        <div class="col-xxl-1 col-xl-2 col-lg-2 col-md-3 col-sm-3 thetag" onclick="clickTags()" id="thetag" style="text-align: center;border-bottom: 1px solid #ebebeb;">THẺ TAGS</div>
                        <div class="col-xxl-9 col-xl-8 col-lg-7 col-md-5 col-sm-3 trong" id="trong" style="border-bottom: 1px solid #ebebeb;"></div>
                        <div></div>
                        <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 mota" id="mota" style="border: 1px solid #ebebeb;padding-top: 30px;border-top: 0px;">
                            <p>Giày thể thao nam đẹp da màu nâu cao cấp, thanh lịch từ thương hiệu Converse®</p>
                            <p>Chất liệu giày bằng da bò mềm với chi tiết mũi giày cap-toe</p>
                            <p>Mắt xỏ dây âm với dây cột nylon</p>
                            <p>Lót trong bằng da thoáng khí tự nhiên</p>
                            <p>Đệm lót giày bằng da bọc thoải mái và hỗ trợ chân</p>
                            <p>Đế ngoài băng cao su hấp thụ sốc tốt và bám tốt trên mọi bề mặt</p>
                            <div style="text-align: center;" class="mota1"><img src="https://bizweb.dktcdn.net/thumb/large/100/091/132/files/7-min-7e1f179c-5b21-4dd2-a190-1bad626a9afb.jpg?v=1468392267148" alt=""></div>
                            <p class="mota2">Được thành lập vào năm 1978, thương hiệu Nine West xuất phát từ địa chỉ ở thành phố New York. Trong 30 năm, Nine West đã phát triển và trở thành người đứng đầu trong lĩnh vực thời trang nổi tiếng thế giới. Ngày nay, giầy - túi xách - trang sức Nine West được yêu mến bởi phụ nữ trên toàn thế giới và được xem như một chuyên gia tư vấn đáng tin cậy trong mọi lĩnh vực thời trang, bao gồm cả thời trang trẻ em.</p>
                        </div>

                        <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 tags" style="display: none;padding-bottom: 50px;" id="tags">
                            <div class="row" style="margin-top: 30px;">
                                <div class="col-xxl-1 col-xl-1 col-lg-1 col-md-2 col-sm-2 sub1_tags" style="text-align: center;line-height: 40px;">
                                    converse
                                </div>
                                <div class="col-xxl-1 col-xl-1 col-lg-2 col-md-2 col-sm-2 sub2_tags" style="text-align: center;line-height: 40px;">
                                    Giày vải
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="sanphammoi" style="margin-top: 30px;">
                    <div class="row" id="moi" style="width: 100%;margin-left: 0px !important; margin-right: 0px !important;">
                        <div class="col-xl-11 col-lg-11 col-md-10 col-sm-12">
                            <div class="text-spmoi1">&nbsp;&nbsp;&nbsp;&nbsp;SẢN PHẨM LIÊN QUAN</div>
                        </div>
                        <div class="col-xl-1 col-lg-1 col-md-2 icon-left-right ps-4 pt-2" style="display: flex; color: red;">
                            <div><i class="uil uil-angle-left"></i></div>
                            <div><i class="uil uil-angle-right"></i></div>
                        </div>
                    </div> 
                    <!-- hàng 1 sản phẩm mới -->
                    <div id="list_sanphammoi">
                        <div class="row" style="margin-left: 0px !important; margin-right: 0px !important;">
                            <div class="col-xl-3 col-lg-4 product_spmoi product_all_product">
                                <div class="img-spmoi"><img src="img/sp-moi1.jpg"></div>
                                <div class="text-spmoi" style="height: 50px;">Giày da Converse cao cấp</div>
                                <div class="giamgia_moi">-20%</div>
                                <div style="display: flex;">
                                    <div class="price-spmoi">1.200.000đ</div>
                                    <div class="price-giamgia_moi">1.400.000đ</div>
                                </div>
                                <div class="tuychon">Tuy chon</div>
                                <div class="xemnhanh">Xem nhanh</div>
                            </div>
                            <div class="col-xl-3 col-lg-4 product_spmoi product_all_product">
                                <div class="img-spmoi"><img src="img/sp-moi2.jpg"></div>
                                <div class="text-spmoi" style="height: 50px;">Giày thể thao Converse 4</div>
                                <div class="giamgia_moi">-33%</div>
                                <div style="display: flex;">
                                    <div class="price-spmoi">600.000đ</div>
                                    <div class="price-giamgia_moi">900.000đ</div>
                                </div>
                                <div class="tuychon">Tuy chon</div>
                                <div class="xemnhanh">Xem nhanh</div>
                            </div>

                            <div class="col-xl-3 col-lg-4 product_spmoi product_all_product">
                                <div class="img-spmoi"><img src="img/sp-moi3.jpg"></div>
                                <div class="text-spmoi" style="height: 50px;">Giày vải Converse 3</div>
                                <div class="giamgia_moi">-25%</div>
                                <div style="display: flex;">
                                    <div class="price-spmoi">700.000đ</div>
                                    <div class="price-giamgia_moi">1.100.000đ</div>
                                </div>
                                <div class="tuychon">Tuy chon</div>
                                <div class="xemnhanh">Xem nhanh</div>
                            </div>

                            <div class="col-xl-3 col-lg-4 product_spmoi product_all_product">
                                <div class="img-spmoi"><img src="img/sp-moi4.jpg"></div>
                                <div class="text-spmoi" style="height: 50px;">Giày thể thao Converse 3</div>
                                <div class="giamgia_moi">-41%</div>
                                <div style="display: flex;">
                                    <div class="price-spmoi">670.000đ</div>
                                    <div class="price-giamgia_moi">1.200.000đ</div>
                                </div>
                                <div class="tuychon">Tuy chon</div>
                                <div class="xemnhanh">Xem nhanh</div>
                            </div>
                        </div>
                    </div>
                    <!-- /hàng 1 sản phẩm mới -->
                </div>
            </div>
            <!-- /middle-content -->

        </div>
        
    </div>
    <!-- /content -->

    <hr>
    <!-- footer -->
    <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
    <!-- /footer -->

    <script>
        $(document).ready(function(){
            // khai bÃ¡o danh sÃ¡ch ÄÆ°á»ng dáº«n áº£nh
            arr_slide = new Array();
            arr_slide[0] = "images/top1.jpg";
            arr_slide[1] = "images/top2.jpg";
            arr_slide[2] = "images/top3.jpg";

            // khai bÃ¡o biáº¿n lÆ°u vá» trá» áº£nh
            var n=1;
            setInterval(function(){
                // thay Äá»i giÃ¡ trá» src cá»§a class = slide-show
                $(".slide-show").fadeOut(function(){
                    $(".slide-show").attr("src",arr_slide[n]);
                    $(".slide-show").fadeIn();
                    n++;
                    // náº¿u n á» vá» trÃ­ cuá»i cá»§a array thÃ¬ reset n=0
                    if(n == arr_slide.length){
                        n=0;
                    }
                })
            },5000);
        });

        function clickTags(){
            document.getElementById("mota").setAttribute("style","display:none;");
            document.getElementById("tags").removeAttribute("style");
            document.getElementById("tags").setAttribute("style" , "display:block;border: 1px solid #ebebeb;border-top: 0px;padding-bottom:50px;");
            document.getElementById("chitiet").removeAttribute("style");
            document.getElementById("chitiet").setAttribute("style","border-bottom:1px solid #ebebeb;text-align: center;")
            document.getElementById("thetag").removeAttribute("style");
            document.getElementById("thetag").setAttribute("style","border-top: 2px solid black;border-right: 1px solid #ebebeb;border-left: 1px solid #ebebeb;text-align: center;color: red;");
        }

        function clickChiTiet(){
            document.getElementById("tags").removeAttribute("style");
            document.getElementById("tags").setAttribute("style" , "display:none;")
            document.getElementById("mota").setAttribute("style","display:block;border: 1px solid #ebebeb;border-top: 0px;padding-top:30px;");
            document.getElementById("thetag").removeAttribute("style");
            document.getElementById("thetag").setAttribute("style","text-align: center;border-bottom:1px solid #ebebeb;");
            document.getElementById("chitiet").removeAttribute("style");
            document.getElementById("chitiet").setAttribute("style" , "text-align: center;color: red;border-top: 2px solid black;border-right: 1px solid #ebebeb;border-left: 1px solid #ebebeb;");
        }

        function change_img(id){    
            var src_img = document.getElementById(id).getAttribute("src");
            document.getElementById("show-image").setAttribute("src",src_img);
        }
    </script>
</body>
</html>






