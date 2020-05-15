<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 입력</title>
<!-- resources 앞에 / 를 붙일때는 context path가 없는 경우일 때 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
<link rel="stylesheet" href="/resources/dist/css/register.css" />  
<!-- validation 사용자 작성 코드 삽입-->
<!-- <script src="/resources/js/register.js"></script> 
<script>
$(function(){
	let gender="${vo.gender}";
	if(gender==="남"){
		$("input[value='남']").prop("checked","true");
	}else if(gender==="여"){
		$("input[value='여']").prop("checked","true");
	}
})
</script> -->
</head>
<body  style="background-color:#F5F5F5;">
<header class="member_header">
		<h1 class="tit">
			<a href="/" class="sp_login logo_11st_s">Home</a>
			<span>회원가입</span>
		</h1>
		<ol class="location">
			<li class="step1">1 회원선택</li>
			<li class="step2">2 약관동의</li>
			<li class="step3 on">3 정보입력</li>
			<li class="step4">4 가입완료</li>
		</ol>
	</header>

<div class="container" style="margin-top:40px">
<form id="regist" method="post" action="memberJoin3">	
	<div class="form-group row justify-content-center">
		<label for="userid" class="col-sm-2 col-form-label">아이디</label>
		<div class="col-sm-6">			
			<input type="text" name="userid" id="userid" class="form-control" placeholder="아이디를 입력하세요" value="${vo.userid}" required/>
			 <small id="userid" class="text-info"></small>	
		</div>
	</div>
	<div class="form-group row justify-content-center">
		<label for="pass1" class="col-sm-2 col-form-label">비밀번호</label>
		<div class="col-sm-6">	
			<input type="password" name="passwd" id = "passwd" class="form-control" placeholder="비밀번호를 입력하세요" required/>
			<small id="password" class="text-info"></small>	
		</div>
	</div>	
	<div class="form-group row justify-content-center">
		<label for="pass2" class="col-sm-2 col-form-label">비밀번호 확인 </label>
		<div class="col-sm-6">	
			<input type="password" name="passwdconfirm" id = "passwdconfirm" class="form-control" placeholder="비밀번호를 다시 입력하세요" required/>
			<small id="passwdconfirm" class="text-info"></small>
		</div>	
	</div>	
	<div class="form-group row justify-content-center">
		<label for="name" class="col-sm-2 col-form-label">이름 </label>
		<div class="col-sm-6">	
			<input type="text" name="name" id="name" class="form-control" placeholder="이름을 입력하세요" value="${vo.name}" required/>
			<small id="name" class="text-info"></small>
		</div>	
	</div>
	<div class="form-group row justify-content-center">
		<label for = "address" class="col-sm-2 col-form-label">주소</label>
		<div class="col-sm-6">	
			<input type="text" name="address" id="address" class="form-control" placeholder="서울시 노원구" value="${vo.address}" required/>	
			<small id="address" class="text-info"></small>		
		</div>	
	</div>
	<div class="form-group row justify-content-center">
	<label for="pass2" class="col-sm-2 col-form-label">성별 </label>
	  <div class="col-sm-6">		
			<div class="form-check form-check-inline">		
				<input type="radio" id="gender" name="gender" value="남" class="form-check-input"/>남				
		  	</div>	
		  	<div class="form-check form-check-inline">
				<input type="radio" name="gender" value="여" class="form-check-input"/>여				
			</div>
			<small id="gender" class="text-info"></small>
		</div>
	</div>		
	<div class="form-group row justify-content-center">
		<label for = "email" class="col-sm-2 col-form-label">이메일</label>
		<div class="col-sm-6">	
			<input type="email" name="email" id="email" class="form-control" placeholder="example@gmail.com" value="${vo.email}" required/>	
			<small id="email" class="text-info"></small>		
		</div>	
	</div>
	
	<div class="form-group text-center">		
		<button type="submit" class="btn btn-primary">입력</button>
	    <button type="reset" class="btn btn-secondary">취소</button>		
	</div>		
</form>
</div>
</body>
</html>