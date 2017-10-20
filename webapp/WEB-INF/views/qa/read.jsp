<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<title>QnA</title>

<!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/css/business-casual.css" rel="stylesheet">
    
    
<style>
     
/* 완전 겉 테두리 */
.table-bordered {
  border: 1px solid #bcbdc1 !important;
}

/* 전체 테두리 */
.table-bordered th,
.table-bordered td {
 border: 1px solid  #bcbdc1 !important;
 text-align: center;
}

.table-bordered thead th,
.table-bordered thead td {
 /* 번호,제목,작성자,작성일 밑 테두리 */
  border-bottom-width: 1px !important;
  text-align: center;
  font-weight:bold;
}


.table th, .table td {
	padding-top:5px;/* !important; */
	padding-bottom:5px;
}
.table th{
font-weight:bold !important;
}
.table td{
font-weight:bold;
}


.title {
	border-bottom:3px solid #55a79a;
	font-weight:bold;
	font-size:25px;
	line-height:1.5;
	margin:30px 0 10px 0px;
	padding:0;
}

.replyArea{
	border:1px solid #c1c1c1;
	margin:30px 0px 50px 0px;
	padding :20px 20px 20px 20px;
}


.replyTitle{
	margin:10px 0px 10px 0px;
}

.replyTextBox{
	padding :0px 3px 0px 15px !important;
}

.replyText{	
	width:100%;
	display:inline-block;
	margin:0px px 0px 0px;
	vertical-align: text-top;
}



.replyWriteBtnBox{
	padding :0px 0px 0px 0px !important;
}


.replyWriteBtn{
	width:75px;
	height:78px;
	display:inline-block;
	margin:0px 0px 0px 0px;
	vertical-align: text-bottom;
}


.replyItemArea{
	margin:10px 0px 10px 0px;
}

.replyItem{
	margin:20px 0px 20px 0px;
	border-bottom:1px solid #c1c1c1;
}

.delbtn{
	font-size: 15px;
	color:red;
	margin: 0px 0px 0px 15px;
	
}

#wbutn{
	padding-bottom:8px;
	height:37px;
}

#tabs{
margin-bottom:10px;
}

#buttt{
	background-color:#55a79a;
}
  </style>
    
</head>
<body>
	
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


<div class="myroomimg">
	<div class="container">
	<h3>Service Center</h3>
	</div>
</div>

<div class="container" id="about">
	
	<div class="row">
	
<!-- -------------------------------------------------------------------------------------------------------------- -->	
  	<div class="col-md-12">
		
	<!-- 서브메뉴(탭) -->
	<ul id="tabs" class="nav nav-tabs flex-column flex-lg-row tb2" role="tablist">
		<li class="nav-item h-lr"> <a class="nav-link" data-toggle="tab" href="#tab-1" role="tab" aria-expanded="true"  onClick="location.href='${pageContext.request.contextPath }/center/list';"> Notice </a> </li>
		<li class="nav-item active"> <a class="nav-link" data-toggle="tab" href="#tab-2" role="tab" aria-expanded="false" onClick="location.href='${pageContext.request.contextPath }/qa/list?currNo=1';">FAQ & QnA</a> </li>
	</ul>
	
		
			<div class="title">
				<span style="color:#292b2c">FAQ & QNA</span>
	  		</div>
			
			
		<div class="table-responsive" id="content" style="padding-top: 5px;">				
				
			<table class="table table-bordered table-cart" id="tb">
				<thead style="font-size:15px">
					<tr>
						<td class="label" style="width:136px;">제목</td>
						<td>${vo.title }</td>
					</tr>
						<tr>
							<td class="label"><p class="hn">내용</p></td>
							<td class="content">${vo.content }</td>
						</tr>
				</thead>		
						
					</table>
				<div class="row">
					<div class="col-md-12 text-right" >
					
					<c:if test="${empty param.kwd }">
						<a class="btn btn-primary" id=wbutn href="${pageContext.request.contextPath }/qa/list?currNo=${param.currNo}"><p class="hn">글목록</p></a>
					</c:if>
				
					<c:if test="${!(empty param.kwd) }">
						<a class="btn btn-primary" id=wbutn href="${pageContext.request.contextPath }/qa/search?currNo=${param.currNo}&kwd=${param.kwd}">글목록</a>
					</c:if>
					
					
					<c:if test="${sessionScope.authUser.no==vo.personNO }">	
						<a class="btn btn-primary" id=wbutn href="${pageContext.request.contextPath }/qa/modifyform?no=${vo.no}&currNo=${param.currNo}&kwd=${param.kwd}">글수정</a>				
					</c:if>
					
					<c:if test="${sessionScope.authUser.no==vo.personNO }">	
						<a class="btn btn-primary" id=wbutn href="${pageContext.request.contextPath }/qa/delete?no=${vo.no }&currNo=${page.currNo}">삭제</a>
					</c:if>
					
					</div>
				</div>
			</div>
		<div class="row">	
			<div class="col-md-12" >
				<div class="replyArea">
					<div class="replyTitle"><b>댓글</b></div>
					
					<div class="row">
						<div class="col-md-11 replyTextBox">
							<textarea id="replyTextArea" class="replyText" rows="3"></textarea>
						</div>
						<div class="col-md-1 replyWriteBtnBox">
							<button type="button" class="btn btn-success replyWriteBtn" id="buttt">댓글<br>등록</button>
						</div>
					</div>
			
			<!-- 댓글영역 -->
				<div id="comment_view" class="replyItemArea">
					<!-- ajax로 출력 -->				
				</div>
			
			</div>
		</div>
	</div>		
