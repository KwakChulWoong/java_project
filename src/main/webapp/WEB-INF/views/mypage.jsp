<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="includes/header.jsp"/>
<link href="/resources/dist/css/mypage.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="/resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<div style="height: 80%;">
<!-- 서브 메뉴 -->
	<div class="mytmall_menu" style="float:left;">
	    <dl class="first">
	        <dt><strong>회원정보 수정</strong></dt>
	        <dd><a href="#" >회원정보 수정</a></dd>
	    </dl>
	    
	    <dl class="second">
	        <dt><strong>비밀번호 변경</strong></dt>
	        <dd><a href="modify/ChangePWD" >비밀번호 변경</a></dd>
	    </dl>
	    
	    <dl class="third">
	        <dt><strong>회원 탈퇴</strong></dt>
	        <dd><a href="/signout/signout" >회원 탈퇴</a></dd>
	    </dl>
	    
	    <dl class="fourth">
	        <dt><strong>내가 게시한 상품</strong></dt>
	        <dd><a href="#" >게시한 목록</a></dd>
	    </dl>
	    
	    <dl class="fifth">
	        <dt><strong>내가 작성한 후기</strong></dt>
	        <dd><a href="#" >작성한 후기</a></dd>
	    </dl>    
	</div>
	<!-- //서브메뉴 -->
	
	<div id="mystyle" style="float:left; margin-left:50px;">
		<!-- 테이블 -->
		<table class="table table-hover table-bordered" style="width:870px;">
		    <caption>
				거래 내역
		    </caption>
		    <thead>
		        <tr style="width:200px;">
		            <th>작성일자</th>
		            <th class="text-center">물품 상세정보</th>
		            <th class="text-center">가격</th>
		        </tr>
		    </thead>
		
		    <tbody>
		        <tr>
		            <td>2020-05-06</td>
		            <td class="text-center">캠핑카</td>
		            <td class="text-center">$22</td>
		        </tr>
		        <tr>
		            <td>2020-05-11</td>
		            <td class="text-center">피아노</td>
		            <td class="text-center">$17</td>
		        </tr>
		    </tbody>
		</table>
	</div>
</div>


<jsp:include page="includes/footer.jsp"></jsp:include>