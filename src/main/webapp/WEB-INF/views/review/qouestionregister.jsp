<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/resources/dist/css/mycss.css" />
   <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
   <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet"> 
    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">  
<%@include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Question Board</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>            
            <div class="row">
                <div class="col-lg-12">
                	<div class="panel panel-default">
                        <div class="panel-heading">
                           		질문 
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                			<form  method="post" role="form">
                				<div class="form-group">
                					<label>제목</label>
                					<input class="form-control" name="title">                				
                				</div>  
                				<div class="form-group">
                					<label>내용</label>
                					<textarea class="form-control" rows="3" name="content"></textarea>               				
                				</div> 
                				<div class="form-group">
                					<label>작성자</label>
                					<input class="form-control" name="writer" readonly="readonly" value='${info.userid}'>                				
                				</div>  
                				<button type="submit" class="btn btn-default">등록</button>              			
                				<button type="reset" class="btn btn-default">취소</button>              			
                			</form>
                		</div>
                	</div>
                </div>
            </div> 

<%@include file="../includes/footer.jsp" %>  












     