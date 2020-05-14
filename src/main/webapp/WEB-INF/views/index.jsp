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
       <h2 style="margin-left : 26%; font-size:30px;">인기 매물</h2>
       <div class="title-line-divider" style="width:1050px;"></div>
</section>
    

 
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
   	<div class="item" style="width:250px;height:300px;border: 1px solid; border-radius:15px">
     <a href="/item/detail?itemno=${vo.itemno }">
     <img alt="대여물품" src=""  class="card_top" style="width:248px;height:150px; border-radius:15px 15px 0px 0px;"/>
     <div class="item_content">
       <h2 style="font-size:17px">${vo.title}</h2>
       <p class="content">${vo.content}</p>
       <div class="item-price">대여비 : ${vo.rentcost}</div>
       <div class="item-counts">
           <span>관심 ${vo.readcount}</span>           
           <span>등록자 ${vo.userid}</span>           
       </div>
    </div>
    	</a>
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