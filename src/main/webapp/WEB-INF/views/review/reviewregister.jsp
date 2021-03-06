<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/resources/dist/css/mycss.css" />
    <title>리류등록</title>
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
            <body>
            <div class="row">
                <div class="col-lg-12" style="margin:0 25%;">
                    <h1 class="page-header">Review Board</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>            
            <div class="row">
            	<div style="width:50%; margin:auto;">
                <div class="col-lg-12">
                	<div class="panel panel-default">
                        <div class="panel-heading">
                          		 리뷰 등록
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
                					<label>아이디</label>
                					<input class="form-control" name="userid" readonly="readonly" value='${info.userid}'>                				
                				</div>  
                				<input type="hidden" name="itemno" value='<%=request.getParameter("itemno")%>' />
                				<button type="submit" class="btn btn-default" style="background-color:a6d0a6;">등록</button>              			
                				<button type="reset" class="btn btn-default">취소</button>              			
                			</form>
                		</div>
                	</div>
                </div>
                </div>
            </div> 
<!-- 첨부파일 -->
<div class="row">
	<div class="col-lg-12">
	<div style="width:50%; margin:auto;">
		<div class="panel panel-default">

			<div class="panel-heading">파일 첨부</div>
			<div class="panel-body">
				<div class="form-group uploadDiv">
					<input type="file" name="uploadeFile" multiple/>
				</div>
				<div class="uploadResult">
					<ul></ul>
				</div>
			</div>
		</div>
	</div>
	</div>
</div>   
<script>
$(function(){
	//새글 등록 폼 가져오기
	let formObj = $("form[role='form']");
	$("button[type='submit']").click(function(e){
		e.preventDefault(); //새글 등록 submit막기
		
		let str="";
		
		//첨부파일 정보를 수집하여 hidden 태그로 추가
		$(".uploadResult ul li").each(function(i, obj){
			let job = $(obj);
			
			str+="<input type='hidden' name='attachList["+i+"].uuid' value='"+job.data("uuid")+"'>";
			str+="<input type='hidden' name='attachList["+i+"].uploadPath' value='"+job.data("path")+"'>";
			str+="<input type='hidden' name='attachList["+i+"].fileName' value='"+job.data("filename")+"'>";
			/* str+="<input type='hidden' name='attachList["+i+"].fileType' value='"+job.data("type")+"'>"; */
		})
		
		formObj.append(str).submit();
	})
	
	
	
	
	
	$("input[type='file']").change(function(){
		console.log("업로드 요청");
		//form안의 데이터들을 key/value 형태로 만들때 사용
		let formData = new FormData();
		
		//사용자가 첨부한 파일 목록 가져오기
		let inputFiles = $("input[name='uploadFile']");
		//console.log(inputFiles);
		let files = inputFiles[0].files;
		
		//가져온 첨부파일 목록을 formData 객체 안에 추가하기
		for(var i=0;i<files.length;i++){
			
			if(!checkExtension(files[i].name,files[i].size)){
				return false;
			}			
			formData.append("uploadFile",files[i]);
		}
		
		$.ajax({
			url : '/reviewAjax',
			processData : false,
			contentType : false,
			data : formData,
			type : 'post',
			dataType : 'json',
			success : function(result){
				//console.log(result);
				showAttachList(result);
				$("input[name='uploadFile']").val("");
			}
		})
	})
	
	//첨부파일의 크기와 종류 제한하기
	function checkExtension(fileName,fileSize){
		let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
		let maxSize = 2097152;
		
		if(fileSize > maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
		if(regex.test(fileName)){
			alert("해당 종류의 파일은 업로드 할 수 없습니다.");
			return false;
		}
		return true;
	}
	
	function showAttachList(uploadResultArr){
		let str="";
		let uploadResult = $(".uploadResult ul");
		
		$(uploadResultArr).each(function(i,obj){			
			let fileCallPath=encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
			let oriPath=obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName;
			
			oriPath = oriPath.replace(new RegExp(/\\/g),"/");
			
			str+="<li data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='";
			str+=obj.fileName+"'>";
			str+="<a href=\"javascript:showImage('"+oriPath+"')\">";
			str+="<img src='/displayreview?fileName="+fileCallPath+"'><div>"+obj.fileName+"</a>";
			str+=" <button type='button' class='btn btn-warning btn-circle btn-sm' data-file='"+fileCallPath+"' data-type='image'>";
			str+="<i class='fa fa-times'></i></button></div>";				
			str+="</li>";		
		})
		uploadResult.append(str);
	}
	
	// x 를 누르면 목록에서 삭제하기
	$(".uploadResult").on("click","button",function(){
		let targetFile = $(this).data("file");
		let type = $(this).data("type");
		
		let targetLi = $(this).closest("li");
		$.ajax({
			url:'/deletereview',
			dataType:'text',
			data:{
				fileName:targetFile,
				type:type
			},
			type : 'post',
			success:function(result){
				targetLi.remove();	
			}		
		})		
	})	
	
	//커진 사진을 원래대로 돌리기
	$(".bigPictureWrapper").click(function(){
		$(".bigPicture").animate({width:'0', height:'0'},1000);
		setTimeout(() => {
			$(".bigPictureWrapper").hide();
		}, 1000);
	})	
})
	//썸네일 원본 이미지 보여주기
function showImage(fileCallPath){
	$(".bigPictureWrapper").css("display","flex").show();
	
	$(".bigPicture").html("<img src='/displayreview?fileName="+fileCallPath+"'>")
	                .animate({width:'100%', height:'100%'},1000);
}
</script>              
</body>











     