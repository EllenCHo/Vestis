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

.codiSetBox {
  border: 1px solid #949494;
  width: 31.5%;
  height: 310px;
  padding: 0px;
}

.codiTitle {
  position: relative;
  top: -10px;
  left: -4px;
  font-size:14px;
}

.codiImgSize{
	width: 163px;
}

.codiProfileImg{
	width: 40px !important;
	height: 40px !important;
	margin: 5px 0px 0px 5px !important;
}

.codiName{
	margin: 15px 0px 0px 0px !important;
	text-align: left;
	width: auto !important;
	font-size: 14px;
}

.codiHit{
	margin: 15px 0px 0px 0px !important;
	text-align: left;
	width: auto !important;
	font-size: 17px;
}

.marketBox {
  border: 1px solid #949494;
  width: 31.5%;
  height: 250px;
  padding: 0px;
}


.marketItem {
  border: 1px solid #949494;
  width: 186px;
  height: 210px;
  padding: 0px;
  margin: 0px 0px 16px 10px !important;
}

.marketImgBox{
  width: 186px !important;
  height: 159px !important;
  margin: 2px;
}


.marketImg {
  height: 100% !important;
}

.marketText{
  font-size: 12px;
  text-align: left;
  margin: 5px;
}

point

.userListBox{
  padding:15px !important;
}

.userTitle{
  margin: 0px 0px 5px 0px;
  font-size:14px;
}

.userItemBox-left{
  width:50%;
  border-left:1px solid #949494; 
  border-top:1px solid #949494;
  border-right:1px solid #949494;
  float:left; 
}

.userItemBox-right{
  width:50%; 
  border-top:1px solid #949494;
  border-right:1px solid #949494;
  float:left; 
}

.userItemBox-bottom-left{
  width:50%;
  border-left:1px solid #949494; 
  border-top:1px solid #949494;
  border-right:1px solid #949494;
  border-bottom:1px solid #949494;
  float:left; 
}

.userItemBox-bottom-right{
  width:50%; 
  border-top:1px solid #949494;
  border-right:1px solid #949494;
  border-bottom:1px solid #949494;
  float:left; 
}

.numberBox {
	width: 20px; 
	height: 100%; 
	float: left;
	text-align: center;
	vertical-align: middle;
	color: #FFFFFF;
}

.bg_blue {
	background-color: #0100bb;
}

.bg_purple {
	background-color: #75016a;
}

.userProfileImg {
	width: 40px !important;
	height: 40px !important;
	margin: 3px 0px 2px 5px !important;
}

.userName {
	margin: 15px 0px 0px 0px !important;
	text-align: left;
	width: auto !important;
	font-size: 14px;
}


.noticeText {
	font-size: 14px;
}

.dottedBorder-top{
	border-top: 1px dotted #949494;
}

.dottedBorder-top-bottom{
	border-bottom: 1px dotted #949494;
}



</style>

</head>
<body>
    

<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

<!-- -------------------------------------------------------------------- -->

