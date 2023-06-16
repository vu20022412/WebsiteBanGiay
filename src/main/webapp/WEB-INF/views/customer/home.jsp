<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <!-- <script src="https://kit.fontawesome.com/a076d05399.js"></script> -->
    <jsp:include page="/WEB-INF/views/customer/css.jsp"></jsp:include>
    <link rel="stylesheet" href="${base }/css/home.css">
    <link rel="stylesheet" href="${base }/img">
    <script src="http://localhost:8080/js/jquery-3.6.3.min.js"></script>
<body>
    <!-- myheader -->
    <jsp:include page="/WEB-INF/views/customer/layout/myheader.jsp"></jsp:include>
    <!-- /myheader -->



    <!-- content -->
    <div class="content">
        <div class="container">
            <div class="top-content">
                <img src="img/top1.jpg" class="slide-show" style="width: 100%;height: 393px;">
            </div>

            <div class="middle-content">
                    <div class="row">
                        <!-- middle-content-left -->
                        <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-5 col-sm-6 left" >
                            <!-- middle-content-left -->
                            <div class="middle-content-left">
                                <!-- danh mục sản phẩm -->
                                <div class="danhmucsanpham">
                                    <div class="list-group danhmuc">
                                        <a href="#" class="list-group-item list-group-item-action bg-danger" aria-current="true" style="color: white;">
                                            <i class="uil uil-list-ul"></i>DANH MỤC SẢN PHẨM
                                        </a>
                                        <ul style="width: 100%;" class="list-group ul">
                                            <li><a href="#" class="list-group-item list-group-item-action">Bộ sưu tập mới</a></li>
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
                                            <li><a href="#" class="list-group-item list-group-item-action">Giày thể thao</a></li>
                                            <li id="xemthem1" class="xemthem1"><a href="#" class="list-group-item list-group-item-action ">Giày đi chơi</a></li>
                                            <li id="xemthem2" class="xemthem1"><a href="#" class="list-group-item list-group-item-action ">Giày trẻ em</a></li>
                                            <li id="xemthem3" class="xemthem1"><a href="#" class="list-group-item list-group-item-action ">Giày</a></li>
                                            <li id="xemthem4" class="xemthem1"><a href="#id" class="list-group-item list-group-item-action ">Thu gọn ...</a></li>
                                            <li id="xemthem" class="xemthem"><a href="#id" class="list-group-item list-group-item-action">Xem thêm ...</a></li>
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
    
                                <!-- tin tức -->
                                <div class="tintuc2">
                                    <div class="list-group sub-tintuc">
                                        <div class="list-group-item list-group-item-action bg-danger" style="color: white;text-align: center;">
                                            TIN TỨC
                                        </div>
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <div class="overall_tintuc">
                                                    <div style="padding-top: 10px;padding-bottom: 10px; text-align: center;"><img src="img/tintuc.jpg" style="width: 90%;"></div>
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
                                                        <p>Giày thể thao đang là phụ kiện không thể thiếu trong tủ giày dép của các bạn gái . Những đôi giày thể thao với thiết kế đa... <a href="${base }/product-news" class="doctiep">[Đọc tiếp...]</a></p>
                                                        
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
    
                        <!-- middle-content-main -->  
                        <div class="col-xxl-9 col-xl-9 col-lg-9 col-md-7 col-sm-6 main">
                            <div class="middle-content-main">
                                <!-- sản phẩm mới -->
                                <div class="sanphammoi">
                                    <div class="row" id="moi" style="width: 100%;margin-left: 0px !important; margin-right: 0px !important;">
                                        <div class="col-xl-11 col-lg-11 col-md-10 col-sm-12">
                                            <div class="text-spmoi1">&nbsp;&nbsp;&nbsp;&nbsp;SẢN PHẨM MỚI</div>
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
                                <!-- /sản phẩm mới -->

                                <!-- label1 -->
                                <div class="label1">
                                    <img src="img/img-spmoi.jpg" style="width: 100%;">
                                </div>
                                <!-- /label1 -->

                                <!-- sản phẩm khuyến mãi -->
                                <div class="sanphamkhuyenmai">
                                    <div class="row" id="khuyenmai" style="width: 100%;margin-left: 0px !important; margin-right: 0px !important;">
                                        <div class="col-xl-11 col-lg-11 col-md-10 col-sm-12">
                                            <div class="text-spmoi1">&nbsp;&nbsp;&nbsp;&nbsp;SẢN PHẨM KHUYẾN MÃI</div>
                                        </div>
                                        <div class="col-xl-1 col-lg-1 col-md-2 icon-left-right ps-4 pt-2" style="display: flex; color: red;">
                                            <div><i class="uil uil-angle-left"></i></div>
                                            <div><i class="uil uil-angle-right"></i></div>
                                        </div>
                                    </div> 
                                    <!-- hàng 1 sản phẩm mới -->
                                    <div id="list_sanphamkhuyenmai">
                                        <div class="row" style="margin-left: 0px !important; margin-right: 0px !important;">
                                            <div class="col-xl-3 col-lg-4 product_spkhuyenmai product_all_product">
                                                <div class="img-spkhuyenmai"><img src="img/km1.jpg"></div>
                                                <div class="text-spkhuyenmai" style="height: 50px; width: 170px;">Giày Converse Madison Mono</div>
                                                <div class="giamgia_khuyenmai">-33%</div>
                                                <div style="display: flex;">
                                                    <div class="price-spkhuyenmai">300.000đ</div>
                                                    <div class="price-giamgia_khuyenmai">480.000đ</div>
                                                </div>
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 product_spkhuyenmai product_all_product">
                                                <div class="img-spkhuyenmai"><img src="img/km2.jpg"></div>
                                                <div class="text-spkhuyenmai" style="height: 50px; width: 170px;">Giày Converse Camo Americana</div>
                                                
                                                <div class="giamgia_khuyenmai">-19%</div>
                                                <div style="display: flex;">
                                                    <div class="price-spkhuyenmai">650.000đ</div>
                                                    <div class="price-giamgia_khuyenmai">800.000đ</div>
                                                </div>
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>
        
                                            <div class="col-xl-3 col-lg-4 product_spkhuyenmai product_all_product">
                                                <div class="img-spkhuyenmai"><img src="img/km3.jpg"></div>
                                                <div class="text-spkhuyenmai" style="height: 50px; width: 170px;">Giày Converse Star Coolar Break</div>
                                                
                                                <div class="giamgia_khuyenmai">-4%</div>
                                                <div style="display: flex;">
                                                    <div class="price-spkhuyenmai">480.000đ</div>
                                                    <div class="price-giamgia_khuyenmai">520.000đ</div>
                                                </div>
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>
        
                                            <div class="col-xl-3 col-lg-4 product_spkhuyenmai product_all_product">
                                                <div class="img-spkhuyenmai"><img src="img/km4.jpg"></div>
                                                <div class="text-spkhuyenmai" style="height: 50px; width: 170px;">Giày Converse Star Unim</div>
                                                
                                                <div class="giamgia_khuyenmai">-43%</div>
                                                <div style="display: flex;">
                                                    <div class="price-spkhuyenmai">400.000đ</div>
                                                    <div class="price-giamgia_khuyenmai">760.000đ</div>
                                                </div>
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>

                                            <div class="col-xl-3 col-lg-4 product_spkhuyenmai product_all_product">
                                                <div class="img-spkhuyenmai"><img src="img/km5.jpg"></div>
                                                <div class="text-spkhuyenmai" style="height: 50px; width: 170px;">Giày đi chơi Converse 10</div>
                                                <div class="giamgia_khuyenmai">-47%</div>
                                                <div style="display: flex;">
                                                    <div class="price-spkhuyenmai">500.000đ</div>
                                                    <div class="price-giamgia_khuyenmai">980.000đ</div>
                                                </div>
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>

                                            <div class="col-xl-3 col-lg-4 product_spkhuyenmai product_all_product">
                                                <div class="img-spkhuyenmai"><img src="img/km6.jpg"></div>
                                                <div class="text-spkhuyenmai" style="height: 50px; width: 170px;">Giày Converse Star Seasonal</div>
                                                <div class="giamgia_khuyenmai">-29%</div>
                                                <div style="display: flex;">
                                                    <div class="price-spkhuyenmai">400.000đ</div>
                                                    <div class="price-giamgia_khuyenmai">570.000đ</div>
                                                </div>
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>

                                            <div class="col-xl-3 col-lg-4 product_spkhuyenmai product_all_product">
                                                <div class="img-spkhuyenmai"><img src="img/km7.jpg"></div>
                                                <div class="text-spkhuyenmai" style="height: 50px; width: 170px;">Giày Converse Star III</div>
                                                <div class="giamgia_khuyenmai">-33%</div>
                                                <div style="display: flex;">
                                                    <div class="price-spkhuyenmai">300.000đ</div>
                                                    <div class="price-giamgia_khuyenmai">450.000đ</div>
                                                </div>
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>

                                            <div class="col-xl-3 col-lg-4 product_spkhuyenmai product_all_product">
                                                <div class="img-spkhuyenmai"><img src="img/km8.jpg"></div>
                                                <div class="text-spkhuyenmai" style="height: 50px; width: 170px;">Giày Converse Overdye Wash</div>
                                                <div class="giamgia_khuyenmai">-41%</div>
                                                <div style="display: flex;">
                                                    <div class="price-spkhuyenmai">670.000đ</div>
                                                    <div class="price-giamgia_khuyenmai">1.120.000đ</div>
                                                </div>
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- /hàng 1 sản phẩm mới -->
                                </div>
                                <!-- /sản phẩm khuyến mãi -->

                                <!-- label2 -->
                                <div class="lable2">
                                    <img src="img/img-spkhuyenmai.jpg" style="width: 100%;">
                                </div>
                                <!-- /label2 -->


                                <!-- sản phẩm nổi bật -->
                                <div class="sanphamnoibat2">
                                    <div class="row" id="noibat" style="width: 100%;margin-left: 0px !important; margin-right: 0px !important;">
                                        <div class="col-xl-11 col-lg-11 col-md-10 col-sm-12">
                                            <div class="text-spmoi1">&nbsp;&nbsp;&nbsp;&nbsp;SẢN PHẨM NỔI BẬT</div>
                                        </div>
                                        <div class="col-xl-1 col-lg-1 col-md-2 ps-4 pt-2 icon-left-right" style="display: flex; color: red;">
                                            <div><i class="uil uil-angle-left"></i></div>
                                            <div><i class="uil uil-angle-right"></i></div>
                                        </div>
                                    </div> 
                                    <!-- hàng 1 sản phẩm mới -->
                                    <div id="list_sanphamnoibat">
                                        <div class="row" style="margin-left: 0px !important; margin-right: 0px !important;">
                                            <div class="col-xl-3 col-lg-4 product_spnoibat product_all_product">
                                                <div class="img-spnoibat"><img src="img/km5.jpg"></div>
                                                <div class="text-spnoibat" style="height: 50px; width: 170px;">Giày đi chơi Converse 10</div>
                                                <div class="giamgia_noibat">-47%</div>
                                                <div style="display: flex;">
                                                    <div class="price-spnoibat">500.000đ</div>
                                                    <div class="price-giamgia_noibat">980.000đ</div>
                                                </div>
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 product_spnoibat product_all_product">
                                                <div class="img-spnoibat"><img src="img/km6.jpg"></div>
                                                <div class="text-spnoibat" style="height: 50px; width: 170px;">Giày Converse Star Seasonal</div>
                                                <div class="giamgia_noibat">-29%</div>
                                                <div style="display: flex;">
                                                    <div class="price-spnoibat">400.000đ</div>
                                                    <div class="price-giamgia_noibat">570.000đ</div>
                                                </div>
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>
        
                                            <div class="col-xl-3 col-lg-4 product_spnoibat product_all_product">
                                                <div class="img-spnoibat"><img src="img/km7.jpg"></div>
                                                <div class="text-spnoibat" style="height: 50px; width: 170px;">Giày Converse Star III</div>
                                                <div class="giamgia_noibat">-33%</div>
                                                <div style="display: flex;">
                                                    <div class="price-spnoibat">300.000đ</div>
                                                    <div class="price-giamgia_noibat">450.000đ</div>
                                                </div>
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>
        
                                            <div class="col-xl-3 col-lg-4 product_spnoibat product_all_product">
                                                <div class="img-spnoibat"><img src="img/km8.jpg"></div>
                                                <div class="text-spnoibat" style="height: 50px; width: 170px;">Giày Converse Overdye Wash</div>
                                                <div class="giamgia_noibat">-41%</div>
                                                <div style="display: flex;">
                                                    <div class="price-spnoibat">670.000đ</div>
                                                    <div class="price-giamgia_noibat">1.120.000đ</div>
                                                </div>
                                                <div class="tuychon">Tuy chon</div>
                                                <div class="xemnhanh">Xem nhanh</div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /hàng 1 sản phẩm mới -->
                                </div>
                                <!-- /sản phẩm nổi bật -->
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
        $(document).ready(function(){
            // khai báo danh sách đường dẫn ảnh
            arr_slide = new Array();
            arr_slide[0] = "img/top1.jpg";
            arr_slide[1] = "img/top2.jpg";
            arr_slide[2] = "img/top3.jpg";

            // khai báo biến lưu vị trị ảnh
            var n=1;
            setInterval(function(){
                // thay đổi giá trị src của class = slide-show
                $(".slide-show").fadeOut(function(){
                    $(".slide-show").attr("src",arr_slide[n]);
                    $(".slide-show").fadeIn();
                    n++;
                    // nếu n ở vị trí cuối của array thì reset n=0
                    if(n == arr_slide.length){
                        n=0;
                    }
                })
            },5000);
        });


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
    </script>
</body>
</html>