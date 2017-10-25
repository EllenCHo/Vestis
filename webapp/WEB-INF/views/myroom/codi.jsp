<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Vestis</title>

<!-- Latest compiled and minified JavaScript -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.1/themes/base/jquery-ui.css" />

<!--자신이 만든 css-->
<link rel="stylesheet"	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/codi_bootstrap.css">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/assets/css/business-casual.css"
	rel="stylesheet">

<!-- Theme style -->
<link
	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/theme-style.min.css"
	rel="stylesheet">

<script	src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/html2canvas.min.js"></script>

<style type="text/css">
.clothBox {
	position: absolute;
	overflow: hidden;
	width: 200px;
	height: 200px;
	min-width: 30px;
	min-height: 30px;
	top: 22%;
	left: 7%;
	background-color: #FFFFFFFF;
}

.clothdragger {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 60px;
	height: 60px;
}

.left-box {
	background: #FFFFFF;
	height: 530px;
	width: 100%;
	min-height: 50%;
	padding: 1%;
	border: 1px solid;
	border-color: #949494;
	margin-bottom: 50px;
}

.right-box {
	height: 530px;
	min-height: 50%;
	background-color: rgba(255, 255, 255, 0.9);
	padding: 1%;
	border: 1px solid #949494;
	margin-bottom: 50px;
}


#space {
	position: relative;
	height: 100%;
}

/* div:focus {
	background-color: Aqua;
} */

.profile {
	float: left;
}

.codi-space {
	float: right;
	width: 86%;
}

.top {
	margin-top: 30px;
}

.none ul {
	list-style-type: none;
}

.sub-menu {
	width: 120px;
	height: 800px;
	float: left;
}

.thumbnail {
	overflow: hidden;
	position: absoulte;
	width: auto;
	height: 20%;
}

.thumbnail img {
	position: absoulte;
	width: 100%;
	height: 100%;
}

.btn-default, .btn-primary, .btn-success, .btn-info, .btn-warning,
	.btn-danger {
	-webkit-box-shadow: 0px 3px 0px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0px 3px 0px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 3px 0px rgba(0, 0, 0, 0.3);
}

