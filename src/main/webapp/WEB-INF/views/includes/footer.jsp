<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 홈페이지 맨 밑에 회사 소개 부분 -->
<div id="container-fulid">
     <div id="footer_warp">
         <div id="footer">
				<div class="footer_bar">
					<ul>
						<li><a href="/subject_1.html">전자거래유의사항</a></li>
						<li>|</li>
						<li><a href="/subject_2.html">모집질서신고센터</a></li>
						<li>|</li>
						<li><a href="/personal_info_1.html">개인정보취급방침</a></li>
						<li>|</li>
						<li><a href="/personal_info_2.html">개인정보처리방침</a></li>
						<li>|</li>
						<li><a href="/subject_3.html">서비스이용약관</a></li>
					</ul>
					<select id="footer_select" onchange="footer_select();" style="height:27px;margin-top:-7px;">
						<option value="0">전용 사이트 바로가기</option>
						<option value="B2B">B2B사이트(협약거래처)</option>
					</select>
				 </div>

				 <div class="pan1">
						<!-- <img src="/main/images/logo.png" class="logo" alt="logo" style="margin-bottom: 0;"> -->
						<div class="footer_txt" style="line-height: 1.1; padding: 20px 0 0 0;">
							<p>3반 대여 &nbsp;&nbsp; 대표 김철진</p>
							<p>주소: 서울특별시 동일로 190길 43-6 EnS빌딩 302호</p>
							<p>사업자 등록번호:<!-- 104-81-84072 --> 111-11-11111&nbsp;&nbsp;|&nbsp;&nbsp;보험대리점등록번호 <!-- 제2003121153호 --> 제2393572395호</p>
							<p><!-- 통신판매허가번호 제2015-서울영등포-0682호  --> 통신판매허가번호 제2015-서울노원구-0682호</p>
							<p style="font-size:9px;">본사이트 내 이메일 주소 무단수집을 거부하며, 위반 시 법에 따라 처벌됨을 공지합니다.</p>
						  <p style="font-size:9px;">COPYRIGHT &copy; 2020 3반 대여 ALL RIGHTS RESERVED</p>
						</div>

						<!-- KB에스크로 -->
						<a href="#" onclick="javascript:onPopKBAuthMark();return false;" style="margin-left:100px;">
							<img class="kbimg" src="https://oimg1.kbstar.com/img/obank/img_escrow_mark.gif" border="0" style="margin-top:25px;"/>
						</a>
						<form name="KB_AUTHMARK_FORM" method="get">
							<input type="hidden" name="page" value="C021590"/>
							<input type="hidden" name="cc" value="b034066:b035526"/>
							<input type="hidden" name="mHValue" value='bae0ff8cb81a768788d9f28efba44826201109141045593'/>
						</form>
				 </div>
			     <div class="pan2_2018">
				     <div>
					  <table>
						  <tr>
							  <td style="width:70px;">대표전화</td>
							  <td style="color:#009247;  font-size:21px; width:230px; letter-spacing:0.5px;">010-9151-9526</td>
						   </tr>
						   <tr style="color:#6a6a6a;  font-size:14px;">
							  <td>해외</td>
							  <td style="letter-spacing:0.01px;"  >+82-2-976-1111</td>
						   </tr>
							  <tr style="color:#6a6a6a;  font-size:14px;">
								 <td >Fax</td>
								 <td style="letter-spacing:0.17em;">02-976-1111</td>
							  </tr>
						</table>
					 </div>
					 <!-- 상담 예약버튼 img -->
					 <div class="f_icon2">
						<a href="javascript:open_popup('resvCall')"> <!-- 누르게되면 팝업창 뜸 -->
							<img style="margin-left:15px;"src="resources/images/icon_sangdam.png" alt="상담예약"/>
						<p>상담예약</p>
					 </div>
			     </div><!--pan2_2018끝-->
         </div>
	</div>
</div>
<!--  <script src="/resources/dist/js/Carousel.js"></script>-->
<!--  <script src="/resources/dist/js/style.js"></script>-->
<script src="/resources/dist/js/jquery.js"></script>
<script>
	window.onload = function(){
		/*var caro = new Carousel(document.querySelector('#carousel-banner'), {
			CarouselMotion: 'fade',
			naviPosition: 'right',
			naviStyle: 'button',
			autoMove: true,
			autoMoveTime: 3000,
			carouselIndex: 0
		});*/
		  /*setTimeout(function(){
			  $('#f_img').attr('src','/resources/images/res_4.jpg');
		  }, 4000);*/
	  	$('.tab_2 li').mouseover(function() {
			switch (this.className) {
			case '1':
				$('.header_tab div').html('<span style="margin-left:375px;"><a href="#">짜장</a></span><span><a href="#">짬뽕</a></span><span><a href="#">탕수육</a></span>');
				break;
			case '2':
				$('.header_tab div').html('<span style="margin-left:530px;"><a href="#">하나</a></span><span><a href="#">둘</a></span><span><a href="#">셋</a></span></span>');
				break;
			case '3':
				$('.header_tab div').html('<span style="margin-left:670px;"><a href="#">봉구스</a></span><span><a href="#">밥버거</a></span><span><a href="#">봉순이</a></span></span>');
				break;
			case '4':
				$('.header_tab div').html('<span style="margin-left:825px;"><a href="#">참치</a></span><span><a href="#">연어</a></span><span><a href="#">육회</a></span></span>');
				break;
			case '5':
				$('.header_tab div').html('<span style="margin-left:900px;"><a href="#">나가서</a></span><span><a href="#">저녁이나</a></span><span><a href="#">먹자</a></span></span>');
				break;
			}
			var header_tab = document.getElementById('header_tab');
			if (header_tab.style.display == 'none') {
				$('.header_tab').slideDown();
			}
		});
		$('html').mouseover(function(evt) {
			if (evt.clientY >= 250) {
				 $('.header_tab').slideUp() //드롭다운 메뉴에서 마우스가 얼마나 밑으로 내려갔을때 다시
				// 드롭다운이 원상복귀 되는지
			}
		});	
	}
</script>
</body>
</html>