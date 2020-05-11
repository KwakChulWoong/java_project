<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>3반 렌탈샵</title>
  <link href="/resources/dist/css/Carousel.css" rel="stylesheet">
  <link href="/resources/dist/css/header.css" rel="stylesheet">
  <link href="/resources/dist/css/footer.css" rel="stylesheet">
  <link href="/resources/dist/css/item.css" rel="stylesheet">	
  <link href="/resources/dist/css/image.css" rel="stylesheet">
  <link href="/resources/dist/css/mypage.css" rel="stylesheet">
</head>

<style>
  #carousel-banner {
    width: 1900px;
  }
</style>

<body style="overflow-x:hidden;">
<div class="container-fluid" style="border-bottom:2px solid #008639; height:123px;">
   <div id="wrap">
      <div id="header">
		<div class="header">
			<div class="header_logo">
        		<a href="/"><img src="https://www.freelogodesign.org/file/app/client/thumb/b96d660e-7e9d-4444-ab00-13f845928cbb_200x200.png?1588734315713"></a>
			</div>
			<div class="topnav">
			<input type="text" placeholder="사이트 내 검색" style="width:500px;"> <!-- 검색창 -->
			</div>
			<div style="margin-top:20px;" class="header_list" id="header_list">
				<a href="javascript:openDirectPop()">&nbsp;</a>
				<a href="javascript:openDirectPop(true)">&nbsp;</a>
				<ul class="tab_1">
					<a href="/"><li>HOME</li></a>
					<a href="#" target="_blank"><li>회사소개</li></a> <!-- target 탭 이용 시 새 창으로 띄움 -->
					<!-- 로그인 안됐을시 로그인/회원가입 보여줌 -->
					<c:if test="${empty info}">
						<a href="/login"><li>로그인</li></a>
						<a href="/register/step0"><li>회원가입</li></a>
					</c:if>
					<!-- 로그인 되면 마이페이지/로그아웃 보여줌 -->
					<c:if test="${!empty info}">
						<a href="/mypage"><li>마이페이지</li></a> <!-- target 탭 이용 시 새 창으로 띄움 -->
						<a href="/logout"><li>로그아웃</li></a>
					</c:if>
				</ul>
				<div class="clear"></div>
					<ul style="margin-top:15px;" class="tab_2">
	     				<li class="1" style="width:150px;font-weight: normal;" onclick="top.location.href='/';">대여<br><span>rent</span></li>
	     				<li class="2" style="width:150px;font-weight: normal;" onclick="top.location.href='/';">후기<br><span>review</span></li>
	     				<li class="3" style="width:150px;font-weight: normal;" onclick="top.location.href='/';">공지사항<br><span>notice</span></li>
					</ul>
				</div>
			</div>
			<div class="header_tab" id="header_tab" style="display:none; z-index:6;">
				<div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="clear"></div>