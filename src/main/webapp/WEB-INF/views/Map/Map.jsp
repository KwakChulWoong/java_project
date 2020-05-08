<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Kakao 지도 시작하기</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=acc20eac6d82be9fa61d85de39eacd5c
"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		$(function(){
			$.ajax({
				type:'post',
				url:'https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyDQKxbTt0MrFNH85kTJXzickMD5s88UVaI',
				contentType:'application/json;charset=utf-8',
				data:{
		            'considerIp': True,
		        },
				success:function(result){
					my_location = JSON.parse(result);
					console.log(my_location);
				}
			})		
			$(function(){
				<!-- 좌표 가져오기 -->
				$.ajax({
					type:'post',
					url:'https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyDQKxbTt0MrFNH85kTJXzickMD5s88UVaI',
					data:{
			            'considerIp': 'True',
			        },
			        dataType : 'text',
					success:function(result){
						my_location = JSON.parse(result);
						console.log(my_location);
						console.log("lat : "+my_location.location.lat);
						console.log("lng : "+my_location.location.lng);
					}
				})		
			})		
	</script>
</body>
</html>