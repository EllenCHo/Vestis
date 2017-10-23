<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>clothes</title>


<!--자신이 만든 css-->
<!--<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/codi_bootstrap.css" rel="stylesheet"	>-->

<!-- Theme style -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/theme-style.min.css" rel="stylesheet">


<style>
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



.choiceBtn {
  color: #ffffff;
  background-color: #ababab;
  background-image: none;
  border-color: #ababab;
}


.choicEDBtn {
  color: #fff;
  background-color: #55A79A;
  background-image: none;
  border-color: #55A79A;
}


.deleteCodiBtn {
  color: red;
  background-color: none;
  background-image: none;
  border-color: #ababab;
}

.itemlist {
	margin-bottom: 50px;

}


</style>


</head>

<body>

	
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	
<div class="myroomimg">
	<div class="container">
	<h3>codi gallery</h3>
	</div>
</div>

<!-- -------------------------------------------------------------------------------  -->

<div class="container">
	<div style="margin:0px 0px 50px 0px;"><!-- 상단공백 --></div>
	
	
	<div class="row">
		
		<!-- 왼쪽영역 -->
		<div class="col-md-10">
		
			<!-- 최신순 -->
			<div class="itemlist">	
				<!-- 최신순 타이틀 -->
				<div class="title">
					<span style="color:#292b2c">최신코드세트</span>
		  		</div>
		  		
		  		<!-- 최신순 카드 -->
		  		<div class="row" id="regDateItem">
		  		
			  		
		  		</div>
	  		</div>
	  
	  
			<!-- 인기순 -->
			<div class="itemlist">	
				<!-- 인기순 타이틀 -->
				<div class="title">
					<span style="color:#292b2c">인기코드세트</span>
		  		</div>
		  		
		  		<!-- 인기순 카드 -->
		  		<div class="row" id="hitItem">
		  		
			  		
		  		</div>
	  		</div>
		
		
			<!-- 랜덤 -->
			<div class="itemlist">	
				<!-- 랜덤순 타이틀 -->
				<div class="title">
					<span style="color:#292b2c">우연한만남</span>
		  		</div>
		  		
		  		<!-- 랜덤순 카드 -->
		  		<div class="row" id="randomItem">
		  		
			  		
		  		</div>
	  		</div>
	  		
	  		
		</div><!-- /col-md-10 -->
		
		<!-- 오른쪽 영역 -->
		<div class="col-md-2 ">
			
			
			<!-- 옷부자 -->
			<div class=" " >
				<div class="mb-4">
              		<ul class="nav nav-tabs">
                		<li class="nav-item active"><a  class="nav-link " style="padding-right:0.2rem; padding-left:0.2rem;">옷 많은 순위</a></li>
              		</ul>
              
              		<div class="tab-content tab-content-bordered">
               
                		<!-- Popular tab content -->
                		<div class="tab-pane fade active show blog-roll-mini" >
                			
                			<!-- 옷많은 순위 프로필리스트 -->
                 			<c:forEach items="${list }" var="vo">
                  			
                  				<div class="row blog-post">
                      				<div class="blog-media">
                        				<a href="">
                          					<img class="h-image-circle" style="margin-left:10px;" src="${pageContext.request.contextPath}/upload/${vo.savename }">
                       					 </a>
                      				</div>
                      				<div style="margin-top:18px; margin-left:10px;">
	                     				<h5>
	                       					<a href="${pageContext.request.contextPath}/myroom/codibook/${vo.no }">${vo.nicname }</a>   
	                     				</h5>
                 	  				</div>
                 				 </div>
      						</c:forEach>
                  
                		</div> 
             	 	</div>
            	</div>
			</div>
			<!-- /옷부자 -->
			
			<!-- 최근가입자 -->
			<div class=" " >
				<div class="mb-4">
              		<ul class="nav nav-tabs">
                		<li class="nav-item active"><a  class="nav-link " style="padding-right:0.2rem; padding-left:0.2rem;">최근 가입자</a></li>
              		</ul>
              
              		<div class="tab-content tab-content-bordered">
               
                		<!-- Popular tab content -->
                		<div class="tab-pane fade active show blog-roll-mini" >
                			
                			<!-- 옷많은 순위 프로필리스트 -->
                 			<c:forEach items="${list }" var="vo">
                  			
                  				<div class="row blog-post">
                      				<div class="blog-media">
                        				<a href="">
                          					<img class="h-image-circle" style="margin-left:10px;" src="${pageContext.request.contextPath}/upload/${vo.savename }">
                       					 </a>
                      				</div>
                      				<div style="margin-top:18px; margin-left:10px;">
	                     				<h5>
	                       					<a href="${pageContext.request.contextPath}/myroom/codibook/${vo.no }">${vo.nicname }</a>   
	                     				</h5>
                 	  				</div>
                 				 </div>
      						</c:forEach>
                  
                		</div> 
             	 	</div>
            	</div>
			</div>
			<!-- /최근가입자 -->
			
		</div><!-- /col-md-2 -->
		

	
	</div><!-- row -->
