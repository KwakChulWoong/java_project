<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
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
  	left:200px;
  	top:200px;
  }
  
</style>
<jsp:include page="../includes/header.jsp"/>
<link rel="stylesheet" href="/resources/vendor/bootstrap/css/bootstrap.min.css" />
<section class="section1" id="hot-articles" style="height:100%;">   
       <nav id="hot-articles-navigation">
       <div class="category_fixed">
           <select name="category" id="region" onchange="changeCategory(this.value)" class="hot-articles-nav-select" style="border:2px solid orange;">
               <option value="">카테고리를 선택해주세요.</option>
               <option value="캠핑">캠핑</option>
               <option value="골프">골프</option>
               <option value="낚시">낚시</option>
               <option value="스노쿨링">스노쿨링</option>
               <option value="기타레저">기타레저</option>
               <option value="음악">음악</option>
           </select>
	   </div>
       </nav>
       <h3 style="margin-left : 26%;">인기 매물</h3>
       <div class="title-line-divider"></div>
       <style>
       	.content div{
       		float:left;
       		margin:0 auto;
       	}
       </style>
       <div class="content clearfix">
	       <c:forEach var="vo" items="${list}">
	       	  <div>
				  <img src="..." class="card-img-top" alt="...">
				  <div class="card-body">
				    <p class="card-text">Some quick example.</p>
				  </div>
			  </div>
		   </c:forEach>
	   </div>
       <%-- <section class="cards-wrap">
           <article class="card-top">
               <a class="card-link" data-event-label="79349776" href="/item/detail.jsp">
			       <c:forEach var="vo" items="${list}">
                   <div>
	                   <div class="card-photo">                      
	                   <img alt="이케아 선반 판매합니다~의 사진 2"
	                     src="https://dnvefa72aowie.cloudfront.net/origin/article/202004/013DCA043E91076B4E2AEF3EA5DBF128EE60D5C4D0DFDC09A3F04F949AA12420.jpg?q=95&amp;s=1440x1440&amp;t=inside"/>
	                   </div>
	                   <div class="card-desc">
	                       <h2 class="card-title">${vo.title}</h2>
	                       <div class="card-region-name">
	                           경남 김해시 내덕동
	                       </div>
	                       <div class="card-price">
	                           ${vo.rentcost}
	                       </div>
	                       <div class="card-counts">
	                           <span>
	                                ${vo.readcount}
	                           </span>
	                           ∙
	                           <span>
	                               채팅 26
	                           </span>
	                       </div>
	                   </div>
                   </div>
                   </c:forEach>
               </a>
           </article>
   </section> --%>
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
<form action="/item/rent" id="myform">
	<input type="hidden" name="category" value="골프"/>
	<input type="hidden" name="pageNum" value="${cri.pageNum}"/>
	<input type="hidden" name="amount" value="${cri.amount}"/>
</form>
<script>
	let form = $("#myform");		
	function changeCategory(category){
		form.submit();
	}
	$(".paginate_button a").click(function(e){
		e.preventDefault();		
		
		form.find("input[name='pageNum']").val($(this).attr("href"));
		form.submit();		
	})
</script>
<jsp:include page="../includes/footer.jsp"></jsp:include>