<div class="container">
    
    <!-- 상단배너 -->
	<div class="bg-faded p-2 my-4" style="border:1px solid #949494;">
	    
	    <!-- Image Carousel -->
	    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	    	
	    	<!-- 상단배너 아래쪽 버튼 -->
	    	<ol class="carousel-indicators">
	        	<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active pointer"></li>
	        	<li data-target="#carouselExampleIndicators" data-slide-to="1" class="pointer"></li>
	        	<li data-target="#carouselExampleIndicators" data-slide-to="2" class="pointer"></li>  
	      	</ol>
	      	
	      	<div class="carousel-inner" style="height:250px;" role="listbox">
	        	<!-- 이미지 슬라이드  1번 -->
	        	<div class="carousel-item active">
	          		<img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/slide-1.jpg" alt="1">
	          		<div class="carousel-caption d-none d-md-block">
	            		<h3 class="text-shadow">First Slide</h3>
	            		<p class="text-shadow">This is the caption for the first slide.</p>
	          		</div>
	        	</div>
	        
	        	<!-- 이미지 슬라이드  2번 -->
	        	<div class="carousel-item">
	          		<img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/slide-2.jpg" alt="2">
	          		<div class="carousel-caption d-none d-md-block">
	            		<h3 class="text-shadow">Second Slide</h3>
	            		<p class="text-shadow">This is the caption for the second slide.</p>
	          		</div>
	        	</div>
	        	
	        	<!-- 이미지 슬라이드  3번 -->
	        	<div class="carousel-item">
	          		<img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/slide-3.jpg" alt="3">
	          		<div class="carousel-caption d-none d-md-block">
	            		<h3 class="text-shadow">Third Slide</h3>
	            		<p class="text-shadow">This is the caption for the third slide.</p>
	          		</div>
	        	</div>
	      	</div>
	      
	        <!-- 슬라이드 이전버튼 -->
	      	<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
	        	<span class="carousel-control-prev-icon pointer" aria-hidden="true"></span>
	        	<span class="sr-only">Previous</span>
	      	</a>
	      	
	      	<!-- 슬라이드 다음버튼 -->
	      	<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
	        	<span class="carousel-control-next-icon pointer" aria-hidden="true"></span>
	        	<span class="sr-only">Next</span>
	      	</a>
	    </div>
	    <!-- /Image Carousel -->
	    
	    <!-- Welcome Message -->
	    <!-- 
	    <div class="text-center mt-4">
	      <h4 class="my-2">Business 사용설명서 Casual</h4>
	      <div class="text-heading text-muted text-lg">
	        <strong>Start 사용설명서 Bootstrap</strong>
	      </div>
	    </div> -->
			        
	</div>
    <!-- /상단배너 -->

 	
   	<!-- 코디셋 영역 -->
  	<div class="row">
  		<!-- 최신코디세트 -->
		<div class="h-pa bg-faded p-3 codiSetBox"> 
  			<div class="codiTitle"><strong>최신코디세트</strong></div>
			<div class="row">
				
				<!-- 1번째 -->
				<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:47%; height:255px; margin-left:8px; ">
					<ul class="list-unstyled list-border-dots" style="margin-bottom: 0;">
						<li><img src="${pageContext.request.contextPath}/upload/${redateList[0].codi}" class="codiImgSize" ></li>
					</ul>
					<div class="hh-line"></div>
					
					<div class="row">
						<span class="h-ic3 h-iec">
							<img class="h-image-circle codiProfileImg" src="${pageContext.request.contextPath}/upload/${redateList[0].profile}">
						</span>
						<span class="h-ic3 codiName"><b>${redateList[0].otherNicname}</b></span>
					
						<span class="text-primary" style="position:absolute; right:1%;">
							<div><img class="" style="width:30px; height:30px; margin-top:4px" data-codibookitemno="8" data-count="1" src="/Vestis/assets/img/heart-red.png"></div>
							<div class="likesCount" style="position: relative; top: -6px; color: black; font-size:14px; align: center">${redateList[0].likes}</div>
						</span>
					</div><!-- /row -->
				</div><!-- /1번째 -->
				
				<!-- 2번째 -->
				<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:47%; height:255px; margin-left:8px; ">
					<ul class="list-unstyled list-border-dots" style="margin-bottom: 0;">
						<li><img src="${pageContext.request.contextPath}/upload/${redateList[1].codi}" class="codiImgSize" ></li>
					</ul>
					<div class="hh-line"></div>
					
					<div class="row">
						<span class="h-ic3 h-iec">
							<img class="h-image-circle codiProfileImg" src="${pageContext.request.contextPath}/upload/${redateList[1].profile}">
						</span>
						<span class="h-ic3 codiName"><b>${redateList[1].otherNicname}</b></span>
					
						<span class="text-primary" style="position:absolute; right:1%;">
							<div><img class="" style="width:30px; height:30px; margin-top:4px" data-codibookitemno="8" data-count="1" src="/Vestis/assets/img/heart-red.png"></div>
							<div class="likesCount" style="position: relative; top: -6px; color: black; font-size:14px; align: center">${redateList[1].likes}</div>
						</span>
					</div><!-- /row -->
				</div><!-- /2번째 -->
			</div>
  		</div>
  	
  		<!-- 인기코디세트 -->
		<div class="h-pa bg-faded p-3 codiSetBox"> 
  			<div class="codiTitle"><strong>인기코디세트</strong></div>
			<div class="row">
				
				<!-- 1번째 -->
				<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:47%; height:255px; margin-left:8px; ">
					<ul class="list-unstyled list-border-dots" style="margin-bottom: 0;">
						<li><img src="${pageContext.request.contextPath}/upload/${hitList[0].codi}" class="codiImgSize" ></li>
					</ul>
					<div class="hh-line"></div>
					
					<div class="row">
						<span class="h-ic3 h-iec">
							<img class="h-image-circle codiProfileImg" src="${pageContext.request.contextPath}/upload/${hitList[0].profile}">
						</span>
						<span class="h-ic3 codiName"><b>${hitList[0].otherNicname}</b></span>
					
						<span class="text-primary" style="position:absolute; right:1%;">
							<div><img class="" style="width:30px; height:30px; margin-top:4px" data-codibookitemno="8" data-count="1" src="/Vestis/assets/img/heart-red.png"></div>
							<div class="likesCount" style="position: relative; top: -6px; color: black; font-size:14px; align: center">${hitList[0].likes}</div>
						</span>
					</div><!-- /row -->
				</div><!-- /1번째 -->
				
				<!-- 2번째 -->
				<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:47%; height:255px; margin-left:8px; ">
					<ul class="list-unstyled list-border-dots" style="margin-bottom: 0;">
						<li><img src="${pageContext.request.contextPath}/upload/${hitList[1].codi}" class="codiImgSize" ></li>
					</ul>
					<div class="hh-line"></div>
					
					<div class="row">
						<span class="h-ic3 h-iec">
							<img class="h-image-circle codiProfileImg" src="${pageContext.request.contextPath}/upload/${hitList[1].profile}">
						</span>
						<span class="h-ic3 codiName"><b>${hitList[1].otherNicname}</b></span>
					
						<span class="text-primary" style="position:absolute; right:1%;">
							<div><img class="" style="width:30px; height:30px; margin-top:4px" data-codibookitemno="8" data-count="1" src="/Vestis/assets/img/heart-red.png"></div>
							<div class="likesCount" style="position: relative; top: -6px; color: black; font-size:14px; align: center">${hitList[1].likes}</div>
						</span>
					</div><!-- /row -->
				</div><!-- /2번째 -->
			</div>
  		</div>
  		
  		<!-- 우연한코디세트 -->
		<div class="h-pa bg-faded p-3 codiSetBox"> 
  			<div class="codiTitle"><strong>우연한코디세트</strong></div>
			<div class="row">
				
				<!-- 1번째 -->
				<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:47%; height:255px; margin-left:8px; ">
					<ul class="list-unstyled list-border-dots" style="margin-bottom: 0;">
						<li><img src="${pageContext.request.contextPath}/upload/${randomList[0].codi}" class="codiImgSize" ></li>
					</ul>
					<div class="hh-line"></div>
					
					<div class="row">
						<span class="h-ic3 h-iec">
							<img class="h-image-circle codiProfileImg" src="${pageContext.request.contextPath}/upload/${randomList[0].profile}">
						</span>
						<span class="h-ic3 codiName"><b>${randomList[0].otherNicname}</b></span>
					
						<span class="text-primary" style="position:absolute; right:1%;">
							<div><img class="" style="width:30px; height:30px; margin-top:4px" data-codibookitemno="8" data-count="1" src="/Vestis/assets/img/heart-red.png"></div>
							<div class="likesCount" style="position: relative; top: -6px; color: black; font-size:14px; align: center">${randomList[0].likes}</div>
						</span>
					</div><!-- /row -->
				</div><!-- /1번째 -->
				
				<!-- 2번째 -->
				<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:47%; height:255px; margin-left:8px; ">
					<ul class="list-unstyled list-border-dots" style="margin-bottom: 0;">
						<li><img src="${pageContext.request.contextPath}/upload/${randomList[1].codi}" class="codiImgSize" ></li>
					</ul>
					<div class="hh-line"></div>
					
					<div class="row">
						<span class="h-ic3 h-iec">
							<img class="h-image-circle codiProfileImg" src="${pageContext.request.contextPath}/upload/${randomList[1].profile}">
						</span>
						<span class="h-ic3 codiName"><b>${randomList[1].otherNicname}</b></span>
					
						<span class="text-primary" style="position:absolute; right:1%;">
							<div><img class="" style="width:30px; height:30px; margin-top:4px" data-codibookitemno="8" data-count="1" src="/Vestis/assets/img/heart-red.png"></div>
							<div class="likesCount" style="position: relative; top: -6px; color: black; font-size:14px; align: center">${randomList[1].likes}</div>
						</span>
					</div><!-- /row -->
				</div><!-- /2번째 -->
			</div>
  		</div>
  	</div>
  
  
	<!--  중고장터 -->  
	<div class="row">
 		<!-- 마켓 -->
		<div class="h-pa bg-faded p-3" style="width:70.0%; height:500px; border:1px solid #949494; ">
  			<div class="codiTitle"><strong>중고마켓</strong></div>
  
			<div class="row">
				<div class="h-pa card bg-white bg-shadow text-center card-outline-primary outLine marketItem">
					<div class="marketImgBox">
						<img src="${pageContext.request.contextPath}/assets/img/markePro.png" class="hh-back marketImg" >
					</div>
					<div class="hh-line"></div>
					<div class="marketText">
						진짜 꼭 보네요. 안보면 후회 합니다.
					</div>
				</div>
			
				
				<div class="h-pa card bg-white bg-shadow text-center card-outline-primary outLine marketItem">
					<div class="marketImgBox">
						<img src="${pageContext.request.contextPath}/assets/img/markePro.png" class="hh-back marketImg" >
					</div>
					<div class="hh-line"></div>
					<div class="marketText">
						진짜 꼭 보네요. 안보면 후회 합니다.
					</div>
				</div>
				
				
				<div class="h-pa card bg-white bg-shadow text-center card-outline-primary outLine marketItem">
					<div class="marketImgBox">
						<img src="${pageContext.request.contextPath}/assets/img/markePro.png" class="hh-back marketImg" >
					</div>
					<div class="hh-line"></div>
					<div class="marketText">
						진짜 꼭 보네요. 안보면 후회 합니다.
					</div>
				</div>
				
				<div class="h-pa card bg-white bg-shadow text-center card-outline-primary outLine marketItem">
					<div class="marketImgBox">
						<img src="${pageContext.request.contextPath}/assets/img/markePro.png" class="hh-back marketImg" >
					</div>
					<div class="hh-line"></div>
					<div class="marketText">
						진짜 꼭 보네요. 안보면 후회 합니다.
					</div>
				</div>
				
				<div class="h-pa card bg-white bg-shadow text-center card-outline-primary outLine marketItem">
					<div class="marketImgBox">
						<img src="${pageContext.request.contextPath}/assets/img/markePro.png" class="hh-back marketImg" >
					</div>
					<div class="hh-line"></div>
					<div class="marketText">
						진짜 꼭 보네요. 안보면 후회 합니다.
					</div>
				</div>
			
				
				<div class="h-pa card bg-white bg-shadow text-center card-outline-primary outLine marketItem">
					<div class="marketImgBox">
						<img src="${pageContext.request.contextPath}/assets/img/markePro.png" class="hh-back marketImg" >
					</div>
					<div class="hh-line"></div>
					<div class="marketText">
						진짜 꼭 보네요. 안보면 후회 합니다.
					</div>
				</div>
				
				<div class="h-pa card bg-white bg-shadow text-center card-outline-primary outLine marketItem">
					<div class="marketImgBox">
						<img src="${pageContext.request.contextPath}/assets/img/markePro.png" class="hh-back marketImg" >
					</div>
					<div class="hh-line"></div>
					<div class="marketText">
						진짜 꼭 보네요. 안보면 후회 합니다.
					</div>
				</div>
				
				<div class="h-pa card bg-white bg-shadow text-center card-outline-primary outLine marketItem">
					<div class="marketImgBox">
						<img src="${pageContext.request.contextPath}/assets/img/markePro.png" class="hh-back marketImg" >
					</div>
					<div class="hh-line"></div>
					<div class="marketText">
						진짜 꼭 보네요. 안보면 후회 합니다.
					</div>
				</div>
			</div>
			
		</div>
		<!-- /마켓 -->
		
		<!-- 하단오른쪽 -->
		<div style="width:25.9%;">
	
			<div class="userListBox h-pa" style="width:100%; height:182px; border:1px solid #949494; padding:7px;">
				<div class="userTitle"><strong>옷많은사람</strong>
				</div>
				
				<div class="userItemBox-left" >
					<span class="numberBox bg_blue">
						<b>1</b>
					</span>
					<span class="">
						<img class="h-image-circle userProfileImg" src="${pageContext.request.contextPath}/upload/img/${clothRankList[0].profileDBName}">
					</span>
					<span class="userName"><b>${clothRankList[0].nicname}</b></span>
					
				</div>
					
				<div class="userItemBox-right" >
					<span class="numberBox bg_blue">
						<b>2</b>
					</span>
					<span class="">
						<img class="h-image-circle userProfileImg" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="userName"><b>베라님</b></span>
				</div>
					
				<div class="userItemBox-left" >
					<span class="numberBox bg_blue">
						<b>3</b>
					</span>
					<span class="">
						<img class="h-image-circle userProfileImg" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="userName"><b>베라님</b></span>
				</div>
					
				<div class="userItemBox-right" >
					<span class="numberBox bg_blue">
						<b>4</b>
					</span>
					<span class="">
						<img class="h-image-circle userProfileImg" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="userName"><b>베라님</b></span>
				</div>
					
				<div class="userItemBox-bottom-left" >
					<span class="numberBox bg_blue">
						<b>5</b>
					</span>
					<span class="">
						<img class="h-image-circle userProfileImg" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="userName"><b>베라님</b></span>
				</div>
					
				<div class="userItemBox-bottom-right" >
					<span class="numberBox bg_blue">
						<b>6</b>
					</span>
					<span class="">
						<img class="h-image-circle userProfileImg" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="userName"><b>베라님</b></span>
				</div>
			</div>
		
		
			<div class="h-pa userListBox" style="width:100%; height:182px; border:1px solid #949494; padding:7px;">
				<div class="userTitle"><strong>새로운얼굴</strong>
				</div>
				
				<div class="userItemBox-left" >
					<span class="numberBox bg_purple">
						<b>1</b>
					</span>
					<span class="">
						<img class="h-image-circle userProfileImg" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="userName"><b>베라님</b></span>
					
				</div>
					
				<div class="userItemBox-right" >
					<span class="numberBox bg_purple">
						<b>2</b>
					</span>
					<span class="">
						<img class="h-image-circle userProfileImg" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="userName"><b>베라님</b></span>
				</div>
					
				<div class="userItemBox-left" >
					<span class="numberBox bg_purple">
						<b>3</b>
					</span>
					<span class="">
						<img class="h-image-circle userProfileImg" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="userName"><b>베라님</b></span>
				</div>
					
				<div class="userItemBox-right" >
					<span class="numberBox bg_purple">
						<b>4</b>
					</span>
					<span class="">
						<img class="h-image-circle userProfileImg" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="userName"><b>베라님</b></span>
				</div>
					
				<div class="userItemBox-bottom-left" >
					<span class="numberBox bg_purple">
						<b>5</b>
					</span>
					<span class="">
						<img class="h-image-circle userProfileImg" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="userName"><b>베라님</b></span>
				</div>
					
				<div class="userItemBox-bottom-right" >
					<span class="numberBox bg_purple">
						<b>6</b>
					</span>
					<span class="">
						<img class="h-image-circle userProfileImg" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="userName"><b>베라님</b></span>
				</div>
			</div>
			
			
			<div class="h-pa userListBox" style="width:100%; height:105px; border:1px solid #949494; padding:7px;">
				<div class="userTitle"><strong>공지사항</strong>
				</div>
				
				<div class="noticeText dottedBorder-top" >
					공지사항 입니다 공지사항
				</div>
					
				<div class="noticeText dottedBorder-top" >
					공지사항 입니다 공지사항
				</div>
				
				<div class="noticeText dottedBorder-top" >
					공지사항 입니다 공지사항
				</div>
				
				
			</div>
		
		</div>
		
		
	</div><!-- /row -->	

</div><!-- container -->
  


<!-- -------------------------------------------------------------------- -->
     <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	
	
	
	
  </body>

</html>
