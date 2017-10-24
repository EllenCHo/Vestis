<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Vestis</title>



<!-- 부가적인 테마 -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->

<!-- Custom styles for this template -->
<%-- <link href="${pageContext.request.contextPath}/assets/css/business-casual.css" rel="stylesheet"> --%>

<!-- Theme style -->
<link
	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/theme-style.min.css"
	rel="stylesheet">

<style>
.tb {
	margin-top: 50px;
	margin-bottom: 50px;
}

.tb2 {
	margin-top: 5px;
	margin-bottom: 5px;
}

.tb3 {
	padding-top: 10px !important;
	padding-bottom: 10px !important;
}

.h-top {
	padding-bottom: 10px !important;
}

.left {
	margin-left: 20px;
}

.form-control {
	display: block;
	width: 20% !important;
	padding: .5rem .75rem;
	font-size: 1rem;
	line-height: 1.25;
	color: #495057;
	background-color: #fff;
	background-image: none;
	background-clip: padding-box;
	border: 1px solid rgba(0, 0, 0, .15);
	border-radius: .25rem;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.clothes{
	background-image: url('/Vestis/assets/img/back25.jpg');
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

	<div class="clothes">
		<div class="container">
			<h3>clothes</h3>
		</div>
	</div>

	<div class="container" id="about">
		<div class="row">

			<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>


			<!-- ---------------------------------------------------------------------- -->


			<div class="container col-md-10 tb2">
				<!-- 드랍박스 -->
				<div class="row">
					<!-- 드랍박스 -->
					<!--<select id="selectbarh" type="text" class="btn-outline-green form-control multiselect multiselect-icon tb left" role="multiselect">
					<option value="0" data-icon="glyphicon-picture" selected="selected">ALL</option>
					<option value="1" data-icon="glyphicon-link">OUTER</option>
					<option value="2" data-icon="glyphicon-pencil">TOP</option>
					<option value="3" data-icon="glyphicon-shopping-cart">BOTTOMS</option>
					<option value="4" data-icon="glyphicon-shopping-cart">SHOES</option>
					<option value="5" data-icon="glyphicon-shopping-cart">ACCESSORY</option>
				</select>-->
				
				
				
				
				<!-- 탭 -->
				<ul  class="nav nav-tabs flex-column flex-lg-row " id="selectbarh" role="tablist" style="width: 90%;">
	              <li class="nav-item h-lr active"> 
	              	<a class="nav-link" data-toggle="tab" href="#tab-1" role="tab" aria-expanded="true" data-selectnum="0">ALL</a>
	               </li>
	              <li class="nav-item"> 
	              	<a class="nav-link" data-toggle="tab" href="#tab-2" role="tab" aria-expanded="false" data-selectnum="1">OUTER</a> 
	              </li>
	              <li class="nav-item"> 
	              	<a class="nav-link" data-toggle="tab" href="#tab-3" role="tab" aria-expanded="false" data-selectnum="2">TOP</a> 
	              </li>
	              <li class="nav-item"> 
	              	<a class="nav-link" data-toggle="tab" href="#tab-4" role="tab" aria-expanded="false" data-selectnum="3">BOTTOMS</a> 
	              </li>
	              <li class="nav-item"> 
	              	<a class="nav-link" data-toggle="tab" href="#tab-3" role="tab" aria-expanded="false" data-selectnum="4">SHOES</a> 
	              </li>
	              <li class="nav-item"> 
	              	<a class="nav-link" data-toggle="tab" href="#tab-4" role="tab" aria-expanded="false" data-selectnum="5">ACCESSORY</a>
	              </li>
	            </ul>
				
			
				<c:if test="${authUser.no == userNo }">
					<button type="button" class="btn btn-outline-green " onclick="location.href='add/${userNo}?submenu=wardrobe'" style="height:42px;">등록</button>
				</c:if>
			</div>

			<div id="sendh" class="row">
			
			
		  <!-- 카드샘플 -->
			<%-- <div class="col-md-3" >
				<div class="card bg-white bg-shadow text-center card-outline-primary" >
					<div class="row tb4">
						<span style="float:left; width: 80%;"></span>
						<span  style="float:right; width: 10%;">
							<c:if test="${authUser.no == userNo }">
								<button type="button" class="h-btn btn-outline-green">X</button>
							</c:if>
						</span>
					</div>
					<div>
					<ul class="list-unstyled list-border-dots">
						<li><img src="${pageContext.request.contextPath}/assets/img/coat2.png" class="hh-back" ></li>
					</ul>
					</div>
				</div>
			</div> --%><!-- /col-md-3 -->
			
			
			
			
			
				<!-- 코드세트 -->
			</div>	<!-- 옷사진뿌려줌 -->
		</div>
	</div>
	</div>



	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() { //all뿌려줌

		console.log("start");
		var no = ${userNo};
		selectClothList(0, no);
	});

	function render(clothVo, updown) { //사진뿌리는 틀
		var authNo = ${authUser.no};
		var userNo = ${userNo};
		var str = "";
		/* str += "     <span class='col-lg-3 col-sm-12 tb '> ";
		str += "         <img class='img-thumbnail' src='${pageContext.request.contextPath }/upload/"+clothVo.dbName+"'>";
		str += "     </span>"; */

		
		str += "<div id=\"cloth"+clothVo.no+"\" class=\"col-md-3\" >";
		str += "	<div class=\"card bg-white bg-shadow text-center card-outline-primary\" >";
		str += "		<div class=\"row tb4\">";
		str += "			<span style=\"float:left; width: 80%;\"></span>";
		str += "			<span  style=\"float:right; width: 10%;\">";
						if(authNo == userNo) {
							str +=  "<button type=\"button\" class=\"h-btn btn-outline-green deleteClothBtn\" value="+clothVo.no+">X</button>";
						}
		str += "			</span>";
		str += "		</div>";
		str += "		<div>";
		str += "		<ul class=\"list-unstyled list-border-dots\">";
		str += "			<li><img src=\"${pageContext.request.contextPath }/upload/"+clothVo.dbName+"\" class=\"hh-back\" ></li>";
		str += "		</ul>";
		str += "		</div>";
		str += "	</div>";
		str += "</div><!-- /col-md-3 -->";
		
		if (updown == "up") {
			$("#sendh").prepend(str);
		} else if (updown == "down") {
			$("#sendh").append(str);
		} else {

		}
	}

	$('#selectbarh a').click(function(e) {
		e.preventDefault()
		$(this).tab('show')

		console.log(this);

		var num = $(this).data("selectnum");
		var userNo = ${userNo};

		console.log(num);
		$("#sendh").empty();

		selectClothList(num, userNo);

	})

	function selectClothList(num, userNo) {
		$.ajax({
			url : "${pageContext.request.contextPath }/myroom/get",
			type : "post",
			data : {
				"clothNo" : num,
				"userNo" : userNo
			},
			dataType : 'json',
			success : function(clothList) {
				console.log("성공");
				console.log(clothList);
				console.log(clothList.length);
				for (var i = 0; i < clothList.length; i++) {
					render(clothList[i], "down");
				}
				
				$('.deleteClothBtn').click(function() {
					var $this = $(this);
					var no = $this.val();
					removeCloth(no);
					$("#cloth"+no).remove();
				});
			},

			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	function removeCloth(no) {
 		$.ajax({
			url : "${pageContext.request.contextPath }/myroom/removeCloth",
			type : "post",
			dataType : "json",
			data : {"no":no},
			success :function() {
				console.log("옷 지우기");
			},
			error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
				console.error(status + " : " + error);
			}
		});
 	}
</script>
</html>