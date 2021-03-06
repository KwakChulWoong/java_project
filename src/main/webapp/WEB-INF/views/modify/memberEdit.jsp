<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/dist/css/register2.css" rel="stylesheet">
<meta charset="UTF-8">
<title>회원정보 수정</title>
<style>
</style>
<script>
$(function(){
	let error = '${error}';
	if(error!==''){
		alert(error);
	}
})
</script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
<link rel="stylesheet" href="/resources/dist/css/register.css" />  
</head>
<body>
<div class="container" style="max-width:50%;">
<form id="memberEdit" method="post" action="memberEdit" style="padding-top:250px;">	
  	<div class="edit-header" style="font-size:40px;color:white; margin-left:155px; margin-bottom:50px;">회원정보 변경</div>
	<div class="form-group row justify-content-center">
		<label for="userid" class="col-sm-2 col-form-label" style="color:white;">아이디</label>
		<div class="col-sm-6">			
			<input type="text" name="userid" id="userid" class="form-control" placeholder="아이디를 입력하세요" value="${info.userid}" readonly/>
			 <small id="userid" class="text-info"></small>	
		</div>
	</div>	
	<div class="form-group row justify-content-center">
		<label for="pass2" class="col-sm-2 col-form-label" style="color:white">비밀번호 확인 </label>
		<div class="col-sm-6">	
			<input type="password" name="passwdconfirm" id = "passwdconfirm" class="form-control" placeholder="비밀번호를 다시 입력하세요" required/>
			<small id="passwdconfirm" class="text-info"></small>
		</div>	
	</div>	
	<div class="form-group row justify-content-center">
		<label for="name" class="col-sm-2 col-form-label" style="color:white">이름 </label>
		<div class="col-sm-6">	
			<input type="text" name="name" id="name" class="form-control" placeholder="이름을 입력하세요" value="${info.name}" readonly/>
			<small id="name" class="text-info"></small>
		</div>	
	</div>
	<div class="form-group row justify-content-center">
		<label for = "address" class="col-sm-2 col-form-label" style="color:white">주소</label>
		<div class="col-sm-6">	
			<input type="text" name="address" id="address" class="form-control" placeholder="ㅇㅇ시 ㅇㅇ구" value="${vo.address}" required/>	
			<small id="address" class="text-info"></small>		
		</div>	
	</div>
	<div class="form-group row justify-content-center">
	<label for="pass2" class="col-sm-2 col-form-label" style="color:white">성별 </label>
	  <div class="col-sm-6">		
			<div class="form-check form-check-inline" style="color:white">		
				<input type="radio" id="gender" name="gender" value="남" class="form-check-input"/>남				
		  	</div>	
		  	<div class="form-check form-check-inline" style="color:white">
				<input type="radio" name="gender" value="여" class="form-check-input"/>여				
			</div>
			<small id="gender" class="text-info"></small>
		</div>
	</div>		
	<div class="form-group row justify-content-center">
		<label for = "email" class="col-sm-2 col-form-label" style="color:white">이메일</label>
		<div class="col-sm-6">	
			<input type="email" name="email" id="email" class="form-control" placeholder="example@gmail.com" value="${vo.email}" required/>	
			<small id="email" class="text-info"></small>		
		</div>	
	</div>
	
	<div class="form-group text-center">		
		<button type="submit" class="btn btn-primary">입력</button>
	    <button type="reset" class="btn btn-secondary" style="background-color:white;"><a href="/mypage">취소</a></button>		
	</div>		
</form>
</div>
</body>
</html>