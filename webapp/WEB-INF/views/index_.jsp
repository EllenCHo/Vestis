<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Vestis</title>

    <!-- Custom fonts for this template -->
    <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css"> -->

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/css/business-casual.css" rel="stylesheet">


	<!-- Theme style -->
	<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/theme-style.min.css" rel="stylesheet">
	
	
  </head>
  <body>
    
    
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

<!-- -------------------------------------------------------------------- -->

    <div class="container">
    
      <div class="bg-faded p-2 my-4" style="border:1px solid #949494;">
        <!-- Image Carousel -->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>  
          </ol>
          <div class="carousel-inner" style="height:250px;" role="listbox">
            <!-- 이미지 슬라이드  -->
            <div class="carousel-item active">
              <img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/slide-1.jpg" alt="1">
              <div class="carousel-caption d-none d-md-block">
                <h3 class="text-shadow">First Slide</h3>
                <p class="text-shadow">This is the caption for the first slide.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/slide-2.jpg" alt="2">
              <div class="carousel-caption d-none d-md-block">
                <h3 class="text-shadow">Second Slide</h3>
                <p class="text-shadow">This is the caption for the second slide.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/slide-3.jpg" alt="3">
              <div class="carousel-caption d-none d-md-block">
                <h3 class="text-shadow">Third Slide</h3>
                <p class="text-shadow">This is the caption for the third slide.</p>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        <!-- Welcome Message -->
        <div class="text-center mt-4">
          <h4 class="my-2">Business 사용설명서 Casual</h4>
          <div class="text-heading text-muted text-lg">
            <strong>Start 사용설명서 Bootstrap</strong>
          </div>
        </div>
      </div>
      
      <div class="row bg-faded h-paddingtb" style="margin-right: 0px; margin-left: 0px; border:1px solid #949494;">
 <!-- 지역별 날씨에 맞는 코디세트 -->     
     <div class="col-md-8">
      <div class="row">
       <h5 class="col-md-4" style="text-align: center;">서울 날씨 코디 </h5>
       <h5 class="col-md-4" style="text-align: center;">춘천 날씨 코디 </h5>
       <h5 class="col-md-4" style="text-align: center;">강릉 날씨 코디 </h5>
      </div>
      
      <div class="row"  >
      	 <!-- 카드샘플 -->
		<div class="col-md-4">
			<div class="card bg-white bg-shadow text-center card-outline-primary outLine">
				<div class="row tb4">
					<span class="h-ic h-iec h-fs"><a href="">지수님 옷</a></span>
					<span class="h-ic2"></span>
					<span class="h-icr">
						<button type="button" class="h-btn btn-outline-green" >Choice</button>
						<button type="button" class="h-btn btn-outline-green">X</button>
					</span>
				</div>
				
			<p class="hh-line "></p>
				<div>
				<ul class="list-unstyled list-border-dots">
					<li><img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" ></li>
				</ul>
				</div>
			<a class="hh-line "></a>
			
				<div class="row">
					<span class="h-ic3 h-iec">
						<img class="h-image-circle" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="h-ic3" style="margin-top:20px;">
						<a href="">베라님</a>
					</span>
					<span class=" text-primary" style="margin-top:20px; float:left; width: 15%;" >
						<img style="width:25px; height:25px;" src="${pageContext.request.contextPath}/assets/img/heart.png" onmouseover="this.src='${pageContext.request.contextPath}/assets/img/heart-skin.png'" onmouseout="this.src='${pageContext.request.contextPath}/assets/img/heart.png'" border="0">
					</span>
					<span class=" text-primary" style="margin-top:17px; float:right; width: 8%; font-size:20px; font-weight:bold;">3</span>
				</div><!-- /row -->
			</div>
		</div><!-- /col-md-3 -->
		 <!-- 카드샘플 -->
		<div class="col-md-4">
			<div class="card bg-white bg-shadow text-center card-outline-primary outLine">
				<div class="row tb4">
					<span class="h-ic h-iec h-fs"><a href="">지수님 옷</a></span>
					<span class="h-ic2"></span>
					<span class="h-icr">
						<button type="button" class="h-btn btn-outline-green" >Choice</button>
						<button type="button" class="h-btn btn-outline-green">X</button>
					</span>
				</div>
				
			<p class="hh-line "></p>
				<div>
				<ul class="list-unstyled list-border-dots">
					<li><img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" ></li>
				</ul>
				</div>
			<a class="hh-line "></a>
			
				<div class="row">
					<span class="h-ic3 h-iec">
						<img class="h-image-circle" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="h-ic3" style="margin-top:20px;">
						<a href="">베라님</a>
					</span>
					<span class=" text-primary" style="margin-top:20px; float:left; width: 15%;" >
						<img style="width:25px; height:25px;" src="${pageContext.request.contextPath}/assets/img/heart.png" onmouseover="this.src='${pageContext.request.contextPath}/assets/img/heart-skin.png'" onmouseout="this.src='${pageContext.request.contextPath}/assets/img/heart.png'" border="0">
					</span>
					<span class=" text-primary" style="margin-top:17px; float:right; width: 8%; font-size:20px; font-weight:bold;">3</span>
				</div><!-- /row -->
			</div>
		</div><!-- /col-md-3 -->
		 <!-- 카드샘플 -->
		<div class="col-md-4">
			<div class="card bg-white bg-shadow text-center card-outline-primary outLine">
				<div class="row tb4">
					<span class="h-ic h-iec h-fs"><a href="">지수님 옷</a></span>
					<span class="h-ic2"></span>
					<span class="h-icr">
						<button type="button" class="h-btn btn-outline-green" >Choice</button>
						<button type="button" class="h-btn btn-outline-green">X</button>
					</span>
				</div>
				
			<p class="hh-line "></p>
				<div>
				<ul class="list-unstyled list-border-dots">
					<li><img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" ></li>
				</ul>
				</div>
			<a class="hh-line "></a>
			
				<div class="row">
					<span class="h-ic3 h-iec">
						<img class="h-image-circle" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="h-ic3" style="margin-top:20px;">
						<a href="">베라님</a>
					</span>
					<span class=" text-primary" style="margin-top:20px; float:left; width: 15%;" >
						<img style="width:25px; height:25px;" src="${pageContext.request.contextPath}/assets/img/heart.png" onmouseover="this.src='${pageContext.request.contextPath}/assets/img/heart-skin.png'" onmouseout="this.src='${pageContext.request.contextPath}/assets/img/heart.png'" border="0">
					</span>
					<span class=" text-primary" style="margin-top:17px; float:right; width: 8%; font-size:20px; font-weight:bold;">3</span>
				</div><!-- /row -->
			</div>
		</div><!-- /col-md-3 -->
	</div>
		<div class="row">
       <h5 class="col-md-4" style="text-align: center;">대전 날씨 코디 </h5>
       <h5 class="col-md-4" style="text-align: center;">청주 날씨 코디</h5>
       <h5 class="col-md-4" style="text-align: center;">대구 날씨 코디</h5>
      </div>
      <div class="row">
		 <!-- 카드샘플 -->
		<div class="col-md-4">
			<div class="card bg-white bg-shadow text-center card-outline-primary outLine">
				<div class="row tb4">
					<span class="h-ic h-iec h-fs"><a href="">지수님 옷</a></span>
					<span class="h-ic2"></span>
					<span class="h-icr">
						<button type="button" class="h-btn btn-outline-green" >Choice</button>
						<button type="button" class="h-btn btn-outline-green">X</button>
					</span>
				</div>
				
			<p class="hh-line "></p>
				<div>
				<ul class="list-unstyled list-border-dots">
					<li><img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" ></li>
				</ul>
				</div>
			<a class="hh-line "></a>
			
				<div class="row">
					<span class="h-ic3 h-iec">
						<img class="h-image-circle" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="h-ic3" style="margin-top:20px;">
						<a href="">베라님</a>
					</span>
					<span class=" text-primary" style="margin-top:20px; float:left; width: 15%;" >
						<img style="width:25px; height:25px;" src="${pageContext.request.contextPath}/assets/img/heart.png" onmouseover="this.src='${pageContext.request.contextPath}/assets/img/heart-skin.png'" onmouseout="this.src='${pageContext.request.contextPath}/assets/img/heart.png'" border="0">
					</span>
					<span class=" text-primary" style="margin-top:17px; float:right; width: 8%; font-size:20px; font-weight:bold;">3</span>
				</div><!-- /row -->
			</div>
		</div><!-- /col-md-3 -->
      </div>
      </div>
 <!-- /------지역별 날씨에 맞는 코디세트---- -->  
 
 
 
 <div class="col-md-4 " >
	<img style="width:100%; height:450px; border:1px solid #949494;" src="${pageContext.request.contextPath}/assets/img/weather.JPG">
	<!-- 사람프로필 리스트 1-->
	<div class=" sidebar-right tb2" style="margin-top:100px;">
		<div class="mb-4">
              <ul class="nav nav-tabs">
                <li class="nav-item active"><a  class="nav-link " style="padding-right:0.2rem; padding-left:0.2rem;">옷 많은 순위</a></li>
              </ul>
              
              <div class="tab-content tab-content-bordered">
               
                <!-- Popular tab content -->
                <div class="tab-pane fade active show blog-roll-mini" >
                 
                 <c:forEach items="${clist }" var="vo">
                  <!-- 옷많은 순위 프로필리스트 -->
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
	
	
	<!-- 사람프로필 리스트 2-->
	<div class=" sidebar-right tb2">
		<div class="mb-4">
              <ul class="nav nav-tabs">
                <li class="nav-item active"><a  class="nav-link" style="padding-right:0.2rem; padding-left:0.2rem;">최근 가입 순위</a></li>
              </ul>
              <div class="tab-content tab-content-bordered">
                
                <!-- Popular tab content -->
                <div class="tab-pane fade active show blog-roll-mini" id="popular">
                  
                  <c:forEach items="${list }" var="vo">
                  <!-- 최근가입한 사람 순위 프로필리스트 -->
                  <div class="row blog-post">
                      <div class="blog-media">
                        <a>
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
	
	</div><!-- /col-md-2 -->