.btn-default:active, .btn-primary:active, .btn-success:active, .btn-info:active,
	.btn-warning:active, .btn-danger:active {
	margin-top: 3px;
	margin-bottom: -3px;
}
.codi{
	background-image: url('/Vestis/assets/img/back34.jpg');
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

	<div class="codi">
		<div class="container">
			<h3>codi</h3>
		</div>
	</div>

	<div class="container">
		<div class="row">

			<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>


			<!-- ---------------------------------------------------------------------- -->

			<div class="col-md-10">



				<!-- 좌 -->
				<div class="col-md-6">
					<div class="h-tabtop">
						<button id="reset" type="button" class="btn btn-outline-green "
							style="margin-bottom: 5px;">Reset</button>
						<form id="canvas" action="${pageContext.request.contextPath}/myroom/save" method="post" style="margin: 0px; display: inline">
							<button id="save" type="button" class="btn btn-outline-green " style="margin-bottom: 5px;">Save</button>
							<input id="data" name="data" type="hidden"> 
							<input id="info_weather" name="weather" type="hidden" value="${weatherNo }"> 
							<input id="info_temp" name="temp" type="hidden" value="${temp }">
						</form>
						<div style="float: right; margin-top: 15px; display: inline;">
							<strong>표시된 날씨에 맞는 코디를 해주세요.&emsp;</strong>
						</div>

					</div>
					<div class="left-box" style="overflow:hidden;">
						<div style="display:inline;">
							<img alt="날씨"
								src="${pageContext.request.contextPath}/assets/img/${weather}.png"
								style="float: left; margin-left:3%; width: 80px; height: auto;">
							<h2 style="float: left; margin-top:5%; margin-left:2%;">${temp}</h2>
						</div>
					</div>
				</div>



				<!-- 우 -->
				<div class="col-md-6">

					<!-- 탭 -->
					<ul class="nav nav-tabs flex-column flex-lg-row h-tabtop"
						style="margin-bottom: 5px;" id="selectbarh" role="tablist">
						<li class="nav-item active" style="margin-left: 10px;"><a
							class="nav-link h-tab" data-toggle="tab" href="#tab-1" role="tab"
							aria-expanded="true" data-selectnum="0">ALL</a></li>
						<li class="nav-item"><a class="nav-link h-tab"
							data-toggle="tab" href="#tab-2" role="tab" aria-expanded="false"
							data-selectnum="1">OUTER</a></li>
						<li class="nav-item"><a class="nav-link h-tab"
							data-toggle="tab" href="#tab-3" role="tab" aria-expanded="false"
							data-selectnum="2">TOP</a></li>
						<li class="nav-item"><a class="nav-link h-tab"
							data-toggle="tab" href="#tab-4" role="tab" aria-expanded="false"
							data-selectnum="3">BOTTOMS</a></li>
						<li class="nav-item"><a class="nav-link h-tab"
							data-toggle="tab" href="#tab-3" role="tab" aria-expanded="false"
							data-selectnum="4">SHOES</a></li>
						<li class="nav-item"><a class="nav-link h-tab"
							data-toggle="tab" href="#tab-4" role="tab" aria-expanded="false"
							data-selectnum="5">ACCESSORY</a></li>
					</ul>



					<div class="bts right-box">
						<div style="overflow: auto; width: 100%; height: 100%;">
							<ul id="clothList"
								style="list-style: none; padding-left: 0px; text-align: center; display: block;">
							</ul>
						</div>
					</div>
				</div>

			</div>

			<!-- 위의 문구   왼쪽에 있어야지-->
			<%-- <div class="bts" style="margin-top: 27px; margin-bottom:5px;">
				<h4 class="text-left" style="display:inline;"><strong>왼쪽 위의 날씨에 맞는 코디를 해주세요.</strong></h4>
				<button id="reset" class="btn btn-default" style="margin-left:3.5%;">Reset</button>
				<form id="canvas" action="${pageContext.request.contextPath}/myroom/save"
					method="post" style="margin: 0px; display: inline">
					<Button id="save" class="btn btn-default">Save</Button> 
					<input id="data" name="data" type="hidden">
					<input id="info_weather" name="weather" type="hidden" value="${weatherNo }">
					<input id="info_temp" name="temp" type="hidden" value="${temp }">	
				</form>
			</div> --%>



			<!-- 왼쪽박스 -->
			<%-- <div class="left-box">
					<div style="float:left;">
						<img alt="날씨"
							src="${pageContext.request.contextPath}/assets/img/${weather}.png"
							style="width: 30%; height: auto;">${temp}
					</div>
				</div> --%>


			<!-- 오른쪽 박스 -->
			<!-- <div class="bts right-box">
				<ul class="nav nav-pills" style="width: 100%; font-size: small">
						<li class="active menu" value="0"><a>전체
						</a></li>
						<li class="menu" value="2"><a>상의
						</a></li>
						<li class="menu" value="3"><a>하의
						</a></li>
						<li class="menu" value="4"><a>신발
						</a></li>
						<li class="menu" value="1"><a>외투
						</a></li>
						<li class="menu" value="5"><a>기타
						</a></li>
					</ul>
					<div style="overflow:auto; width: 100%; height: 85.6%;">
						<ul id="clothList"
							style="list-style: none; padding-left: 0px; text-align: center; display: block;">
						</ul>
					</div>
				</div> -->





		</div>
		<!-- /col-md-10 -->




	</div>


	<!-- ---------------------------------------------------------------------- -->

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
<script type="text/javascript">
	$(document).ready(function() {
		fetchList(0);
		console.log("ready!");

	});

	function fetchList(type) {
		var userNo = ${userNo};
		$.ajax({
			url : "${pageContext.request.contextPath }/myroom/clothList",
			dataType : "json",
			type : "post",
			data : {
				"type" : type,
				"userNo" : userNo
			},
			success : function(clothList) {
				console.log("성공");
				for (var i = 0; i < clothList.length; i++) {
					renderCloth(clothList[i]);
				}
				clothAdd();
			},
			error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
				console.error(status + " : " + error);
			}
		});
	}

	function renderCloth(ClothListVo) {
		str = "";
		str += "<li class=\"col-sm-3\" style=\"padding-left: 0px;\">";
		str += "<div class=\"thumbnail\">";
		str += "	<img src=\"${pageContext.request.contextPath}/upload/"+ClothListVo.dbName+"\" id="+ClothListVo.no+" name=\"cloth\" style=\"cursor:pointer\">";
		str += "</div>";
		str += "</li>";

		$("#clothList").append(str);

	}
</script>
<!-- 메뉴에 대한 자바스크립트 -->
<script type="text/javascript">
	//메뉴를 클릭했을 때 그 메뉴가 강조
	$(".nav-link").click(function() {
		var menunum = $(this).data("selectnum");
		$("#clothList").empty();
		fetchList(menunum);
		/* $this.addClass("active"); */
		
		$(".nav-item a").removeClass("active");

	});