</div><!-- /container -->
	
	
	
	
	
	
<!-- -----------------------------------------------------------------------------------------------------------------------------  -->

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>

<!-- 코디북 리스트 뿌리기 -->
<script type="text/javascript">
$(document).ready(function() {
 	es_fetchBookRegDate("all", "regDate");
	es_fetchBookRegDate("all", "hit");  
	es_fetchBookRegDate("all", "random");
	console.log("ready!");
});


/* 카드가져오기 */
function es_fetchBookRegDate(purpose, typeNo) {
	var authNo = "${authUser.no}";
	if(authNo == null){
		authNo = "0";
	}
	
	var num = authNo;	//아무런 영향이 없음
	
	
	
	var url =""
	
	if(typeNo=="regDate"){
		url = "${pageContext.request.contextPath }/cogell/codibookList";
		console.log("regDate");
	}else if(typeNo=="hit"){
		url = "${pageContext.request.contextPath }/cogell/codibookList2";
		console.log("hit");
	}else if(typeNo=="random"){
		url = "${pageContext.request.contextPath }/cogell/codibookList3";
		console.log("random");
	}
	
	
	$.ajax({
		url : url,
		dataType : "json",
		type : "post",
		data : {"purpose":purpose, "num":num, "no":authNo},
		
		success : function(codibookList) {
			console.log("성공");
			console.log(codibookList.length);
			for (var i = 0; i < codibookList.length; i++) {
				
				var str = es_renderRegDate(codibookList[i]);
				
				if(typeNo=="regDate"){
					$("#regDateItem").append(str);
					console.log("regDateItem");
				}else if(typeNo=="hit"){
					$("#hitItem").append(str);
					console.log("hitItem");
				}else if(typeNo=="random"){
					$("#randomItem").append(str);
					console.log("randomItem");
				}
				
			}
		
			$('.likebtn').click(function() {
				console.log("종아요 버튼");
				
				var $this = $(this);

				if ($this.hasClass('likebtn')){
					
					var no = $this.data('codibookitemno');
					var c = $this.data('count');
					
					likebtnClick(no, authNo);
					
					c++;
					$this.data('count', c);
					$this.parent().siblings('.likesCount').text(c);
					
					$this.attr('src', '/Vestis/assets/img/heart-red.png');
					
					$this.removeClass("likebtn");
				} 
			});

			$('.choiceBtn').click(function() {
				console.log("선택 버튼");
				var $this = $(this);
				var no = $this.data("codibookitemno");
				if ($this.hasClass('choiceBtn')){
					choosebtnClick(no);
					$($this).addClass("choicEDBtn");
					$this.removeClass("choiceBtn");
				}

			});

			$('.deleteCodiBtn').click(function() {
				console.log("삭제 버튼");
				var $this = $(this);
				var no = $this.data("codibookitemno");
				deletebtnClick(no);
				$("#codibookItem"+no).remove();
			});
			
		},
		error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
			console.error(status + " : " + error);
		}
	});
}	


/* 채택함수 */
function choosebtnClick(no) {
	$.ajax({
		url : "${pageContext.request.contextPath }/myroom/chooseClick",
		type : "post",
		dataType : "json",
		data : {"no":no},
		success :function() {
			console.log("채택 성공");
		},
		error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
			console.error(status + " : " + error);
		}
	});
}

