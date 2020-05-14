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
  
</head>

<style>
  #carousel-banner {
    width: 1900px;
  }
</style>
<jsp:include page="includes/banner.jsp"/>
<section id="hot-articles" style="padding: 50px 0 10px;">   
       <h3 style="margin-left : 26%;">인기 매물</h3>
       <div class="title-line-divider"></div>
       <nav id="hot-articles-navigation">
           <select name="region" id="region" onchange="changeRegion('r1', this.value)" class="hot-articles-nav-select" style="border:2px solid orange;">
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
       </nav>
</section>
    
 <a class="card-link" data-event-label="79349776" href="/board/ItemDetail.jsp">
 
	<style>
	.box_wrap{
		width:1024px; 
		height:700px;
		display:flex;
		flex-wrap: wrap;
		justify-content: space-between;
		align-content: space-around;
		margin:0 auto;
	}
	/* .box_wrap .item{
		width:200px;
		height : 300px;
		border: 1px solid;
	} */
	</style>

 <div class="box_wrap">
 
 <c:forEach var="vo" items="${list}">    
 	<c:forEach var="image" items="${vo.attachList}">
         <script>		       	
			var uuid = '${image.uuid}';		      	
			var uploadPath = '${image.uploadPath}'; 	       		
			var fileName = '${image.fileName}';		       
	
			var path= encodeURIComponent(uploadPath+"/"+uuid+"_"+fileName);  
			console.log(path);
			
			$(".card_top").attr("src","/item/display?fileName="+path);		       		
		</script>
	</c:forEach>
	<%-- 컨텐츠 반복 시작 --%>	
   	<div class="item" style="width:250px;height:300px;border: 1px solid;">
     <img alt="대여물품" src=""  class="card_top" style="width:248px;height:150px;"/>
     <div class="item_content">
       <h2 style="font-size:17px">${vo.title}</h2>
       <p class="content">${vo.content}</p>
       <div class="item-price">대여비 : ${vo.rentcost}</div>
       <div class="item-counts">
           <span>관심 ${vo.readcount}</span>           
           <span>등록자 ${vo.userid}</span>           
       </div>
    </div>
    </div>	
	</c:forEach>
</div>
<%-- 반복 되는 곳 종료 --%>      
 <div class="card-top" id="cards-more" style="margin:0 auto;width:10rem;margin-top:10px">
     <a class="card-link" href="/item/rent">
         <div id="cards-more-text">
             <img alt="+" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/mobile/icon-add-dcfb7aac98f18d19ca4c27e9dc29c63cf73861f3b10e0a42c06163d2658d0691.svg" />
             <div id="more-text">전체 매물<br />보러 가기</div>
         </div>
     </a>
 </div>
   

<jsp:include page="includes/footer.jsp"></jsp:include>