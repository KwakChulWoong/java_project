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
  /* region이 스타일은 총 물품 창 들어가면 따라다니는 category 버튼 화면에 고정시키고 스타일준거 */
</style>
<jsp:include page="../includes/header.jsp"/>
<section class="section1" id="hot-articles" style="height:100%;">   
       <nav id="hot-articles-navigation">
       <div class="category_fixed">
           <select name="region" id="region" onchange="changeRegion('r1', this.value)" class="hot-articles-nav-select" style="border:2px solid orange;">
               <option value="">카테고리를 선택해주세요.</option>
               <option value="서울특별시">캠핑</option>
               <option value="부산광역시">골프</option>
               <option value="대구광역시">낚시</option>
               <option value="인천광역시">스노쿨링</option>
               <option value="광주광역시">기타레저</option>
               <option value="대전광역시">음악</option>
           </select>
	   </div>
       </nav>
       <h3 style="margin-left : 26%;">인기 매물</h3>
       <div class="title-line-divider"></div>
       <section class="cards-wrap">
           <article class="card-top">
               <a class="card-link" data-event-label="79349776" href="/item/detail.jsp">
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
   </section>
</section>
<jsp:include page="../includes/footer.jsp"></jsp:include>