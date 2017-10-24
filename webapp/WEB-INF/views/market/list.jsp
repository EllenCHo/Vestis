<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Market</title>
	
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

/*
.table td{
	font-weight:bold;
}
 */
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

</style>
 <style>
 
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
/* 검색창 스타일 */
#submit
{       
    background-color: #55a79a;
    background-image: linear-gradient(#87cdc2, #2e8073); 
    border-width: 1px;
    border-style: solid;
    border-color: #7eba7c #578e57 #447d43;
    box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 
                0 1px 0 rgba(255, 255, 255, 0.3) inset;
    height: 35px;
    margin: 0 0 0 5px;
    padding: 0;
    width: 97px;
    cursor: pointer;
    font: bold 14px Arial, Helvetica;
    color: #23441e;    
    text-shadow: 0 1px 0 rgba(255,255,255,0.5);
}

#submit:hover {       
    background-color: #2e8073;
    background-image: linear-gradient(#2e8073, #2e8073);
}   

#submit:active {       
    background: #95d788;
    outline: none;
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;        
}

#submit::-moz-focus-inner {
       border: 0;  /* Small centering fix for Firefox */
}

#kwd, 
#submit {
    float: left;
}

#kwd {
    padding: 5px 9px;
    height: 35px;
    width: 380px;
    border: 1px solid #a4c3ca;
    font: normal 13px 'trebuchet MS', arial, helvetica;
    background: #f1f1f1;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.25) inset, 0 1px 0 rgba(255, 255, 255, 1);            
}

#kwd::-webkit-input-placeholder {
   color: #9c9c9c;
   font-style: italic;
}

#kwd:-moz-placeholder {
   color: #9c9c9c;
   font-style: italic;
}  

#kwd:-ms-placeholder {
   color: #9c9c9c;
   font-style: italic;
}  

#searchbox
{
    background-color: #292b2c;
    margin-Left:618px;
    border-width: 1px;
    border-color: #292b2c #292b2c #292b2c;            
    width: 490px;
    padding: 3px 3px 4px 3px;
    overflow: hidden; /* Clear floats */
}


.imgbox{
	width: 70px !important;
	height: 70px !important;
	padding: 0px !important;
	margin-left: 50px !important;
	border: 1px solid #bcbdc1 !important;
	text-align:center !important;

}

.point{
	cursor: pointer;
}

a {
	color: #000000 !important;
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
<br><br><br>
<div class="container" id="about">
	
	<div class="row">
	
<!-- ----------------------------------------------------------------------------------- -->
	<div class="col-md-12">
		
		<div id="board">
		 <div class="container" style="padding-left: 680px; padding-right: 0px;">
			<form id="search_form" action="${pageContext.request.contextPath }/market/search" method="get">
				<input type="text" id="kwd" name="kwd" value="${param.kwd}">
				<input type="hidden" id="currNo" name="currNo" value="1">
				<input type="submit" value="찾기"  style="padding-bottom:1px; height: 35px;">
			</form>
		 </div>	
      	</div>
		
		
		
		
		
            <%-- <form id="searchbox" action="${pageContext.request.contextPath }/market/search" >
    			<input id="kwd" type="text" placeholder="Type here" id="kwd" name="kwd" value="${param.kwd}">
    			<input type="hidden" id="currNo" name="currNo" value="1">
    			<input id="submit" type="submit" value="Search">
			</form> --%>
      	
      	
				
      <div class="title">
		<span style="color:#292b2c">Market</span>
	  </div>
	  
      <div class="table-responsive" id="content" style="padding-top: 5px;">	
				
		<table class="table table-bordered table-cart" id="tb">
			<thead style="font-size:20px">
			<tr>
				<th style="text-align: center">No.</th>
				<th style="text-align: center">Ware.</th>
				<th style="text-align: center">Title.</th>
				<th style="text-align: center">Writer.</th>
				<th style="text-align: center">Date.</th>
				<th style="text-align: center">Setting</th>
			</tr>
			</thead>
			<c:forEach items="${list}" var="vo">
					<tr style="text-align: center">
						<td>${vo.rn }</td>
						<td style="padding:3px;">
							<div class="imgbox">
								<a style="text-align: center;" href="${pageContext.request.contextPath }/market/read?no=${vo.no }&currNo=${page.currNo}&kwd=${param.kwd}">
									<img src="${pageContext.request.contextPath }/upload/${vo.savename }" height="100%" class="top">
								</a>
							</div>
						</td>
						<td style="text-align: left;padding-top: 26px;"><a href="${pageContext.request.contextPath }/market/read?no=${vo.no }&currNo=${page.currNo}&kwd=${param.kwd}">${vo.title}</a></td>
						<td>${vo.nicname }</td>
						<td>${vo.regDate }</td>
						<td><c:if test="${sessionScope.authUser.no==vo.person_no }">
								<a href="${pageContext.request.contextPath }/market/delete?no=${vo.no }&currNo=${page.currNo}" class="del">X</a>
							</c:if>
						</td>
						
					</tr>
					</c:forEach>
			
 
</table>
				<br>
				
				
				<div class="pager">
					<ul>
					
						<c:if test="${page.currNo != 1 }">
						
						<c:if test="${empty param.kwd }">
							<li><a href="${pageContext.request.contextPath }/market/list?currNo=${page.currNo-1}"><p class="hn">◀</p></a></li>
						</c:if>
						<c:if test="${!(empty param.kwd) }">
							<li><a href="${pageContext.request.contextPath }/market/search?currNo=${page.currNo-1}&kwd=${param.kwd}"><p class="hn">◀</p></a></li>
						</c:if>
						
						</c:if>
						
						<c:forEach var="i" begin="${page.firstNo }" end="${page.endNo }" step="1">
							<c:if test="${i != page.currNo }">
								
								<c:if test="${empty param.kwd }">
									<li><a href="${pageContext.request.contextPath }/market/list?currNo=${i }">${i }</a></li>
								</c:if>
								<c:if test="${!(empty param.kwd) }">
									<li><a href="${pageContext.request.contextPath }/market/search?currNo=${i }&kwd=${param.kwd}">${i }</a></li>
								</c:if>
								
							</c:if>
							<c:if test="${i == page.currNo }">
								<li class="selected" style="color:blue"><p class="hn">${i }</p></li>
							</c:if>
						</c:forEach>
						<c:if test="${page.currNo != page.pageEnd }">
						
							
						<c:if test="${empty param.kwd }">
							<li><a href="${pageContext.request.contextPath }/market/list?currNo=${page.currNo+1}">▶</a></li>
						</c:if>
						<c:if test="${!(empty param.kwd) }">
							<li><a href="${pageContext.request.contextPath }/market/search?currNo=${page.currNo+1}&kwd=${param.kwd}">▶</a></li>
						</c:if>
						
						</c:if>
					
					</ul>
				</div>				
				<div class="col-sm-12" style="text-align:right;">
					<button id=butn3 type="button" class="btn btn-primary point"  onClick="location.href='${pageContext.request.contextPath }/market/writeform?currNo=${page.currNo}';"><p class="hn">글 쓰기</p></button>
				</div>			
				
				
			</div>
		</div>



      </div>
</div>

<!-- ---------------------------------------------------------------------- -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</body>
</html>