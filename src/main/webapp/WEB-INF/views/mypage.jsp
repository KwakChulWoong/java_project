<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="includes/header.jsp"/>

<div>
<!-- 서브 메뉴 -->
	<div class="mytmall_menu" style="float:left;">
	    <dl class="first">
	        <dt><strong>회원정보 수정</strong></dt>
	        <dd><a href="http://buy.11st.co.kr/order/OrderList.tmall" >회원정보 수정</a></dd>
	    </dl>
	    
	    <dl class="second">
	        <dt><strong>비밀번호 변경</strong></dt>
	        <dd><a href="http://buy.11st.co.kr/order/OrderList.tmall" >비밀번호 변경</a></dd>
	    </dl>
	    
	    <dl class="third">
	        <dt><strong>회원 탈퇴</strong></dt>
	        <dd><a href="http://buy.11st.co.kr/order/OrderList.tmall" >회원 탈퇴</a></dd>
	    </dl>
	    
	    <dl class="fourth">
	        <dt><strong>내가 게시한 상품</strong></dt>
	        <dd><a href="http://buy.11st.co.kr/order/OrderList.tmall" >게시한 목록</a></dd>
	    </dl>
	    
	    <dl class="fifth">
	        <dt><strong>내가 작성한 후기</strong></dt>
	        <dd><a href="http://buy.11st.co.kr/order/OrderList.tmall" >작성한 후기</a></dd>
	    </dl>    
	</div>
	<!-- //서브메뉴 -->
	

	<!-- 테이블 -->
	<div style="float:left;">
		<table>
		    <caption>
				거래 내역
		    </caption>
		    <thead>
		        <tr>
		            <th>작성일자</th>
		            <th>물품 상세정보</th>
		            <th>가격</th>
		        </tr>
		    </thead>
		
		    <tbody>
		        <tr>
		            <td>2020-05-06</td>
		            <td>캠핑카</td>
		            <td>$22</td>
		        </tr>
		        <tr>
		            <td>2020-05-11</td>
		            <td>피아노</td>
		            <td>$17</td>
		        </tr>
		    </tbody>
		</table>
	</div>
</div>

<jsp:include page="includes/footer.jsp"></jsp:include>