<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	        <dt><strong>제품 등록</strong></dt>
	        <dd><a href="/board/ItemRegister" >제품 등록하기</a></dd>
	    </dl>
	</div>
	<!-- //서브메뉴 -->
	
	<div id="mystyle" style="float:left; margin-left:50px;">
		<!-- 테이블 -->
		<table class="table table-hover table-bordered" style="width:870px;">
		    <thead>
                 <tr>
                     <th>번 호</th>
                     <th>제 목</th>
                     <th>작 성 일</th>
                 </tr>									
             </thead>
			<!-- 게시판 리스트 반복문 -->
			<c:forEach items="${list }" var="vo">
				<tr>
                     <td>${vo.bno }</td>
                     <!-- 페이지 나누기 전 -->
                     <%-- <td><a href="/board/read?bno=${vo.bno}">${vo.title }</a></td> --%>
                     <!-- <td><a href="${vo.bno}" class="move">${vo.title } </a><strong>[${vo.replycnt }]</strong></td>  -->
                     <td>${vo.title }</td>
                     <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${vo.regdate }"/> </td>
                     <!-- <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${vo.updatedate }"/> </td>  -->
                 </tr>		
			</c:forEach>
		</table>
	</div>
</div>


<jsp:include page="includes/footer.jsp"></jsp:include>