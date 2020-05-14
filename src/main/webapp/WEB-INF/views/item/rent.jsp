<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
       
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>총 물품</title>
	<link href="/resources/dist/css/header.css" rel="stylesheet">
	<link href="/resources/dist/css/footer.css" rel="stylesheet">
	<link href="/resources/dist/css/item.css" rel="stylesheet">
  	<link href="/resources/dist/css/image.css" rel="stylesheet">
  	<link href="/resources/dist/js/region.js" rel="stylesheet">
</head>
<style>
  #carousel-banner {
    width: 1900px;
  }  
  #region {
  	position:fixed;
  	border:2px solid orange;
  	left:100px;
  	top:200px;
  }
  
</style>
<jsp:include page="../includes/header.jsp"/>
<link rel="stylesheet" href="/resources/vendor/bootstrap/css/bootstrap.min.css" />
<section class="section1" id="hot-articles" style="padding:50px 0;">   
   <nav id="hot-articles-navigation">
  
       <select name="category" id="region" onchange="changeCategory(this.value)" class="hot-articles-nav-select" style="border:2px solid orange;">
           <option value="">카테고리를 선택해주세요.</option>
           <option value="캠핑">캠핑</option>
           <option value="골프">골프</option>
           <option value="낚시">낚시</option>
           <option value="스노쿨링">스노쿨링</option>
           <option value="기타레저">기타레저</option>
           <option value="음악">음악</option>
       </select>

   </nav>
       <h3 style="margin-left :26%; margin-top:10px">Dynamic 인기 매물</h3>
       
       <style>       	
       	.content div{
       		float:left;
       		margin:0 auto;
       	}
       	.content div .item{
       		width:280px;
       		margin-right:15px;
       		margin-bottom:10px;
       	}
       	
       	.content div img{
       		display:block;
       		width:280px;
       	} 
       </style> 
   <div class="container">      
       <div class="content clearfix">
	       <c:forEach var="vo" items="${list}">
	       	 
       	  	 <c:forEach var="image" items="${vo.attachList}">      	  	 
       	  	 
		       	  <script>		       	
			       		var uuid = '${image.uuid}';		      	
			       		var uploadPath = '${image.uploadPath}'; 	       		
			       		var fileName = '${image.fileName}';		       
			       
			       		var path= encodeURIComponent(uploadPath+"/"+uuid+"_"+fileName);  
			       		console.log(path);
			       		
			       		$(".card-img-top").attr("src","display?fileName="+path);		       		
			       </script>	 
			  </c:forEach>			  					  
			    <div class="item">
			      <img class="card-img-top" alt="렌탈 이미지">
				  <div class="">
				    <h5>${vo.title}</h5>
				    <p>${vo.rentcost}</p>
				    <p>${vo.readcount}</p>
				  </div>
			    </div>
			 	
		   </c:forEach>
	   </div>
</div>
</section>





<!-- start Pagination -->
<div class="text-center">
	<ul class="pagination">
		<c:if test="${pageVO.prev}">
			<li class="paginate_button previous"><a href="${pageVO.startPage-1}">Previous</a>
		</c:if>
		<c:forEach var="idx" begin="${pageVO.startPage}" end="${pageVO.endPage}">
			<li class="paginate_button ${cri.pageNum==idx?'active':''}"><a href="${idx}">${idx}</a></li>
		</c:forEach>
		<c:if test="${pageVO.next}">
			<li class="paginate_button next"><a href="${pageVO.endPage+1}">Next</a>
		</c:if>
	</ul>
</div>
<!-- end Pagination -->
<!--  -->
<form action="/item/rent" id="myform">
	<input type="hidden" name="category" value="${cri.category}"/>
	<input type="hidden" name="pageNum" value="${cri.pageNum}"/>
	<input type="hidden" name="amount" value="${cri.amount}"/>
</form>
<script>
	let form = $("#myform");		
	function changeCategory(category){
		form.find("input[name='category']").val(category);
		form.submit();
	}
	$(".paginate_button a").click(function(e){
		e.preventDefault();		
		
		form.find("input[name='pageNum']").val($(this).attr("href"));
		form.submit();		
	})
</script>
<jsp:include page="../includes/footer.jsp"></jsp:include>