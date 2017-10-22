<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>ServiceCenter</title>


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


#butn1{
width:90px;
height:30px;
font-weight:bold !important;
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


<!-- ---------------------------------------------------------------------- -->


	
	<!--main content-->
	<div class="col-md-12">
	
  		<!-- 서브메뉴(탭) -->
		<ul class="nav nav-tabs flex-column flex-lg-row tb2" role="tablist">
			<li class="nav-item h-lr active"> <a class="nav-link" data-toggle="tab" href="#tab-1" role="tab" aria-expanded="true"  > Notice </a> </li>
			<li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#tab-2" role="tab" aria-expanded="false" onClick="location.href='${pageContext.request.contextPath }/qa/list?currNo=1';">FAQ & QnA</a> </li>
		</ul>
		  
	
	
	<div class="title">
		<span style="color:#292b2c">Notice</span>
	</div>
	
  		<div class="table-responsive">
  		<table class="table table-bordered table-cart" id="tb">
			<thead style="font-size:20px">
				<tr>
					<th style="text-align: center" >No.</th>
					<th style="text-align: center" >Title.</th>
					<th style="text-align: center" >Writer.</th>
					<th style="text-align: center" >Date.</th>
				</tr>
			</thead>
			<c:forEach items="${list }" var="vo" >
				<tr>
					<td >Notice</td>
					<td ><a href="${pageContext.request.contextPath }/center/read/${vo.no }">${vo.title }</a></td>
					<td >Manager</td>
					<td >${vo.regDate }</td>
				</tr>
			</c:forEach>
			
		
		</table>
		
<style>
 
 .pager { /* float: left; */ width: 100%;
           padding-right: 20px;
           padding-left: 25px;
           margin: 0 auto;
           text-align: center; }
  
 .pager ul { list-style: none; }
 
 .pager ul li { color: #808080;
               padding-bottom: 3px;
                display:inline-block; padding-right: 10px; }
 
</style>
<!-- width: 0px; margin:0 auto; -->
         
         <br>
         <div class="pager">
         <ul>
            <li><a href=""><p class="hn">◀</p></a></li>
            <li><a href=""><p class="hn">1</p></a></li>
            <li><a href=""><p class="hn">▶</p></a></li>
         </ul>
      </div>
      
      
      
      
		</div>
		
		
	</div><!-- / col-md-12 -->
	
	
	
	
<!-- ---------------------------------------------------------------------- -->



	
	
	</div><!-- / row -->
</div><!-- container -->






<!-- ---------------------------------------------------------------------- -->


<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>




</body>




</html>