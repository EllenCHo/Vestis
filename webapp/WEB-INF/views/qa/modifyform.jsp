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


#labe {
	width:70px;
}
#contents {
	width:700px;
	height:250px;
	
}
#titles {
	width:700px;
}

#modii{
	width: 1100px;
	position:relative;
	left: 400px;
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
<!-- -----------------------------------------------------------------------------------	 -->	
		<div id="content">
				<div id="board">
					<form class="board-form" method="post" action="${pageContext.request.contextPath }/qa/modify?currNo=${param.currNo }&no=${vo.no }&kwd=${param.kwd}">
						<input type="hidden" name="no" value="${qaVo.no}" />
		
		
			
				<table class="table table-strip">
<tr>
							<th colspan="2">글수정</th>
						</tr>
						<tr>
							<td id="labe" class="label">제목</td>
							<td><input id="titles" type="text" name="title" value=""></td>
						</tr>
						<tr>
							<td id="labe" class="label">내용</td>
							<td>
								<textarea id="contents" name="content"></textarea>
							</td>
						</tr>
					</table>
				
					<div class="bottom">
						<a href="${pageContext.request.contextPath}/qa/list?currNo=1">취소</a>
						<input type="submit" value="수정">
					</div>
				</form>				
			</div>
		</div>

		
	</div><!-- /container -->
	 <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
</div>

</body>
</html>


































