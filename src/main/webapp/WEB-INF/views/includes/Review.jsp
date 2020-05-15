<%-- <<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <div class="review w3-container" style="margin:0 auto; width: 750px;">
      <div class="w3-row">
        <a href="javascript:void(0)" onclick="openCity(event, 'London');">
          <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Review 동영상/포토</div>
    </a>
    <a href="javascript:void(0)" onclick="openCity(event, 'Paris');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">질문</div>
    </a>
    </div>
<table class="table table-bordered city" id="London" >
			<tbody style="vertical-align: middle;">
			<tr>
				<th class="text-center" style="width:100px">번호</th>
				<th class="text-center">제목</th>
				<th class="text-center">작성자</th>
				<th class="text-center">날짜</th>
				<th class="text-center" style="width:100px">조회수</th>
			</tr>
			
			<c:forEach var="vo" items="${list}">
               	<tr>
               		<td class="text-center">${vo.bno }</td>
               		<td class="text-center"><a href="/board/ReviewRead?bno=${vo.bno }">${vo.title}</a><strong>[${vo.replycnt}]</strong></td>
               		<td class="text-center">${vo.title}</td>
               		<td class="text-center">${vo.userid }</td>
               		<td class="text-center">${vo.readcnt }<span class="badge badge-pill badge-primary"></span></td>
               		<td class="text-center"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${vo.updatedate}"/></td>
               	</tr>
             </c:forEach>
		

			
      </tbody>
        </table>
         --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <div class="review w3-container" style="margin:0 auto; width: 750px;">
      <div class="w3-row">
         <a href="javascript:void(0)" onclick="openCity(event, 'London');">
  
          <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding" >Review 동영상/포토</div>
    </a>
    <a href="javascript:void(0)" onclick="openCity(event, 'Paris');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">질문</div>
    </a>
    </div>
<table class="table table-bordered city" id="London" >
			<tbody style="width:100%" > <!-- style="vertical-align: middle;" -->
			<tr>
				<th class="text-center" style='width:86px;'>번호</th><!-- style='width:86px;' -->
				<th class="text-center" >제목</th><!-- style='width:120px;' -->
				<th class="text-center" >작성자</th><!-- style='width:102px;' -->
				<th class="text-center" >날짜</th><!-- style='width:335px;' -->
				<th class="text-center">조회수</td>
			</tr>
			 </tbody>
     		 <tbody id="review" style="vertical-align: middle;"></tbody>
        </table>
		<%-- 	<c:forEach var="vo" items="${list}">
               	<tr>
               		<td class="text-center">${vo.bno }</td>
               		<td class="text-center"><a href="/board/ReviewRead?bno=${vo.bno }">${vo.title}</a><strong>[${vo.replycnt}]</strong></td>
               		<td class="text-center">${vo.title}</td>
               		<td class="text-center">${vo.userid }</td>
               		<td class="text-center">${vo.readcnt }<span class="badge badge-pill badge-primary"></span></td>
               		<td class="text-center"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${vo.updatedate}"/></td>
               	</tr>
             </c:forEach>
		 --%>

<!-- 			<intput type="hidden" id="itemno" name="itemno" value="2">
 -->     
     <!--   <script src="/resources/dist/js/review.js"/> -->

