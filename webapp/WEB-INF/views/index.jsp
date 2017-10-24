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
<!--  ------------------------------------------------------------------------------------------------------------------------ -->
 
  <div class="row">
 <!-- 최신 -->
  	<div class="h-pa bg-faded p-3" style="border:1px solid #949494; width:31.5%; ">
      <hr class="divider">
      <h2 class="text-center text-lg text-uppercase my-0">Beautiful boxes to
        <strong>showcase your content</strong>
      </h2>
      <hr class="divider">
       <div class="row">
			<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:45%; margin-left:18px;">
				<ul class="list-unstyled list-border-dots" style="margin-bottom: 0;">
					<li><img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" ></li>
				</ul>
			<a class="hh-line "></a>
				<div class="row">
					<span class="h-ic3 h-iec">
						<img class="h-image-circle" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="h-ic3" style="margin-top:20px;">
						<a href="">베라님</a>
					</span>
				</div><!-- /row -->
			</div>
			<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:45%; margin-left:3px;">
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
				</div><!-- /row -->
			</div>
		</div>
    </div>
 <!-- 인기 -->   
   <div class="h-pa bg-faded p-3" style="border:1px solid #949494; width:31.5%; ">
      <hr class="divider">
      <h2 class="text-center text-lg text-uppercase my-0">Beautiful boxes to
        <strong>showcase your content</strong>
      </h2>
      <hr class="divider">
       <div class="row">
			<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:45%; margin-left:18px;">
				<ul class="list-unstyled list-border-dots" style="margin-bottom: 0;">
					<li><img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" ></li>
				</ul>
			<a class="hh-line "></a>
				<div class="row">
					<span class="h-ic3 h-iec">
						<img class="h-image-circle" src="${pageContext.request.contextPath}/assets/img/f.jpg">
					</span>
					<span class="h-ic3" style="margin-top:20px;">
						<a href="">베라님</a>
					</span>
				</div><!-- /row -->
			</div>
			<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:45%; margin-left:3px;">
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
				</div><!-- /row -->
			</div>
		</div>
    </div>
  <!-- 최신 -->
  	<div class="h-pa bg-faded p-3 " style="border:1px solid #949494; width:31.5%;">
      <hr class="divider">
      <h2 class="text-center text-lg text-uppercase my-0">Beautiful boxes to
        <strong>showcase your content</strong>
      </h2>
      <hr class="divider">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam soluta dolore voluptatem, deleniti dignissimos excepturi veritatis cum hic sunt perferendis ipsum perspiciatis nam officiis sequi atque enim ut! Velit, consectetur.</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam pariatur perspiciatis reprehenderit illo et vitae iste provident debitis quos corporis saepe deserunt ad, officia, minima natus molestias assumenda nisi velit?</p>
    </div>        
   </div> 
  
 <!-- /------지역별 날씨에 맞는 코디세트---- -->  
 <div class="row">
 <!-- 마켓 -->
<div class="h-pa bg-faded p-3" style="width:64.3%; border:1px solid #949494;">
  <hr class="divider">
  <h2 class="text-center text-lg text-uppercase my-0">Take a look at
    <strong>the market</strong>
  </h2>
  <hr class="divider">
	<div class="row">
		<div class="h-pa card bg-white bg-shadow text-center card-outline-primary outLine" style="width:22%;">
				<img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" >
		</div>
	
		<div class="h-pa card bg-white bg-shadow text-center card-outline-primary outLine" style="width:22%;">
				<img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" >
		</div>
		
		<div class="h-pa card bg-white bg-shadow text-center card-outline-primary outLine" style="width:22%;">
				<img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" >
		</div>
		
		<div class="h-pa card bg-white bg-shadow text-center card-outline-primary outLine" style="width:22%;">
				<img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" >
		</div>
	</div>
</div>
<%-- <div  style="width:30.3%; height:400px; border:1px solid #949494;" >
	<div class="row">
		<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:45%; height:180px; margin-left:15px;">
				<img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" >
		</div>

		<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:45%; height:180px;">
				<img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" >
		</div>
		
		<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:45%; height:180px;">
				<img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" >
		</div>
		
		<div class="card bg-white bg-shadow text-center card-outline-primary outLine" style="width:45%; height:180px;">
				<img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" >
		</div>
	</div>
</div> --%><!-- /마켓 -->

<div class="h-pa p-3" style="width:15.1%;  border:1px solid #949494; ">
	<hr class="divider">
      <h2 class="text-center text-lg text-uppercase my-0">옷 부자</h2>
      <hr class="divider">
<h4 class="h-pa">1</h4>
<h4 class="h-pa">1</h4>
<h4 class="h-pa">1</h4>
<h4 class="h-pa">1</h4>
<h4 class="h-pa">1</h4>
<h4 class="h-pa">1</h4>
</div>




<div class="h-pa" style="width:15.1%; height:250px; border:1px solid #949494; ">
<h3>옷 부자</h3>
<br>
<h5>1</h5>
<h5>2</h5>
<h5>3</h5>
<h5>4</h5>
<h5>5</h5>
<h5>6</h5>
</div>

</div><!-- /row -->

</div>
  


<!-- -------------------------------------------------------------------- -->
     <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	
	
	
	
  </body>

</html>
