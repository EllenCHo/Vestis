<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Vestis</title>


<!--자신이 만든 css-->
<!--<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/codi_bootstrap.css" rel="stylesheet"	>-->

<!-- Theme style -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/theme-style.min.css" rel="stylesheet">


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
  border-bottom-width: 3px !important;
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
}   
.title{
font-size:25px;
line-height:1.5;
margin:0 0 10px;
padding:0;
}

.pager { 
 	/* float: left;  */
 	width: 100%;
 	padding-right: 20px;
 	padding-left: 25px;
 	margin: 0 auto;
 	text-align: center; }
  
 .pager ul { list-style: none; }
 
 .pager ul li { 
 	color: #808080;
  	padding-bottom: 3px;
  	padding-right: 10px; 
  	display:inline-block; }
 
 
#butn2{
width: 80px;
height: 35px;
}

#butn3{
width: 75px;
height: 35px;
}

#tabs{
margin-bottom:10px
}

.service{
	background-image: url('/Vestis/assets/img/back18.jpg');
	background-size:100%;
	width : 100%;
	height : 200px;
	text-align: center;
	padding-bottom:80px;
	padding-top:80px;
}

</style>
 
</head>
<body>


<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


<div class="service">
	<div class="container">
	<h3>Service Center</h3>
	</div>
</div>

<div class="container" id="about">
	
	<div class="row">

<!-- ----------------------------------------------------------------------------------- -->
    <div class="col-md-12">
		
	<!-- 서브메뉴(탭) -->
	<ul id="tabs" class="nav nav-tabs flex-column flex-lg-row tb2" role="tablist">
		<li class="nav-item h-lr"> <a class="nav-link" data-toggle="tab" href="#tab-1" role="tab" aria-expanded="true"  onClick="location.href='${pageContext.request.contextPath }/center/list';"> Notice </a> </li>
		<li class="nav-item active"> <a class="nav-link" data-toggle="tab" href="#tab-2" role="tab" aria-expanded="false" onClick="location.href='${pageContext.request.contextPath }/qa/list?currNo=1';">FAQ & QnA</a> </li>
	</ul>
	
	<div id=wributn class="col-sm-12" style="text-align:right; padding-right: 2px;" >
		<button id=butn3 type="button" class="btn btn-primary"  onClick="location.href='${pageContext.request.contextPath }/qa/writeform?currNo=${page.currNo}';">글 쓰기</button>
	</div>
				
      <div class="title">
		<span style="color:#292b2c">FAQ & QNA</span>
	  </div>
	  
      <div class="table-responsive" id="content" style="padding-top: 5px;">				
				
		<table class="table table-bordered table-cart" id="tb">
			<thead style="font-size:20px">
			<tr>
				<th style="text-align: center">No.</th>
				<th style="text-align: center">Title.</th>
				<th style="text-align: center">Writer.</th>
				<th style="text-align: center">Date.</th>
			</tr>
			</thead>
			<c:forEach items="${fq}" var="faq">
					<tr>
						<td style="text-align: center">FAQ</td>
						<td style="text-align: center"><a href="${pageContext.request.contextPath }/qa/read?flag=1&no=${faq.no }&currNo=${page.currNo}&kwd=${param.kwd}">${faq.title}</a></td>
						<td style="text-align: center">${faq.nicname }</td>
						<td style="text-align: center">${faq.regDate }<c:if test="${sessionScope.authUser.no==faq.personNO }"></c:if></td>
					
						
					</tr>
					</c:forEach>
			<c:forEach items="${list}" var="vo">
					<tr>
						<td style="text-align: center">${vo.rn }</td>
						<td style="text-align: center"><a href="${pageContext.request.contextPath }/qa/read?flag=1&no=${vo.no }&currNo=${page.currNo}&kwd=${param.kwd}">${vo.title}</a></td>
						<td style="text-align: center">${vo.nicname }</td>
						<td style="text-align: center">${vo.regDate }&nbsp;&nbsp;<c:if test="${sessionScope.authUser.no==vo.personNO }"></c:if></td>
						
						
					</tr>
					</c:forEach>
			
 
</table>
				
				
				<div id="board">
					<form id="search_form" action="${pageContext.request.contextPath }/qa/search" method="get" style="text-align: center">
						<input type="text" id="kwd" name="kwd" value="${param.kwd}">
						<input type="hidden" id="currNo" name="currNo" value="1">
					
						<input type="submit" value="찾기">
					</form>
      			</div>
				
				
				
				
				
				<div class="pager">
					<ul>
					
						<c:if test="${page.currNo != 1 }">
						
						<c:if test="${empty param.kwd }">
							<li><a href="${pageContext.request.contextPath }/qa/list?currNo=${page.currNo-1}"><p class="hn">◀</p></a></li>
						</c:if>
						<c:if test="${!(empty param.kwd) }">
							<li><a href="${pageContext.request.contextPath }/qa/search?currNo=${page.currNo-1}&kwd=${param.kwd}"><p class="hn">◀</p></a></li>
						</c:if>
						
						</c:if>
						
						<c:forEach var="i" begin="${page.firstNo }" end="${page.endNo }" step="1">
							<c:if test="${i != page.currNo }">
								
								<c:if test="${empty param.kwd }">
									<li><a href="${pageContext.request.contextPath }/qa/list?currNo=${i }">${i }</a></li>
								</c:if>
								<c:if test="${!(empty param.kwd) }">
									<li><a href="${pageContext.request.contextPath }/qa/search?currNo=${i }&kwd=${param.kwd}">${i }</a></li>
								</c:if>
								
							</c:if>
							<c:if test="${i == page.currNo }">
								<li class="selected" style="color:blue">${i }</li>
							</c:if>
						</c:forEach>
						<c:if test="${page.currNo != page.pageEnd }">
						
							
						<c:if test="${empty param.kwd }">
							<li><a href="${pageContext.request.contextPath }/qa/list?currNo=${page.currNo+1}"><p class="hn">▶</p></a></li>
						</c:if>
						<c:if test="${!(empty param.kwd) }">
							<li><a href="${pageContext.request.contextPath }/qa/search?currNo=${page.currNo+1}&kwd=${param.kwd}"><p class="hn">▶</p></a></li>
						</c:if>
						
						</c:if>
					
					</ul>
				</div>				
							
				
				
			</div>
		</div>



      </div>
	
</div>
   
<!-- ----------------------------------------------------------------------------------- -->

  <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	
	
	
  </body>
</html>