<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<title>Vestis</title>

<!-- Bootstrap core CSS -->
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
	width:700px;
	height:250px;
	
}
#titles {
	width:700px;
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
    

<!-- --------------------------------------------------------------------------------------------- -->
    <!--main content-->
	<div class="col-md-12">
		<div class="title">
			<span style="color:#292b2c">QnA 글 작성</span>
		</div>
		
		<div class="table-responsive">
		<form class="board-form" method="post" action="${pageContext.request.contextPath }/qa/write?personNO=${sessionScope.authUser.no}">
  			<table class="table table-bordered table-cart" id="tb">
				<thead style="font-size:15px;" >
					<tr>
						<td id="labe" class="label" >제목</td>
						<td><input id="titles" type="text" name="title" value="" style="width:904px;"></td>
					</tr>
					<tr>
						<td id="labe" class="label" >내용</td>
						<td>
							<textarea id="contents" name="content" style="width:904px;"></textarea>
						</td>
					</tr>
				</thead>	
					</table>
					
			<div class="row">
					<div class="col-md-12 text-right" >
						<a class="btn btn-primary" href="${pageContext.request.contextPath }/qa/list?currNo=1">취소</a>
						<input type="submit" class="btn btn-primary" value="등록">
					</div>
			</div>
				</form>				
			</div>
		</div>
		</div>
		</div>
<br><br><br>
   <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	
	
	
  </body>







</html>







