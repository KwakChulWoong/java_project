<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/resources/dist/css/register.css" /> 
<style>
	.body{
	
	}
</style>
<body>
<div class="member_wrap">
	<header class="member_header">
		<h1 class="tit">
			<a href="/" class="sp_login logo_11st_s">Home</a>
			<span>회원가입</span>
		</h1>
		<ol class="location">
			<li class="step1 on">1 회원선택</li>
			<li class="step2">2 약관동의</li>
			<li class="step3">3 정보입력</li>
			<li class="step4">4 가입완료</li>
		</ol>
	</header>
	<div class="join_main">
<!--		<h2 class="txt_hide">회원선택</h2> -->
		<div class="join_person">
			<p class="txt_desc">안녕하세요.<br>마켓입니다.</p>
			<ul class="btn_box">
				<li>
					<a href="step1">마켓 아이디가입</a>
				</li>
				<li>	
<!-- 					<button id="oauthListButton" type="button" class="btn_join" onclick="toggleOauthJoin();">소셜계정 간편가입<span>리스트 열기</span></button> -->
					<ul class="sns_list">
<!--						<li><a href="javascript:goOauth('naver');"><span class="sp_login naver">네이버계정으로 가입</span></a></li> -->
																							
						<li><a href="https://kauth.kakao.com/oauth/authorize
							?client_id=aa1b2c4de3d7d82d21d7071bd9edf938
							&redirect_uri=http://localhost:8080/register/kakaologin
							&response_type=code">
							<span class="sp_login kakao"><img id="loginClass" src="../resources/dist/images/kakao_login_btn_medium_wide.png"/>카카오계정으로 가입</span></a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>