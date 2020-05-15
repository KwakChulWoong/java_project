<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3반 렌탈샵</title>
  <link href="/resources/dist/css/Carousel.css" rel="stylesheet">
  <link href="/resources/dist/css/footer.css" rel="stylesheet">
</head>
<style>
  #carousel-banner {
    width: 1900px;
  }
</style>
<!-- 이 바디들은 배너에 버튼누르면 전환되는 화면들 -->
<body>
<div id="sizeplz" style="height:400px;">
  <div class="carousel" id="carousel-banner">
    <div class="carousel-wrapper" style="height:400px; width:1900px;">
      <div class="carousel-item" style="height:400px; width:1900px;">
        <img src="/resources/images/res_1.jpg">
      </div>
      <div class="carousel-item" style="height:400px; width:1900px;">
        <img src="/resources/images/res_2.jpg">
      </div>
      <div class="carousel-item" style="height:400px; width:1900px;">
        <img src="/resources/images/res_3.jpg">
      </div>
      <div class="carousel-item" style="height:400px; width:1900px;">
        <img id="f_img" src="/resources/images/res_1.jpg">
      </div>
    </div>
    <div class="navi-wrapper"></div>
  </div>
</div>
<script src="/resources/dist/js/Carousel.js"></script>
<!-- 밑에 스크립트는 배너에 있는 버튼들 액션 도와주는 javascript -->
<script>
var caro = new Carousel(document.querySelector('#carousel-banner'), {
   CarouselMotion: 'fade',
   naviPosition: 'right',
   naviStyle: 'button',
   autoMove: true,
   autoMoveTime: 3000,
   carouselIndex: 0
});
</script>