</div>
 
 </div>
 
  
 
     <%--  <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">Build a website
          <strong>worth visitng</strong>
        </h2>
        <hr class="divider">
        <img class="img-fluid float-left mr-4 d-none d-lg-block" src="${pageContext.request.contextPath}/assets/img/intro-pic.jpg" alt="">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam soluta dolore voluptatem, deleniti dignissimos excepturi veritatis cum hic sunt perferendis ipsum perspiciatis nam officiis sequi atque enim ut! Velit, consectetur.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam pariatur perspiciatis reprehenderit illo et vitae iste provident debitis quos corporis saepe deserunt ad, officia, minima natus molestias assumenda nisi velit?</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit totam libero expedita magni est delectus pariatur aut, aperiam eveniet velit cum possimus, autem voluptas. Eum qui ut quasi voluptate blanditiis?</p>
      </div> --%>

      <div class="bg-faded p-4 my-4" style="border:1px solid #949494;">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">Beautiful boxes to
          <strong>showcase your content</strong>
        </h2>
        <hr class="divider">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam soluta dolore voluptatem, deleniti dignissimos excepturi veritatis cum hic sunt perferendis ipsum perspiciatis nam officiis sequi atque enim ut! Velit, consectetur.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam pariatur perspiciatis reprehenderit illo et vitae iste provident debitis quos corporis saepe deserunt ad, officia, minima natus molestias assumenda nisi velit?</p>
      </div>

    </div>
    <!-- /.container -->



<!-- -------------------------------------------------------------------- -->
     <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	
	
	
	
  </body>

</html>