</script>


<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.5.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<!-- 옷 이미지에 대한 자바스크립트 -->
<script type="text/javascript">
	//z-index를 위한 변수 
	//select함수에서 쓰임
	var index = 0;
	var count = 0;
	//메뉴에서 옷을 클릭했을 때 왼쪽 공간에 옷이 추가되도록 함
	function clothAdd() {
		$("[name=cloth]").click(function choose() {
			var layer = event.srcElement;

			var img = layer.src;
			console.log(layer);
			var value = layer.id;
			console.log(layer.id);

			//tabindex : 옷 이미지를 클릭했을 때 하늘색 테두리가 나오도록 하기 위함
			//select(count) : 옷 이미지를 클릭했을 때 옷이 맨 앞으로 나오도록 zIndex를 설정하도록 함	
			//remove(value) : 옷을 더블클릭하면 옷 이미지가 사라지도록 하는 메소드
			var tag = "<div id=\"cloth"+ count+ "\" tabindex=\"1\" onclick=\"select("+ count+ ")\" class=\"clothBox\" style=\"z-index:"+index+"\">"
					+ "<img src="+ img+ " ondblclick=\"remove("+ count+ ")\" id="+ value+ " class=\"clothdragger\" name=\"img\" style=\"width: 100%; height: 100%; cursor:pointer\" />"
					+ "</div>";

			count++;
			index++;
			
			console.log(tag);

			//왼쪽 공간에 이미지 추가
			$(".left-box").append(tag);

			console.log(img);

			//드래그와 이미지 조절이 되도록 함
			// jQuery UI implementation for mouse drag/resize   
			$(".clothBox").draggable();
			$(".clothBox").resizable();
		});
	}

	//더블클릭했을 경우 이미지를 삭제해주는 메소드
	function remove(no) {
		console.log("double click");
		/* event.srcElement : 이벤트가 발생한 개체를 반환/설정 
		event : document 에서 발생하는 이벤트 자체를 가르킨다

		srcElement : 이벤트가 발생된 document 내의 객체이다.*/
		var layer = event.srcElement;
		console.log(layer);
		console.log(no);
		$("#cloth" + no).remove()
	};

	//이미지를 클릭했을 때 zIndex값을 1씩 증가시켜서 맨 앞으로 나오게 하는 메소드
	function select(no) {
		$("#cloth" + no).css("zIndex", index);
		index++;

		$(".clothBox").css("background", "transparent");

		$("#cloth" + no).focus();
		console.log("click" + index);
	};

	//리셋 버튼을 클릭했을 때 옷이 다 사라지도록 설정
	$("#reset").click(function() {
		console.log("remove!");
		$(".clothBox").remove();
	});
</script>

<!-- 왼쪽 공간에 넣은 이미지를 저장하기 위한 자바스크립트 -->
<script type="text/javascript">
	$("#save").click(function() {
		event.preventDefault();
		var chsitems = new Array();
		$.each($("[name=img]"), function(index, item) {
			console.log(index + "번째 요소 : " + item.id);
			chsitems.push(item.id);
		});
		
		var weather = $("#info_weather");
		var temp = $("#info_temp");
		
		console.log(chsitems.length)
		if(chsitems.length == 0) {
			alert("옷을 선택해주세요.");
		} else {
			//이미지 만들기
			html2canvas($(".left-box"), {
				onrendered : function(canvas) {
					// canvas is the final rendered <canvas> element
					//이미지 형태 지정
					var myImage = canvas.toDataURL("image/png");
	
					$("#data").val(myImage);
					var authNo = ${authUser.no};
					//console.log(myImage);
					var jb = jQuery.noConflict();
					jQuery.ajaxSettings.traditional = true;
					var allData = {
						"data" : $("#data").serialize(),
						"choice" : chsitems,
						"weather" : $("#info_weather").val(),
						"temp" : $("#info_temp").val(),
						"authNo" : authNo
					};
					
					console.log(allData);
					jb.ajax({
						url : "${pageContext.request.contextPath}/myroom/save/${userNo}",
						type : "POST",
						
						data : allData,
						
						success : function(result) {
							console.log(result);
							alert("저장됐습니다.");
							window.location.replace("${pageContext.request.contextPath}/myroom/codibook/${userNo}?submenu=codibook");
						},
	
						error : function(XHR, status, error) {
							//window.location.replace("${pageContext.request.contextPath}/myroom/codi");
							console.log("실패");
						}
					});
				}
			});
		}
	});
</script>
</html>