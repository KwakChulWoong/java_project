<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>취미를 빌려주는 사람들</title>
  <link href="/resources/dist/css/Carousel.css" rel="stylesheet">
  <link href="/resources/dist/css/header.css" rel="stylesheet">
  <link href="/resources/dist/css/footer.css" rel="stylesheet">
  <link href="/resources/dist/css/image.css" rel="stylesheet">
  <link href="/resources/dist/css/mypage.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<style>
  #carousel-banner {
    width: 1900px;
  }
</style>

<body style="overflow-x:hidden;"> <!-- 화면 축소했을때 가로방향 스크롤바? 화면 옆으로 보이게끔해주는거 hidden 옵션 줘서 숨겼음 css상 이거 없애는게 원활하게 되서 없앰 -->
<div class="container-fluid" style="border-bottom:1px solid #008639; height:123px;"> <!-- 드랍다운메뉴에 보이는 초록색 경계선 -->
   <div id="wrap">
      <div id="header">
		<div class="header">
			<div class="header_logo">
				<!-- 이미지는 수업시간에 했던 freelogodesign에서 이미지 주소 가져옴 범고래 사진 -->
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
					<a href="/company" target="_blank"><li>회사소개</li></a> <!-- target 탭 이용 시 새 창으로 띄움 -->
					<!-- 로그인 안됐을시 로그인/회원가입 보여줌 -->
					<c:if test="${empty info}">
						<a href="/login"><li>로그인</li></a>
						<a href="/login/memberJoin0"><li>회원가입</li></a>
					</c:if>
					<!-- 로그인 되면 마이페이지/로그아웃 보여줌 -->
					<c:if test="${!empty info}">
						<a href="/mypage"><li>마이페이지</li></a> <!-- target 탭 이용 시 새 창으로 띄움 -->
						<a href="/logout"><li>로그아웃</li></a>
					</c:if>
				</ul>
				<div class="clear"></div>
					<ul style="margin-top:15px;" class="tab_2">
	     				<li class="1" style="width:150px;font-weight: normal;" onclick="top.location.href='/item/rent';">대여<br><span>rent</span></li>
	     				<li class="2" style="width:150px;font-weight: normal;" onclick="top.location.href='/notice';">공지사항<br><span>notice</span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>