</div>			 
</div>
</div>			 
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

    
				
</body>
<script type="text/javascript">
$(document).ready(function(){
	
	  $.ajax({
	      
	      url : "${pageContext.request.contextPath }/qa/comment_view"+"?no="+${param.no},  
	      type : "post",
	      /* contentType : "application/json",   이 방식은 json으로 보낸다는 뜻
	      data : {name: ”홍길동"}, */

	       dataType : "json",
	      success : function(guestbookList){   //list-ajax에서 보낸 것을 guestbook으로 받음
	          
	    	  for(var i=0;i<guestbookList.length;i++){
	            	console.log(guestbookList[i]);
	        	   render(guestbookList[i],"down"); 
	         }  
	         console.log(guestbookList);
	          /*성공시 처리해야될 코드 작성*/
	          
	      },
	      error : function(XHR, status, error) {
	         console.error(status + " : " + error);
	      }
	  });
});
 
	$("#buttt").on("click",function(){
	event.preventDefault(); 
    var text=$('#replyTextArea').val();
    console.log(text);
    var result;
    $("#comment_view").empty(); 
    $.ajax({   
          url : "${pageContext.request.contextPath }/qa/comment"+"?no="+${param.no},  
          type : "post",
          data : {text: text},  
           dataType : "json",  
          success : function(guestbookList){   //list-ajax에서 보낸 것을 guestbook으로 받음
        	  for(var i=0;i<guestbookList.length;i++){
        		  
	            	console.log(guestbookList[i]);
	        	   render(guestbookList[i],"down"); 
	         }  
	         console.log(guestbookList);
	         $('#replyTextArea').val(" ");
          },
          error : function(XHR, status, error) {
             console.error(status + " : " + error);
          }
       });
 }); 
	
	/* 댓글출력 */	
	function render(CommentVo,updown){
		
		var authUserNo = "${sessionScope.authUser.no}";
		var personNo = CommentVo.personNo;
		
	   	var str ="";
		str+="<div class='replyItem'>";
		str+="	<div><b>" + CommentVo.nicname +" 님</b>("+ CommentVo.regDate +")";
		if(authUserNo == personNo){
			str+="       <a href='${pageContext.request.contextPath }/qa/codelete?commentNo="+CommentVo.no+"&centerNo="+CommentVo.centerNo+"'><span class='delbtn'> <b>X</b></a>";
		}
		str+="  </div>";
		str+="	<div>" + CommentVo.content + "</div>";
		str+="<div>";

	   	if(updown == "up"){
	   		$("#comment_view").prepend(str);   
	   	}else if(updown=="down"){
	    	$("#comment_view").append(str);   
	   	}else{
		   
	   	} 
	}
		      
		   
</script>


</html>