/* 좋아요함수 */
function likebtnClick(voNo, authNo) {
	console.log(voNo+authNo);
	$.ajax({
		url : "${pageContext.request.contextPath }/myroom/likeClick",
		type : "post",
		dataType : "json",
		data : {"voNo":voNo, "authNo":authNo},
		success :function() {
			console.log("좋아요 성공");
		},
		error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
			console.error(status + " : " + error);
		}
	});
}

/* 삭제함수 */
function deletebtnClick(no) {
	$.ajax({
		url : "${pageContext.request.contextPath }/myroom/deleteBtnClick",
		type : "post",
		dataType : "json",
		data : {"no":no},
		success :function() {
			console.log("삭제 성공");
		},
		error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
			console.error(status + " : " + error);
		}
	});
}



	
/* 카드랜더링 */
function es_renderRegDate(CodibookVo) {
	var authNo = "${authUser.no}";
	var userNo =authNo;
	
	
	console.log(CodibookVo);
	
	var str = "";
	str += "<div class='col-md-3' id='codibookItem" + CodibookVo.no + "'>";
	str += "	<div class='card bg-white bg-shadow text-center card-outline-primary'>";
	str += "		<div class='row tb4'>";
	str += "			<span class='h-ic h-iec h-fs' style='margin-left:5px'><a href=''>"+ CodibookVo.ownername + "님 옷</a></span>";
	str += "			<span class='h-ic2'></span>";
	str += "			<span class='h-icr'>";
	
	
	if (userNo == authNo) {
		if (CodibookVo.choose != 0) {
			str += "		<button type='button' class='choicEDBtn h-btn pointer' data-codibookitemno='"+ CodibookVo.no + "'>Choice</button>";
		}else {
			str += "		<button type='button' class='choiceBtn h-btn pointer' data-codibookitemno='"+ CodibookVo.no + "'>Choice</button>";
		} 	
	}
	
	
	/* str += "				<button type='button' class='deleteCodiBtn h-btn pointer' style='margin-right:10px' data-codibookitemno='"+ CodibookVo.no + "'><span style='font-color:red;'>X</span></button>"; */
	str += "			</span>";
	
	str += "		</div>";
	
	str += "		<p class='hh-line'></p>";
	str += "		<div>";
	str += "			<ul class='list-unstyled list-border-dots'>";
	str += "				<li><img src='http://localhost:8088/Vestis/upload/"+CodibookVo.codi+"' class='hh-back' ></li>";
	str += "			</ul>";
	str += "		</div>";
	str += "		<a class='hh-line'></a>";
	
	
	str += "		<div class='row'>";
	str += "			<span class='h-iec'>";
	str += "				<img style='margin: 6px 4px 0px 8px;' class='h-image-circle pointer' src='http://localhost:8088/Vestis/upload/"+CodibookVo.profile+"'>";
	str += "			</span>";
	str += "			<span class='h-ic3' style='margin-top:22px; text-align:left; font-size:13px' ><b class='pointer'>" + CodibookVo.otherNicname + "</b>님 </span>";
	str += "			<span class='text-primary' style='margin-left: 30px'>";
	
	
	if(CodibookVo.likeflag != 0){                                    
		str += "			<div><img class='' style='width:32px; height:32px; margin-top:8px' data-codibookitemno='"+CodibookVo.no+"' data-count='"+CodibookVo.likes+"' src='${pageContext.request.contextPath}/assets/img/heart-red.png'></div>";
	}else {
		str += "			<div><img class='likebtn pointer' style='width:32px; height:32px; margin-top:8px'data-codibookitemno='"+CodibookVo.no+"' data-count='"+CodibookVo.likes+"' src='${pageContext.request.contextPath}/assets/img/heart-gray.png'></div>";
	}
	
	str += "				<div class='likesCount' style='position: relative; top: -6px; color: black; font-size:14px; align: center'>"+ CodibookVo.likes +"</div>";
	str += "			</span>";
	str += "		</div>";
	
	str += "	</div>";
	str += "</div>";
	
	console.log("카드 랜더링");
	return str;
} 
	

	
	
</script>



</html>