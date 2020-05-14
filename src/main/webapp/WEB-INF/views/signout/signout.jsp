<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login Page</title>
   	
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="/resources/dist/css/login.css">
</head>
<!-- 회원탈퇴하는 페이지는 그냥 로그인페이지 css를 통으로 끌고 와서 수정한거밖에 없음 -->
<body data-gr-c-s-loaded="true">
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3 style="text-align:center;">회원 탈퇴</h3>
                </div>
                <div class="card-body">
                    <form method="post">
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <!-- 회원탈퇴할때 아이디는 readonly주고 ${info.userid} 아이디 자동으로 들어오게끔 -->
                            <input type="text" name="userid" id="userid" class="form-control" placeholder="아이디" readonly value="${info.userid}">
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" name="current_password" id="current_password" class="form-control" placeholder="비밀번호" autofocus="autofocus">
                        </div>
                        <br />
                        <br />
                        <div class="form-group">
                            <button type="submit" value="Login" class="btn float-right login_btn" style="height:40px; margin:auto; width:50%;">
                                <a>회원탈퇴</a>
                            </button>
                        </div>
                        <br>
                    </form>
                </div>
                <div class="card-footer">
                	<div class="d-flex justify-content-center">
                        <a href="/" style="color:#ffc001;">안녕히 가세요.</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>