<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<jsp:include page="../includes/header.jsp"/>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<title>Insert title here</title>
 <link rel="stylesheet" href="/resources/dist/css/popularItemcss.css">
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link rel="stylesheet" href="/resources/dist/css/mycss2.css">
 <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
      integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
      crossorigin="anonymous"
    />
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<body>

	<article id="content" >
      <h1 class="hide">${vo.title }</h1>
      <section id="article-images">
        <h3 class="hide">이미지</h3>
        <div id="image-slider">
          <div class="slider-wrap w3-content w3-display-container">
            <div
              class="slider slick-initialized slick-slider slick-dotted"
             
            >
            <!-- data-article-id="79647794" -->
              <div class="slick-list draggable">
                <div
                  class="slick-track"
                  style="
                    opacity: 1;
                    width: 3645px;
                    transform: translate3d(-729px, 0px, 0px);
                  "
                >
                  <div
                    class="slick-slide slick-cloned"
                    data-slick-index="-1"
                    aria-hidden="true"
                    tabindex="-1"
                    style="width: 729px;"
                  >
                    <div>
                        <div>
                          <div
                            class="image-wrap w3-content w3-display-container"
                            data-image-id="316132610"
                            data-image-index="2"
                          ></div>
                        </div>
                      </a>
                    </div>
                  </div>
                  <div
                    class="slick-slide slick-current slick-active"
                    data-slick-index="0"
                    aria-hidden="false"
                    role="tabpanel"
                    id="slick-slide00"
                    style="width: 729px;"
                  >
                    <div>
                 
                        <div>
                          <div
                            class="image-wrap w3-content w3-display-container"
                          
                          >
                          <c:forEach var="image" items="${vo.attachList}">
					         
							<a >
                            <img
                              class="portrait slick-loading mySlides card_top"
                              alt="이케아 선반 판매합니다~의 사진 2"
                              src="/item/display_detail?fileName=${image.fileName}&uuid=${image.uuid }"
                              
                            />
                        
                            </a>
						</c:forEach>
                          
                          <!-- <a >
                            <img
                              class="portrait slick-loading mySlides card_top"
                              alt="이케아 선반 판매합니다~의 사진 2"
                              src=""
                            />
                        
                            </a>
                            <a target="_blank">
                            <img
                              class="portrait mySlides"
                              alt="이케아 선반 판매합니다~의 사진 1"
                              style="opacity: 1;"
                              src="https://dnvefa72aowie.cloudfront.net/origin/article/202004/3478D08C4C6558B506B5A2782B3095B009F0EF72426AF078F62D48EF051AF003.jpg?q=95&amp;s=1440x1440&amp;t=inside"
                              />
                            </a> -->
                            <!--   <script type="text/javascript">
                                var img = document.getElementsByClassName("portrait");
                                    for (var x = 0; x < img.length; x++) {
                                      img.item(x).onclick=function() {window.open(this.src)}; 
                                    }
                                </script> -->
                          </div>
                        </div>
                     
                    </div>
                  </div>
                </div>
              </div>
                  <script type="text/javascript">
                              var img = document.getElementsByClassName("portrait");
                                  for (var x = 0; x < img.length; x++) {
                                    img.item(x).onclick=function() {window.open(this.src)}; 
                                  }
                              </script>
              <button
                class="w3-button w3-black w3-display-left"
                onclick="plusDivs(-1)"
              >
                &#10094;
              </button>
              <button
                class="w3-button w3-black w3-display-right"
                onclick="plusDivs(1)"
              >
                &#10095;
              </button>

              <script>
                var slideIndex = 1;
                showDivs(slideIndex);

                function plusDivs(n) {
                  showDivs((slideIndex += n));
                }

                function showDivs(n) {
                  var i;
                  var x = document.getElementsByClassName("mySlides");
                  if (n > x.length) {
                    slideIndex = 1;
                  }
                  if (n < 1) {
                    slideIndex = x.length;
                  }
                  for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                  }
                  x[slideIndex - 1].style.display = "block";
                }
              </script>
              <!-- <ul class="slick-dots" style="display: block;" role="tablist">
                <li class="slick-active" role="presentation">
                  <button
                    type="button"
                    role="tab"
                    id="slick-slide-control00"
                    aria-controls="slick-slide00"
                    aria-label="1 of 2"
                    tabindex="0"
                    aria-selected="true"
                  >
                    1
                  </button>
                </li>
                <li role="presentation">
                  <button
                    type="button"
                    role="tab"
                    id="slick-slide-control01"
                    aria-controls="slick-slide01"
                    aria-label="2 of 2"
                    tabindex="-1"
                  >
                    2
                  </button>
                </li>
              </ul> -->
            </div>
          </div>
        </div>
      </section>

      <section id="article-profile">
        
          <h3 class="hide">프로필</h3>
          <div class="space-between">
            <div>
              <a id="article-profile-link" href="/users/11107292">
              <div id="article-profile-image">
                <img
                  alt="봄봄이"
                  src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-7e50c459a71e0e88c474406a45bbbdce8a3bf2ed4f2efcae59a064e39ea9ff30.png"
                />
              </div>
              <div id="article-profile-left">
                <div id="nickname">${vo.userid }</div>
                <div id="region-name">${vo.address }</div>
              </div>
            </div>
          </a>
            <div id="article-profile-right">
              
              <button id="likes" type="button" class="btn btn-danger" name="likes">
                <svg class="bi bi-heart-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" clip-rule="evenodd"/>
                </svg> like
              </button>
        
            </div>
          </div>
        
      </section>

      <section id="article-description">
        <h1 property="schema:name" id="article-title" style="margin-top: 0px;">
          ${vo.title }
        </h1>
        <p id="article-category">
          ${vo.category }
          <time>
            ${vo.regdate }
          </time>
        </p>
        <p
          property="schema:priceValidUntil"
          datatype="xsd:date"
          content="2022-04-28"
        ></p>
        <p rel="schema:url" resource="https://www.daangn.com/79647794"></p>
        <p property="schema:priceCurrency" content="KRW"></p>
        <p
          id="article-price"
          property="schema:price"
          content="10000.0"
          style="font-size: 18px; font-weight: bold;"
        >
         ${vo.rentcost }
        </p>
        <div property="schema:description" id="article-detail">
          <p>${vo.content }</p>
        </div>
        <p id="article-counts">
        	조회수 ${vo.readcount }
        </p>
      </section>
    </article>
<input type="hidden" id="itemno" name="itemno" value="${vo.itemno }">
<%@include file="../includes/Review.jsp" %>
<%@include file="../includes/Question.jsp" %>
<%@include file="../includes/PopularItem.jsp" %>
<%@include file="../includes/footer.jsp" %>