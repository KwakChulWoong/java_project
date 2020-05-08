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
<body data-gr-c-s-loaded="true">
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3 style="text-align:center;">로그인</h3>
                </div>
                <div class="card-body">
                    <form>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" class="form-control" placeholder="아이디">
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" class="form-control" placeholder="비밀번호">
                        </div>
                        <!-- 카카오톡 기존에 만들어놨던거 -->
                        <!-- <p id="kakaoLogin" style="float:right;">
                  <a href="https://kauth.kakao.com/oauth/authorize?client_id=aa1b2c4de3d7d82d21d7071bd9edf938&redirect_uri=http://localhost:8080/kakaologin&response_type=code">
                     <img id="kakaoLogin" src="/resources/images/kakao_login_btn_medium_wide.png" style="width:100px; height:38px;"/>
                  </a>
               </p> -->
                        <div class="form-group">
                            <button type="submit" value="Login" class="btn float-right login_btn" style="height:40px;">
                                <a>로그인</a>
                            </button>
                            <button type="submit" value="카카오로그인" class="btn float-right login_btn" style="height:40px; width:150px; margin-right:10px;">
                            <a href="https://kauth.kakao.com/oauth/authorize
							?client_id=aa1b2c4de3d7d82d21d7071bd9edf938
							&redirect_uri=http://localhost:8080/register/kakaologin
							&response_type=code">
							<svg class="bi bi-chat-dots-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M16 8c0 3.866-3.582 7-8 7a9.06 9.06 0 01-2.347-.306c-.584.296-1.925.864-4.181 1.234-.2.032-.352-.176-.273-.362.354-.836.674-1.95.77-2.966C.744 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7zM5 8a1 1 0 11-2 0 1 1 0 012 0zm4 0a1 1 0 11-2 0 1 1 0 012 0zm3 1a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path>
                                    </svg> 카카오로그인</a>
                            </button>
                        </div>
                        <br>
                        <div class="row align-items-center remember" style="margin-top:30px;">
                            <input type="checkbox">Remember Me
                        </div>
                    </form>
                </div>
                <div class="card-footer">
                    <div class="d-flex justify-content-center links">
                        등록된 계정이 없으신가요?<a href="#" style="color:#ffc001;">회원 가입</a>
                    </div>
                    <div class="d-flex justify-content-center">
                        <a href="#" style="color:#ffc001;">비밀번호를 잊으셨나요?</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>