<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Vestis-Market</title>

<!--자신이 만든 css-->
<!--<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/codi_bootstrap.css" rel="stylesheet"	>-->

<!-- Theme style -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/theme-style.min.css" rel="stylesheet">



<style>

.title {
	border-bottom:3px solid #55a79a;
	font-weight:bold;
	font-size:25px;
	line-height:1.5;
	margin:30px 0 10px 0px;
	padding:0;
}

#prodimg {
	height: 100%;
	/* width: 350px;
	border:1px solid #c1c1c1;
	margin:15px 0  0px 0px; */
}

.postTitle{
	font-weight:bold;
	font-size:18px;
	padding:0px 0px 10px 0px;
	border-bottom:1px solid #c1c1c1;
}

.postContent{

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

#emg{
	padding: 0px;
	margin: 18px 0px 0px 0px ;
	border: 1px solid #c1c1c1;
	width: 100%;
	height: 300px;
	text-align: center;
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
	<h3>Matket</h3>
	</div>
</div>



<div class="container">

	<div class="title">
		<span style="color:#292b2c">Market</span>
	</div> 

	
	<div class="row">
		<div class="col-md-4">
			<div id="emg" >
			</div>
		</div>
			
	
		<div class="col-md-8">
			<table class="table">
				<tr>
					<td>
						<p class="postTitle">${vo.title }</p>
					</td>
				</tr>
				<tr>
					<td class="content">
						<p class="postContent">${vo.content}</p>
					</td>
				</tr>						
			</table>
		</div>
	</div>
	
	
	<div class="row">
		<div class="col-md-12 text-right" >
		
			<c:if test="${empty param.kwd }">
				<a class="btn btn-primary" href="${pageContext.request.contextPath }/market/list?currNo=${param.currNo}">글목록</a>
			</c:if>
				
			<c:if test="${!(empty param.kwd) }">
				<a class="btn btn-primary" href="${pageContext.request.contextPath }/market/search?currNo=${param.currNo}&kwd=${param.kwd}">글목록</a>
			</c:if>
					
			<c:if test="${sessionScope.authUser.no==vo.person_no }">	
				<a class="btn btn-primary" href="${pageContext.request.contextPath }/market/modifyform?no=${vo.no}&currNo=${param.currNo}&kwd=${param.kwd}">글수정</a>				
			</c:if>
					
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
	
					
</div> <!-- / container -->



<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

		
</body>
<script type="text/javascript">
$(document).ready(function(){
	var mo = ${vo.cloth_no};
	console.log(mo);
	
	/* 이미지가져오기 */
	$.ajax({	
		url : "${pageContext.request.contextPath }/market/image",		
			type : "post",
			data : {mo: mo},  
		 	dataType : 'json', 
			success : function(saveName){	
				read_render(saveName);
				console.log("성공");
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
	});
	
	
	/* 댓글가져오기 */
	$.ajax({
	      
    	url : "${pageContext.request.contextPath }/market/comment_view?no="+${param.no},  
	    type : "post",
	    /* contentType : "application/json",   이 방식은 json으로 보낸다는 뜻
	    data : {name: ”홍길동"}, */

	    dataType : "json",
	    success : function(guestbookList){   //list-ajax에서 보낸 것을 guestbook으로 받음
	          
	    	for(var i=0;i<guestbookList.length;i++){
	    		console.log("========================");
	        	console.log(guestbookList[i]);
	        	console.log("========================");
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
 
/* 댓글저장 */
$("#buttt").on("click",function(){
	event.preventDefault(); 
    var text=$('#replyTextArea').val();
    console.log(text);
    var result;
    $("#comment_view").empty(); 
    $.ajax({   
          url : "${pageContext.request.contextPath }/market/comment?no="+${param.no},
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
		str+="       <a href='${pageContext.request.contextPath }/market/codelete?commentNo="+CommentVo.no+"&marketNo="+CommentVo.marketNo+"'><span class='delbtn'> <b>X</b></a>";
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




/* 메인이미지출력 */
function read_render(saveName){
	var str ="";
	str+="<img id='prodimg' src='${pageContext.request.contextPath }/upload/"+saveName+"'>";
	$("#emg").append(str);	
	
}
		   
</script>


</html>