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
               <a class="card-link" data-event-label="79349776" href="/board/ItemDetail">
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
<jsp:include page="includes/footer.jsp"></jsp:include>