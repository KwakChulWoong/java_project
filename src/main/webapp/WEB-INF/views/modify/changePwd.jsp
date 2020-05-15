<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
html, header {
  /*background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');*/
  background-image: url('/resources/images/wallpaper.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  height: 100%;
}
</style>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<!--  jquery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- jquery validation 라이브러리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
<!-- 사용자정의 validation -->
<script src="/resources/js/changePwd.js">
</script>
<script>
$(function(){
	let error = '${error}';
	if(error!==''){
		alert(error);
	}
})
</script>
<link rel="stylesheet" href="/resources/vendor/bootstrap/css/bootstrap.min.css">
<style>
	body{
		margin-top:50px;
	}
</style>
</head>
<body style="margin-left:700px; background-color:transparent;">
<div class="card border-success mb-3 mx-auto" style="max-width: 25rem;">
  <div class="card-header" style="font-size:40px; width:1000px; color:white; margin-bottom:50px; margin-top:250px; margin-left:-20px;">비밀번호 변경</div>
  <div class="card-body">
  	<form id="changePwd" method="post">
  			<div class="form-group row">
	    		<input type="password" class="form-control" size="50" id="password" name="current_password" placeholder="현재 비밀번호" style="width:200%; height:50px; padding:6px 12px; font-size:25px;" required>
	    		<small id="password" class="text-info"></small>
	    	</div>
    		<div class="form-group row">
			    <input type="password" class="form-control" size="50" id="new_password" name="new_password" placeholder="새 비밀번호" style="width:200%; height:50px; padding:6px 12px; font-size:25px;" required>  
			    <small id="new_password" class="text-info"></small> 
			</div>
			<div class="form-group row"> 
			    <input type="password" class="form-control" size="50" id="confirm_password" name="confirm_password" placeholder="새 비밀번호 확인" style="width:200%; height:50px; padding:6px 12px; font-size:25px;" required>
			    <small id="confirm_password" class="text-info"></small> 
			</div>
			<div class="form-group text-center" style="margin-left:130px;">		
				<button type="submit" class="btn btn-primary">입력</button>
			    <button type="reset" class="btn btn-secondary"><a href="/mypage">취소</a></button>		
			</div>		
    </form>
</div>
</div>
</body>
</html>