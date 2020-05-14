<<<<<<< HEAD
/**
 * 
 */
window.onload = function() {
	$('.tab_2 li')
			.mouseover(
					function() {
						switch (this.className) {
						case '1':
							$('.header_tab div')
									.html(
											'<span style="margin-left:375px;"><a href="#">짜장</a></span><span><a href="#">짬뽕</a></span><span><a href="#">탕수육</a></span>');
							break;
						case '2':
							$('.header_tab div')
									.html(
											'<span style="margin-left:530px;"><a href="#">하나</a></span><span><a href="#">둘</a></span><span><a href="#">셋</a></span></span>');
							break;
						case '3':
							$('.header_tab div')
									.html(
											'<span style="margin-left:670px;"><a href="#">봉구스</a></span><span><a href="#">밥버거</a></span><span><a href="#">봉순이</a></span></span>');
							break;
						case '4':
							$('.header_tab div')
									.html(
											'<span style="margin-left:825px;"><a href="#">참치</a></span><span><a href="#">연어</a></span><span><a href="#">육회</a></span></span>');
							break;
						case '5':
							$('.header_tab div')
									.html(
											'<span style="margin-left:900px;"><a href="#">나가서</a></span><span><a href="#">저녁이나</a></span><span><a href="#">먹자</a></span></span>');
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
};
=======
/**
드랍 다운 메뉴에 대한 js
 */
/*window.onload = function() {
	$('.tab_2 li')
			.mouseover(
					function() {
						switch (this.className) {
						case '1':
							$('.header_tab div')
									.html(
											'<span style="margin-left:375px;"><a href="#">짜장</a></span><span><a href="#">짬뽕</a></span><span><a href="#">탕수육</a></span>');
							break;
						case '2':
							$('.header_tab div')
									.html(
											'<span style="margin-left:530px;"><a href="#">하나</a></span><span><a href="#">둘</a></span><span><a href="#">셋</a></span></span>');
							break;
						case '3':
							$('.header_tab div')
									.html(
											'<span style="margin-left:670px;"><a href="#">봉구스</a></span><span><a href="#">밥버거</a></span><span><a href="#">봉순이</a></span></span>');
							break;
						case '4':
							$('.header_tab div')
									.html(
											'<span style="margin-left:825px;"><a href="#">참치</a></span><span><a href="#">연어</a></span><span><a href="#">육회</a></span></span>');
							break;
						case '5':
							$('.header_tab div')
									.html(
											'<span style="margin-left:900px;"><a href="#">나가서</a></span><span><a href="#">저녁이나</a></span><span><a href="#">먹자</a></span></span>');
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
};
*/
>>>>>>> refs/remotes/origin/master
