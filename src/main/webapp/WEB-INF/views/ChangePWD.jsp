<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
  <link href="/resources/dist/css/ChangePWD.css" rel="stylesheet">

<div class="container">
<div class="row">
<div class="col-sm-12">
<h1>비밀번호 변경</h1>
</div>
</div>
<div class="row">
<div class="col-sm-6 col-sm-offset-3">
<p class="text-center">변경할 비밀번호와 비밀번호 확인을 해주세요</p>
<form method="post" id="passwordForm">
<input type="password" class="input-lg form-control" name="password1" id="password1" placeholder="새로운 비밀번호" autocomplete="off">
<div class="row">
<div class="col-sm-6">
<span id="8char" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span> 비밀번호는 8자리 이상입니다.<br>
</div>
<div class="col-sm-6">
</div>
</div>
<input type="password" class="input-lg form-control" name="password2" id="password2" placeholder="비밀번호 확인" autocomplete="off">
<div class="row">
<div class="col-sm-12">
<span id="pwmatch" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span> 비밀번호가 일치하지 않습니다.
</div>
</div>
<input type="submit" class="col-xs-12 btn btn-primary btn-load btn-lg" data-loading-text="Change Password" value="비밀번호 변경">
</form>
</div><!--/col-sm-6-->
</div><!--/row-->
</div>