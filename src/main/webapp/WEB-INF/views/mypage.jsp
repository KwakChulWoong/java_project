<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="includes/header.jsp"/>
<link href="/resources/dist/css/mypage.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="/resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<div style="height: 100%;">
<!-- 서브 메뉴 -->
	<div class="mytmall_menu" style="float:left;">
	    <dl class="first">
	        <dt><strong>회원정보 수정</strong></dt>
	        <dd><a href="/modify/memberEdit" >회원정보 수정</a></dd>
	    </dl>
	    
	    <dl class="second">
	        <dt><strong>비밀번호 변경</strong></dt>
	        <dd><a href="/modify/changePwd" >비밀번호 변경</a></dd>
	    </dl>
	    
	    <dl class="third">
	        <dt><strong>회원 탈퇴</strong></dt>
	        <dd><a href="/signout/signout" >회원 탈퇴</a></dd>
	    </dl>
	</div>
	<!-- //서브메뉴 -->
	
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">나의 상품</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                                          내가 올린 상품 리스트
                            <button id='regBtn' type='button' class='btn btn-xs pull-right btn-success' onclick="location.href='/item/register'" style="background-color:orange; border-color:green;">새로운 글 작성하기</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>번 호</th>
                                        <th>제 목</th>
                                        <th>작성자</th>
                                        <th>작성일</th>
                                        <th>조회수</th>
                                    </tr>									
                                </thead>
								<!-- 게시판 리스트 반복문 -->
								<c:forEach items="${list }" var="vo">
									<tr>
                                        <td>${vo.itemno}</td>
                                        <!-- 페이지 나누기 전 -->
                                        <%-- <td><a href="/board/read?bno=${vo.bno}">${vo.title }</a></td> --%>
                                        <!-- vo.~~~들이 마이페이지에 들어오는 list 그니까 자기가 올린 글 들어오게끔 해줌 -->
                                        <td><a href="/item/detail?itmeno=${vo.itemno}" class="move">${vo.title }</a></td>
                                      	<td>${vo.userid}</td>
                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${vo.regdate }"/> </td>
                                        <td>${vo.readcount }</td>
                                    </tr>		
								</c:forEach>
                            </table>
							<div class="row"> <!-- start search -->
                            	<div class="col-md-12">
                            	  <div class="col-md-8"><!--search Form-->
                            		<form id="searchForm">
                            			<select name="type" id="" style="border:1px solid #ccc;">
                            				<option value="" >------</option>
                            				<option value="T" <c:out value="${cri.type eq 'T'?'selected':'' }"/>>제목
                            				<option value="C" <c:out value="${cri.type eq 'C'?'selected':'' }"/>>내용</option>
                            				<option value="W" <c:out value="${cri.type eq 'W'?'selected':'' }"/>>작성자</option>
                            				<option value="TC" <c:out value="${cri.type eq 'TC'?'selected':'' }"/>>제목 or 내용</option>
                            				<option value="TW" <c:out value="${cri.type eq 'TW'?'selected':'' }"/>>제목 or 작성자</option>
                            				<option value="TCW" <c:out value="${cri.type eq 'TCW'?'selected':'' }"/>>제목 or 내용 or 작성자</option>
                            			</select>
                            			<input type="text" name="keyword" value="${cri.keyword }" style="border:1px solid #ccc;"/>
                            			
                            			<input type="hidden" name="pageNum" value="${cri.pageNum }" />
										<input type="hidden" name="amount" value="${cri.amount }" />
                            			<button class="btn btn-default">Search</button>
                            		</form>
                            	   </div>
                            	   <div class="col-md-2 col-md-offset-2">
                            	   	<!--페이지 목록 갯수 지정하는 폼-->
                            	   	<select class="form-control" id="amount">
                            	   		<option value="10" <c:out value="${cri.amount==10?'selected':'' }"/>>10</option>
                            	   		<option value="20" <c:out value="${cri.amount==20?'selected':'' }"/>>20</option>
                            	   		<option value="30" <c:out value="${cri.amount==30?'selected':'' }"/>>30</option>
                            	   		<option value="40" <c:out value="${cri.amount==40?'selected':'' }"/>>40</option>
                            	   	</select>
								  </div>
                             	 </div>                             	 
                      		 </div><!-- end search -->
                            <!-- start Pagination -->
                            <div class="text-center">
                            	<ul class="pagination">
                            		<c:if test="${pageVO.prev}">
                            			<li class="paginate_button previous"><a href="${pageVO.startPage-1 }">Previous</a></li>
                            		</c:if>
                            		
                            		<c:forEach  begin="${pageVO.startPage }" end="${pageVO.endPage }" var="idx">
                            			
                            			<li class="paginate_button ${cri.pageNum==idx?'active':'' }"><a href="${idx}">${idx}</a></li>
                            			
                            		</c:forEach>
                            		
                            		<c:if test="${pageVO.next }">
                            			<li class="paginate_button next"><a href="${pageVO.endPage+1 }">Next</a></li>
                            		</c:if>
                            		
                            	</ul>
                            </div>
                            <!-- end Pagination -->   
                            </div>
                            <!-- end panel-body -->
                        </div>
                        <!-- end panel -->
                    </div>                   
                </div>               
            <!-- /.row -->
