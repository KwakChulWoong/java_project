<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<!-- 비밀번호 잊어버렸을때 임시 비밀번호 보내주는 페이지 -->
<body>
	<h3>임시 비밀번호 발급</h3>
	<form method="post" id="find">
		<label for="userid">아이디</label>
		<input type="text" name="userid" id="userid" required/>
		<button type="button">비밀번호 찾기</button>
	</form>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script>
	$("button").on("click",function(){
		$("#find").submit();
		alert("회원 가입시 이메일로 임시 비밀번호를 전송하였습니다.");
		
	})
</script>
</body>
</html>
