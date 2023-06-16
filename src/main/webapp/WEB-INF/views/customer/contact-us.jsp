<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!-- import sf: spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>contact_us</title>
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/customer/css.jsp"></jsp:include>
    <link rel="stylesheet" href="${base }/img">
    <link rel="stylesheet" href="${base }/css/contact-us.css">
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
                <span>Trang chủ </span><i class="uil uil-angle-double-right text-danger"></i><span class="text-danger"> Liên hệ</span>
            </div>
            <!-- /top-content -->

            <!-- middle-content -->
            <div class="middle-content">
                <div class="row">
                    
                    <div class="col-xxl-5 col-xl-5 col-lg-5 col-md-5">
                        <!-- middle-content-left -->
                        <div class="middle-content-left">
                            <h3>Liên hệ</h3>
                         <%-- <form action="${base }/contact-us" method="post">
                                <p class="contact-tagP">Tên *</p>
                                <input name="name" type="text" class="contact-name" placeholder="Tên" style="width: 100%;">
                                <p class="contact-tagP">Email *</p>
                                <input name="email" type="text" class="contact-email" placeholder="Email" style="width: 100%;">
                                <p class="contact-tagP">Nội dung *</p>
                                <textarea name="content" id="contact-content" placeholder="Nội dung" rows="5" style="width: 100%;"></textarea>
                                <button type="submit" class="btn btn-danger text-right">Gửi liên hệ</button>
                            </form>--%>
                            
                           <sf:form modelAttribute="contactUs" action="${base }/contact-us-spring-form" method="post" enctype="multipart/form-data">
                                <p class="contact-tagP">Tên *</p>
                                <sf:input path="name" name="name" type="text" class="contact-name" placeholder="Tên" style="width: 100%;"></sf:input>
                                <p class="contact-tagP">Email *</p>
                                <sf:input path="email" name="email" type="text" class="contact-email" placeholder="Email" style="width: 100%;"></sf:input>
                                <p class="contact-tagP">Nội dung *</p>
                                <sf:textarea path="content" name="content" id="contact-content" class="contact-content" placeholder="Nội dung" style="width: 100%;" rows="5"></sf:textarea>
                                <!-- <p class="contact-tagP">Chon file *</p>
                                <input id="idFileContactUs" name="FileContactUs" type="file" style="width: 100%;"></input> -->
                                <button type="submit" class="btn btn-danger text-right">Gửi liên hệ</button>
                            </sf:form>
                            
                            
                            <!-- cách 3 : dùng ajax -->
                            	<!-- <p class="contact-tagP">Tên *</p>
                                <input name="name" type="text" id="name" class="contact-name" placeholder="Tên"></input>
                                <p class="contact-tagP">Email *</p>
                                <input name="email" type="text" id="email"  class="contact-email" placeholder="Email"></input>
                                <p class="contact-tagP">Nội dung *</p>
                                <textarea name="content" id="contact-content" class="contact-content" placeholder="Nội dung" rows="5"></textarea>
                                <button type="button" onclick="submit_form_via_ajax();" class="btn btn-danger text-right">Gửi liên hệ</button> -->
                            
                        </div>
                        <!-- /middle-content-left -->
                        
                        <!-- <script type="text/javascript">
                        	function submit_form_via_ajax(){
                        		alert($("#contact-content").val());
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
                        		});
                        	}
                        </script> -->
                    </div>
                    
                </div>
            </div>
            <!-- /middle-content -->
        </div>
    </div>
    <!-- content -->

    <hr>
    <!-- footer -->
    <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
    <!-- /footer -->
</body>
</html>