<!-- 모달 추가 -->
<div class="modal" tabindex="-1" role="dialog" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">게시글 등록</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>처리가 완료되었습니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>
<jsp:include page="includes/footer.jsp"></jsp:include>
<!-- 페이지 나누기 정보를 가지고 있는 폼 -->
<form action="/board/list" id="actionForm">
	<input type="hidden" name="pageNum" value="${cri.pageNum }" />
	<input type="hidden" name="amount" value="${cri.amount }" />
	<input type="hidden" name="type" value="${cri.type }" />
	<input type="hidden" name="keyword" value="${cri.keyword }" />
</form>
<!-- 페이지 이동 스크립트 -->
<script>
	//페이지 번호가 클릭이 되는 경우 
	//해당 영역을 가져와 이벤트를 중지시키기
	let actionForm = $("#actionForm");
	$(".paginate_button a").click(function(e){
		e.preventDefault();
		//	/board/list?pageNum=5&amount=20
		//actionForm 안의 pageNum값과 amount 값 변경하기
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		
		actionForm.submit();
	})
	
	//사용자가 게시물 수를 클릭하면
	//actionForm의 amount의 정보를 변경하여 보내기
	//$("#amount option[value='${cri.amount}']").attr("selected","selected")
	$(".form-control").change(function(e){
		//사용자가 선택한 게시물 수 가져오기
		let amount = $(this).val()
		
		actionForm.find("input[name='amount']").val(amount);
		
		actionForm.submit();
	})
	
	//글제목을 클릭시 동작하는 스크립트
	$(".move").click(function(e){
		e.preventDefault();
		
		//bno를 포함해서
		actionForm.append("<input type='hidden' name='itemno' value='"+$(this).attr('href')+"'>")
		actionForm.attr("action","/item/detail");
		//actionoForm 보내기
		actionForm.submit();
	})
	
	//검색 폼과 관련된 스크립트
	
	
	
	$(".btn-default").click(function() {
		let searchForm = $("#searchForm");
		//type과 keyword 하나라도 입력이 안된 경우
		//사용자에게 메세지 띄워주기
		if(!searchForm.find("option:selected").val()){
			alert("검색 기준을 선택해 주세요");
			return false;
		}
		if(!searchForm.find("input[name='keyword']").val()){
			alert("검색어를 입력해 주세요");
			searchForm.find("input[name='keyword']").focus();
			return false;
		}
		
		//버튼을 눌렀을 때 무조건 페이지 번호는 1로 세팅
		searchForm.find("input[name='pageNum']").val("1");	
		searchForm.submit();
		
		
		
	})
	
	
	
</script>

<!-- 모달 스크립트 -->
<script>
	let result = "${result}";
	checkModal(result);
	
	history.replaceState({}, null, null);
	
	
	function checkModal(result){
		if(result ==='' || history.state){
			return;
		}
		if(parseInt(result)>0){
			$(".modal-body").html("게시글 "+parseInt(result)+" 번이 등록되었습니다.")
		}else{
			$(".modal-body").html(result);
		}
		$("#myModal").modal("show");
	}
	
	
</script>