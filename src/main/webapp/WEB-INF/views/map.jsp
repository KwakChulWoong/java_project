<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
<p style="margin-top:-12px">

</p>
<div id="map" style="width:100%;height:350px;"></div>
<div id="dataPool">
	<div id="map_center">
		<input type="hidden" id="centerX" />
		<input type="hidden" id="centerY" />
	</div>
</div>


<p>
    <button onclick="setCenter()">내 위치 좌표로 이동하기</button> 
    <button onclick="panTo()">지도 중심좌표 부드럽게 이동시키기</button> 
</p>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=acc20eac6d82be9fa61d85de39eacd5c"></script>
<script>

var go_result = "Result";
var centerX = $('#centerX');
var centerY = $('#centerY');

let mylat = "";
let mylng = "";

 //주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

 //marker 생성시 markerList에 담기 (마커 모두 삭제시 필요)
var makerList = new Array();

// 인포윈도우로 장소에 대한 설명을 표시합니다
var infowindow = new kakao.maps.InfoWindow({
    content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
});

function removeMarkers(){	//마커 전부 삭제하는 메소드
	for(var i=0; i < markerList.length; i++){
		markerList[i].setMap(null);
	}
};

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(mylat, mylng), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};
<!-- 내좌표 가져오기  -->
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
    
// 지도를 표시할 div와  지도 옵션으로  지도 생성
var map = new kakao.maps.Map(mapContainer, mapOption); 


//주소로 좌표를 검색합니다
geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    

var iwContent = '<div style="padding:5px;">표시할 정보</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	iwPosition = new kakao.maps.LatLng(mylat, mylng), //인포윈도우 표시 위치입니다
	iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

//인포윈도우를 생성하고 지도에 표시합니다

	
function setCenter() {            
    // 이동할 위도 경도 위치를 생성합니다 
    var moveLatLon = new kakao.maps.LatLng(mylat, mylng);
    
    // 지도 중심을 이동 시킵니다
    map.setCenter(moveLatLon);
}

function panTo() {
    // 이동할 위도 경도 위치를 생성합니다 
    var moveLatLon = new kakao.maps.LatLng(33.450705, 126.570677);
    
    // 지도 중심을 부드럽게 이동시킵니다
    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    map.panTo(moveLatLon);            
}    

var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 

</script>
</body>
</html>