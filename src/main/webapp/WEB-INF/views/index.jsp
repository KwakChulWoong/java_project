<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="includes/header.jsp"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>main</title>
  <link href="/resources/dist/css/Carousel.css" rel="stylesheet">
  <link href="/resources/dist/css/header.css" rel="stylesheet">
  <link href="/resources/dist/css/footer.css" rel="stylesheet">
  <link href="/resources/dist/css/item.css" rel="stylesheet">	
  <link href="/resources/dist/css/image.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<style>
  #carousel-banner {
    width: 1900px;
  }
</style>

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

<section id="hot-articles">	
       <h3 style="margin-left : 26%;">Dynamic 인기 매물</h3>
       <div class="title-line-divider"></div>
       <nav id="hot-articles-navigation">
           <select name="region1" id="region1" onchange="changeRegion('r1', this.value)" class="hot-articles-nav-select">
               <option value="">지역을 선택하세요</option>
               <option value="서울특별시">서울특별시</option>
               <option value="부산광역시">부산광역시</option>
               <option value="대구광역시">대구광역시</option>
               <option value="인천광역시">인천광역시</option>
               <option value="광주광역시">광주광역시</option>
               <option value="대전광역시">대전광역시</option>
               <option value="울산광역시">울산광역시</option>
               <option value="세종특별자치시">세종특별자치시</option>
               <option value="경기도">경기도</option>
               <option value="강원도">강원도</option>
               <option value="충청북도">충청북도</option>
               <option value="충청남도">충청남도</option>
               <option value="전라북도">전라북도</option>
               <option value="전라남도">전라남도</option>
               <option value="경상북도">경상북도</option>
               <option value="경상남도">경상남도</option>
               <option value="제주특별자치도">제주특별자치도</option>
           </select>
           <select name="region2" id="region2" disabled="disabled" onchange="changeRegion('r2', this.value)" class="hot-articles-nav-select">
               <option value="">동네를 선택하세요</option>
               <option value="서울특별시">서울특별시</option>
               <option value="부산광역시">부산광역시</option>
               <option value="대구광역시">대구광역시</option>
               <option value="인천광역시">인천광역시</option>
               <option value="광주광역시">광주광역시</option>
               <option value="대전광역시">대전광역시</option>
               <option value="울산광역시">울산광역시</option>
               <option value="세종특별자치시">세종특별자치시</option>
               <option value="경기도">경기도</option>
               <option value="강원도">강원도</option>
               <option value="충청북도">충청북도</option>
               <option value="충청남도">충청남도</option>
               <option value="전라북도">전라북도</option>
               <option value="전라남도">전라남도</option>
               <option value="경상북도">경상북도</option>
               <option value="경상남도">경상남도</option>
               <option value="제주특별자치도">제주특별자치도</option>
           </select>
       </nav>
       <section class="cards-wrap">
           <article class="card-top">
               <a class="card-link" data-event-label="79349776" href="/board/ItemDetail.jsp">
                   <div class="card-photo">
                      <!--  <img alt="철제 케비넷" src="https://dnvefa72aowie.cloudfront.net/origin/article/202004/45d54176373319865a7cacb8841143bf0b0980a034e73a4ffac0e9856730f058.webp?q=82&amp;s=300x300&amp;t=crop" /> -->
                   <img
                            
                              alt="이케아 선반 판매합니다~의 사진 2"
                              src="https://dnvefa72aowie.cloudfront.net/origin/article/202004/013DCA043E91076B4E2AEF3EA5DBF128EE60D5C4D0DFDC09A3F04F949AA12420.jpg?q=95&amp;s=1440x1440&amp;t=inside"
                            />
                   </div>
                   <div class="card-desc">
                       <h2 class="card-title">철제 케비넷</h2>
                       <div class="card-region-name">
                           경남 김해시 내덕동
                       </div>
                       <div class="card-price">
                           10,000원
                       </div>
                       <div class="card-counts">
                           <span>
                               관심 10
                           </span>
                           ∙
                           <span>
                               채팅 26
                           </span>
                       </div>
                   </div>
               </a>
           </article>
           <article class="card-top">
               <a class="card-link" data-event-label="79309495" href="/articles/79309495">
                   <div class="card-photo">
                       <img alt="전자렌지 판매합니다" src="https://dnvefa72aowie.cloudfront.net/origin/article/202004/6959e8bb15c03a8deda40ff3276916c63bcb6195d21affeea239891b7b98b59d.webp?q=82&amp;s=300x300&amp;t=crop" />
                   </div>
                   <div class="card-desc">
                       <h2 class="card-title">전자렌지 판매합니다</h2>
                       <div class="card-region-name">
                           경기도 성남시 분당구 서현2동
                       </div>
                       <div class="card-price">
                           8,000원
                       </div>
                       <div class="card-counts">
                           <span>
                               관심 6
                           </span>
                           ∙
                           <span>
                               채팅 32
                           </span>
                       </div>
                   </div>
               </a>
           </article>
           <article class="card-top">
               <a class="card-link" data-event-label="79309314" href="/articles/79309314">
                   <div class="card-photo">
                       <img alt="자전거 26인치 입니다" src="https://dnvefa72aowie.cloudfront.net/origin/article/202004/eaa1c710315f22c56608ff686f7fb080a96d8732df8cd0f28c428fbee8b3f15b.webp?q=82&amp;s=300x300&amp;t=crop" />
                   </div>
                   <div class="card-desc">
                       <h2 class="card-title">자전거 26인치 입니다</h2>
                       <div class="card-region-name">
                           경기도 용인시 수지구 상현2동
                       </div>
                       <div class="card-price">
                           30,000원
                       </div>
                       <div class="card-counts">
                           <span>
                               관심 6
                           </span>
                           ∙
                           <span>
                               채팅 24
                           </span>
                       </div>
                   </div>
               </a>
           </article>
           <article class="card-top">
               <a class="card-link" data-event-label="79272790" href="/articles/79272790">
                   <div class="card-photo">
                       <img alt="캠핑 테이블" src="https://dnvefa72aowie.cloudfront.net/origin/article/202004/8ef337f8e9a6b21d8edeee07cd66a662fb268f645a895adcb6f11dba5a0bb567.webp?q=82&amp;s=300x300&amp;t=crop" />
                   </div>
                   <div class="card-desc">
                       <h2 class="card-title">캠핑 테이블</h2>
                       <div class="card-region-name">
                           경기도 시흥시 능곡동
                       </div>
                       <div class="card-price">
                           5,000원
                       </div>
                       <div class="card-counts">
                           <span>
                               관심 4
                           </span>
                           ∙
                           <span>
                               채팅 25
                           </span>
                       </div>
                   </div>
               </a>
           </article>
           <article class="card-top">
               <a class="card-link" data-event-label="79110299" href="/articles/79110299">
                   <div class="card-photo">
                       <img alt="선반" src="https://dnvefa72aowie.cloudfront.net/origin/article/202004/F361CB3001E261527B7A83D7F0FB024472019CB0F0EFFAB021F40AB9C5B27224.jpg?q=82&amp;s=300x300&amp;t=crop" />
                   </div>
                   <div class="card-desc">
                       <h2 class="card-title">선반</h2>
                       <div class="card-region-name">
                           대구 남구 대명9동
                       </div>
                       <div class="card-price">
                           20,000원
                       </div>
                       <div class="card-counts">
                           <span>
                               관심 72
                           </span>
                           ∙
                           <span>
                               채팅 41
                           </span>
                       </div>
                   </div>
               </a>
           </article>
           <article class="card-top">
               <a class="card-link" data-event-label="79226979" href="/articles/79226979">
                   <div class="card-photo">
                       <img alt="스캇 서브 40 XS 하이브리드 자전거" src="https://dnvefa72aowie.cloudfront.net/origin/article/202004/0447cdb9b96d4ddda6fafd348ad08d986181ecb009e4a07a6e9f00028c91dbb8.webp?q=82&amp;s=300x300&amp;t=crop" />
                   </div>
                   <div class="card-desc">
                       <h2 class="card-title">스캇 서브 40 XS 하이브리드 자전거</h2>
                       <div class="card-region-name">
                           서울 양천구 신정1동
                       </div>
                       <div class="card-price">
                           75,000원
                       </div>
                       <div class="card-counts">
                           <span>
                               관심 14
                           </span>
                           ∙
                           <span>
                               채팅 27
                           </span>
                       </div>
                   </div>
               </a>
           </article>
           <article class="card-top">
               <a class="card-link" data-event-label="79145668" href="/articles/79145668">
                   <div class="card-photo">
                       <img alt="화분 저렴하게 팔아요(황성동)" src="https://dnvefa72aowie.cloudfront.net/origin/article/202004/7a9a260d2998bc0ec759cbd0df4e64f3065ab2d6e6f60936991360b5c6315e03.jpg?q=82&amp;s=300x300&amp;t=crop" />
                   </div>
                   <div class="card-desc">
                       <h2 class="card-title">화분 저렴하게 팔아요(황성동)</h2>
                       <div class="card-region-name">
                           경북 경주시 황성동
                       </div>
                       <div class="card-price">
                           1,000원
                       </div>
                       <div class="card-counts">
                           <span>
                               관심 15
                           </span>
                           ∙
                           <span>
                               채팅 38
                           </span>
                       </div>
                   </div>
               </a>
           </article>
           <article class="card-top">
               <a class="card-link" data-event-label="79293422" href="/articles/79293422">
                   <div class="card-photo">
                       <img alt="Belle 냉장고 팝니다." src="https://dnvefa72aowie.cloudfront.net/origin/article/202004/51341489dbaea05dfac7233c7a46214b75457744ecf8084c9764bb9783d3a663.webp?q=82&amp;s=300x300&amp;t=crop" />
                   </div>
                   <div class="card-desc">
                       <h2 class="card-title">Belle 냉장고 팝니다.</h2>
                       <div class="card-region-name">
                           광주 북구 동림동
                       </div>
                       <div class="card-price">
                           100,000원
                       </div>
                       <div class="card-counts">
                           <span>
                               관심 3
                           </span>
                           ∙
                           <span>
                               채팅 20
                           </span>
                       </div>
                   </div>
               </a>
           </article>
           <div class="card-top" id="cards-more">
               <a class="card-link" href="/hot_articles">
                   <div id="cards-more-text">
                       <img alt="+" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/mobile/icon-add-dcfb7aac98f18d19ca4c27e9dc29c63cf73861f3b10e0a42c06163d2658d0691.svg" />
                       <div id="more-text">인기 매물<br />더 보기</div>
                   </div>
               </a>
           </div>
	</section>
