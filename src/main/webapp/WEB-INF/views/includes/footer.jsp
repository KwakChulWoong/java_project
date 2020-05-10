<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="Foot">
		<div class="footer">
			<ul class="fm">
				<li><a href="#">개인정보처리방침</a></li>
				<li><a href="#">저작권정책</a></li>
			</ul>
			<p class="addr">
				우)01842 서울특별시 노원구 동일로 190길 43-6<br>전화번호 010-9151-9526<br>
				COPYRIGHT 2020 BY 3반 곽철웅 김철진 김승현 노석희. ALL RIGHTS RESERVED.
			</p>
			<div style="position: absolute;float: right;top: 97px;right: 0px;"><a href="https://www.innogov.go.kr/" target="_blank"><img src="/images/common/foot_ban_r.png" alt="" width="147px"></a></div>
			
		</div>

		<div class="m_footer">
			<ul class="fm">
				<li><a href="/content/board/list.asp">공지사항</a></li>
				<li><a href="/content/guide/guide6.asp">오시는길</a></li>
				<li><a href="http://www.royalpalace.go.kr:8080/html/eng_gbg/main/main.jsp">English</a></li>				
				<li><a href="https://twitter.com/royalpalacego">twitter</a></li>
				<li><a href="https://www.instagram.com/gbg_palace">instagram</a></li>
			</ul>
			<p class="addr">
				COPYRIGHT 2014 BY GYEONGBOKGUNG. ALL RIGHTS RESERVED.
			</p>
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