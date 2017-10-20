<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<title>Market</title>

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
	padding-top:5px;
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
     
div > #paging {
      text-align: center;
    }

#labe {
	width:70px;
}
#contents {
	width:100%;
	height:350px;
	
}
#titles {
	width:1000px;
}

.white_content {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.8);
    opacity:0;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
    pointer-events: none;
}
.white_content:target {
    opacity:1;
    pointer-events: auto;
}
/* .white_content > div {
	position: absolute;
	top: 15%;
	left: 25%;
	width: 50%;
	height: 60%; 
	padding: 16px;
	border: 2px solid #55a79a;
	background-color: white;
	overflow: auto;	
} */

#hjs{
	border: 1px solid #bcbdc1 !important;
	margin: 0px 0px 0px 0px;
	height: 300px !important;
	background-image: url('/Vestis/assets/img/image_add.png') ;
	background-repeat: no-repeat;
	background-position:center center;
}


.point{
	cursor: pointer;
}

#modalCloset{
	width: 940px !important;
	position: absolute;
	top: 15%;
	left: 25%;
	padding: 16px;
	border: 2px solid #55a79a;
	background-color: white;
	overflow: auto;	
}

.imgbox{
	width: 200px !important;
	height: 200px !important;
	padding: 0px !important;
	margin: 15px !important;
	border: 1px solid #bcbdc1 !important;
	text-align:center !important;

}

.closetImg{
	align: center !important;
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

<!-- ------------------------------------------------------------------------------------------ -->	
    <!--main content-->
	<div class="col-md-12">
	
		
		<div class="title" style="margin-top: 50px;margin-bottom: 10px;">
			<span style="color:#292b2c">Market 글 작성</span>
		</div>
		
		<!-- 글작성영역 -->
		<div class="table-responsive">
			<form class="board-form" method="post" action="${pageContext.request.contextPath }/market/write">
			
				<table class="table table-bordered table-cart" id="tb">
					<thead style="font-size:15px;" >
						<tr>
							<td id="labe" class="label">제목</td>	
							<td><input id="titles" type="text" name="title" value=""></td>
						</tr>
						
						<tr>
							<td id="labe" class="label">내용</td>
							<td style="padding-left: 20px">
								<div class="row">
									<div class="col-md-4" >
										<div id="hjs" >
											<br>사진을 올려주세요<!-- 이미지 출력 영역 -->
										</div>
										<a class="btn btn-primary" href="#open" id="modalOpen" style="margin-top:10px;">옷 올리기</a>
									</div>
									
									<div class="col-md-8">
										<textarea id="contents" name="content"></textarea>
									</div>
								</div>
								
							</td>
						</tr>
					</thead>	
				</table>
				
				<input type="hidden" name="person_no" value="${sessionScope.authUser.no}" >
				<input type="hidden" name="cloth_no" id="hjss" value="" >
									
				<div class="row">
					<div class="col-md-12 text-right" >
						<a class="btn btn-primary" href="${pageContext.request.contextPath }/market/list?currNo=1">취소</a>
						<input type="submit" class="btn btn-primary point" value="등록">
						<!-- <a class="btn btn-primary" href="#open">옷 올리기</a> -->
					</div>
					
				</div>
				
				
			</form>				
		</div>
		<!-- /글작성영역 -->
		
		
	</div><!-- /col-md-12 -->
		

    </div><!-- /row -->
</div><!-- container -->
	
<br><br><br>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>



<!-- 옷올리기 모달 -->
<div class="white_content" id="open">
	<div id='modalCloset'>
        <div class="text-right" style="margin-bottom:10px">
        	<input type="button" class="btn btn-primary point" value="닫기" id="modalCloseBtn">
        </div>
        <div id="sendh" class="row">
        	<!-- 옷장의 옷 이미지 출력 영역 -->
        </div>
   	</div>
</div>






	
</body>





<script type="text/javascript">

$("#modalOpen").on("click", function(){
	$("#open").show();
	
})

$("#modalCloseBtn").on("click", function(){
	$("#open").hide();
	
})

$("#sendh").on("click", "img", function(){
	$("#hjs").empty();
	var selectedImgURL = $(this).attr("src");
	console.log(selectedImgURL);
	lol(selectedImgURL);
	
	var res = selectedImgURL.split('/');
	var dbName=res[3];
	console.log(dbName);
	
	$.ajax({
    	url : "${pageContext.request.contextPath }/market/dbdb",
        type : "post",
		data: {dbName:dbName},
        dataType : "json",
        success : function(result){   
	        console.log("ajax들어옴");
        	$('#hjss').val(result);
	         
	           /*  console.log(clothList); */
        },
        error : function(XHR, status, error) {
        	console.error(status + " : " + error);
        }
     }); 
 	 
	/*  alert("등록 되었습니다.") */
 	
 	 $("#open").hide();
 	
/*   $('#gog').submit();   */
	
});
 


$(document).ready(function(){	//all뿌려줌
	var no="4";
	console.log("start");
   	
  
    $.ajax({
    	url : "${pageContext.request.contextPath }/myroom/get",
        type : "post",
		data: {no:no},
        dataType : "json",
        success : function(clothList){   
	        console.log("ajax들어옴");
        
	         for(var i=0;i<clothList.length;i++){
		         console.log(clothList[i]);
	             render(clothList[i],"down",i); //i는 이미지번호
	         }
	           /*  console.log(clothList); */
        },
        error : function(XHR, status, error) {
        	console.error(status + " : " + error);
        }
     }); 
});


function render(clothVo,updown,i){	//사진뿌리는 틀
	var str ="";  

	str+="<div href='#close' class='imgbox' onclick='return false;' >"; 
	str+="	<img id='"+i+"' height='100%'  class='point closetImg' src='${pageContext.request.contextPath }/upload/"+ clothVo.dbName +"'>";
	str+="</div>";
    
	
	
    if(updown == "up"){
       $("#sendh").prepend(str);   
    }else if(updown=="down"){
       $("#sendh").append(str);   
    } else{
       
    } 
}

function lol(result){	//사진뿌리는 틀
	var str ="";  
	str+="<img src='"+result+"' height='100%' >";
	$("#hjs").append(str);   
     
}
</script>
</html>