</section>

<div id="map" style="width:100%;height:350px;"></div>
<p>
    <button onclick="setCenter()">지도 중심좌표 이동시키기</button> 
    <button onclick="panTo()">지도 중심좌표 부드럽게 이동시키기</button> 
</p>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=acc20eac6d82be9fa61d85de39eacd5c"></script>
<script>
 let mylat = "";
 let mylng = "";
	


<!-- 좌표 가져오기 -->
$.ajax({
	type:'post',
	url:'https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyDQKxbTt0MrFNH85kTJXzickMD5s88UVaI',
	data:{
           'considerIp': 'True',
       },
    dataType : 'text',
    async : false,
	success:function(result){
		my_location=JSON.parse(result);
		console.log(my_location);
		console.log("lat : "+my_location.location.lat);
		mylat=my_location.location.lat;
		console.log("lng : "+my_location.location.lng);
		mylng=my_location.location.lng;
	}
})		

/* var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    }; */

//이미지 지도에 표시할 마커입니다
//이미지 지도에 표시할 마커를 아래와 같이 배열로 넣어주면 여러개의 마커를 표시할 수 있습니다

//var item_location_list = new Array();
/* item_location_list.push({
	 
    position: new kakao.maps.LatLng(mylat, mylng);
}) */

var markers = [
 {
	 
     position: new kakao.maps.LatLng(mylat, mylng)
 },
 {
     position: new kakao.maps.LatLng(mylat, mylng),
     text: '텍스트 표시' // text 옵션을 설정하면 마커 위에 텍스트를 함께 표시할 수 있습니다     
 }
];

    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(mylat, mylng), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };
    
// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 


function setCenter() {            
    // 이동할 위도 경도 위치를 생성합니다 
    var moveLatLon = new kakao.maps.LatLng(33.452613, 126.570888);
    
    // 지도 중심을 이동 시킵니다
    map.setCenter(moveLatLon);
}

function panTo() {
    // 이동할 위도 경도 위치를 생성합니다 
    var moveLatLon = new kakao.maps.LatLng(33.450580, 126.574942);
    
    // 지도 중심을 부드럽게 이동시킵니다
    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    map.panTo(moveLatLon);            
}    

var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 

for (var i = 0; i < markers.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: markers[i].position, // 마커를 표시할 위치
        image : markerImage // 마커 이미지 
    });
}
</script>

<jsp:include page="includes/footer.jsp"></jsp:include>