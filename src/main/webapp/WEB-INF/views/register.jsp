<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <style>
        .hide1{
            display: none;
        }
    </style>
    <div class="container">
        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <div class="card">
                                    <div class="card-header">Register</div>
                                    <div class="card-body">
        
                                        
        
                                            
                                            <div class="form-group">
                                                <label for="username" class="cols-sm-2 control-label">Username</label>
                                                <div class="cols-sm-10">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                                        <input type="text" class="form-control" name="username" id="username" placeholder="Enter your Username"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="password" class="cols-sm-2 control-label">Password</label>
                                                <div class="cols-sm-10">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                        <input type="password" class="form-control" name="password" id="password" placeholder="Enter your Password" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
                                                <div class="cols-sm-10">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                        <input type="password" class="form-control" name="confirm" id="confirm" placeholder="Confirm your Password" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="email" class="cols-sm-2 control-label">Your Email</label>
                                                <div class="cols-sm-10">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                                        <input type="email" class="form-control" name="email" id="email" placeholder="Enter your Email" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="name" class="cols-sm-2 control-label">Your Phone</label>
                                                <div class="cols-sm-10">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                        <input type="text" class="form-control" name="phone" id="phone" placeholder="Enter your Phone"/>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group ">
                                                <button type="submit"  class="btn btn-primary btn-lg btn-block login-button Register" onclick="register('${base}')">Register</button>
                                            </div>
                                           
                                        
                                    </div>
        
                                </div>
                            </div>
                        </div>
        </div>
        
        <script>
            function register(_baseUrl){
            	var _username = document.getElementById("username").value;
                var _password = document.getElementById("password").value;
                var _confirmPassWord = document.getElementById("confirm").value;
                var _YourEmail = document.getElementById("email").value;
                var _YourPhone = document.getElementById("phone").value;

                var requestBody = {
            		userName: _username,
            		password: _password,
                    confirmPassWord: _confirmPassWord,
                    YourEmail: _YourEmail,
                    YourPhone: _YourPhone
            	};
                
                jQuery.ajax({
            		url: _baseUrl + "/register", //-> request mapping định nghĩa bên controller
            		type: "post",					   //-> method type của Request Mapping	
            		contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
            		data: JSON.stringify(requestBody), //-> chuyển 1 javascript object thành string json
            	
            		dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
            		success: function(jsonResult) {
            			alert(jsonResult.status);
            			
            		},
            		error: function(jqXhr, textStatus, errorMessage) {
            			alert("error");
            		}
            	});
            }
        </script>
</body>
</html>