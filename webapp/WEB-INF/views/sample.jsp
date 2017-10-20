코디북 내 샘플



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>codibook</title>


<!--자신이 만든 css-->
<!--<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/codi_bootstrap.css" rel="stylesheet"	>-->

<!-- Theme style -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/theme-style.min.css" rel="stylesheet">


</head>
<body>

	
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


<div class="myroomimg">
	<div class="container">
	<h3>codibook</h3>
	</div>
</div>

<div class="container" id="about">
	
	<div class="row">

		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>

<script type="text/javascript">	
	
/* $(document).ready(function(){
	
	$('#myTab a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	}) 
});
	 */
	
 	
</script>

<!-- ---------------------------------------------------------------------- -->



	<!--main content-->
	<div class="col-md-10">
  
  		<!-- 서브메뉴(탭) -->
		<ul class="nav nav-tabs flex-column flex-lg-row tb2" role="tablist">
			<li class="nav-item h-lr active"> <a class="nav-link" data-toggle="tab" href="#tab-1" role="tab" aria-expanded="true">Tab 1</a> </li>
			<li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#tab-2" role="tab" aria-expanded="false">Tab 2</a> </li>
			<li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#tab-3" role="tab" aria-expanded="false">Tab 3</a> </li>
			<li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#tab-4" role="tab" aria-expanded="false">Tab 4</a> </li>
		</ul>
		  
            
             <!-- <div class="tab-content py-3">
              <div class="tab-pane" id="tab-1" role="tabpanel" aria-expanded="false">
                <h4>
                  Tab 1 Content
                </h4>
              </div>
              <div class="tab-pane" id="tab-2" role="tabpanel" aria-expanded="true">
                <h4>
                  Tab 2 Content
                </h4>
              </div>
              <div class="tab-pane" id="tab-3" role="tabpanel" aria-expanded="false">
                <h4>
                  Tab 3 Content
                </h4>
              </div>
              <div class="tab-pane" id="tab-4" role="tabpanel" aria-expanded="false">
                <h4>
                  Tab 4 Content
                </h4>
              </div>
            </div> 
             -->
        
		<div class="row"> 
            
	            <!-- 카드하나 -->
	            <div class="col-md-3">
	              <div class="card bg-white bg-shadow text-center card-outline-primary">
	              	<div class="row tb4">
	              		<div class="h-ic h-iec" ><span class="h-fs">지수님 옷</span></div>
	                	<div class="h-ic" >
	                		<button type="button" class="h-btn btn-outline-green" style="margin-left:50px;">채택</button>
						</div>
	                	<div class="h-ic h-iec" >X</div>
	              	</div>
	                <p class="hh-line "></p>
	                <!-- <div class="card-body"> -->
	                <div >
	                  <ul class="list-unstyled list-border-dots">
	                    <li><img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" ></li>
	                  </ul>
	                  <!-- <a href="#" class="btn btn-primary btn-block btn-rounded mt-4">Sign Up</a> -->
	                </div>
	                 <a class="hh-line "></a>
	                 <div class="row">
	               		<div class="h-ic h-iec"><span>
	               			<img class="h-image-circle" src="${pageContext.request.contextPath}/assets/img/f.jpg">
	                	</span></div>
	                	<div class="h-ic" style="margin-top:20px;"><span>
	                		<a>베라님</a>
	                	</span></div>
	                	<div class="h-ic text-primary" style="margin-top:10px; margin-left: 20px;"><span style="font-size:25px;">
	                		<a>♥♡3</a>
						</span></div>
					
	                </div>
	              </div>
	              
	            </div>
	      
	   <!-- 카드하나 -->
	            <div class="col-md-3">
	              <div class="card bg-white bg-shadow text-center card-outline-primary">
	              	<div class="row tb4">
	              		<div class="h-ic h-iec" ><span class="h-fs">지수님 옷</span></div>
	                	<div class="h-ic" >
	                		<button type="button" class="h-btn btn-outline-green" style="margin-left:50px;">채택</button>
						</div>
	                	<div class="h-ic h-iec" >X</div>
	              	</div>
	                <p class="hh-line "></p>
	                <!-- <div class="card-body"> -->
	                <div >
	                  <ul class="list-unstyled list-border-dots">
	                    <li><img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" ></li>
	                  </ul>
	                  <!-- <a href="#" class="btn btn-primary btn-block btn-rounded mt-4">Sign Up</a> -->
	                </div>
	                 <a class="hh-line "></a>
	                 <div class="row">
	               		<div class="h-ic h-iec"><span>
	               			<img class="h-image-circle" src="${pageContext.request.contextPath}/assets/img/c.JPG">
	                	</span></div>
	                	<div class="h-ic" style="margin-top:20px;"><span>
	                		<a>베라님</a>
	                	</span></div>
	                	<div class="h-ic text-primary" style="margin-top:20px; margin-left: 20px;"><span style="font-size:10px;">
	                		<a>♥♡3</a>
						</span></div>
					
	                </div>
	              </div>
	              
	            </div>
	            
	            <div class="col-md-3">
	              <div class="card bg-white bg-shadow text-center card-outline-primary">
	              	<div class="row">
	              		<div class="col-md-6" ><span class="">ㅁ</span></div>
	                	<div class="col-md-3" ><span class="">ㅁ</span></div>
	                	<div class="col-md-2">ㅁ</div>
	                	<div class="col-md-1">X</div>
	              	
	              	
	              	
	             
	              	</div>
	              	
	                <h5 class="py-2 text-shadow">
	                  <span class="em pull-left" >지수님 옷</span> <input type="checkbox">
	                  <i class="ion-android-checkbox-outline"></i>
	                </h5>
	                <p class="hh-line "></p>
	                <!-- <div class="card-body"> -->
	                <div >
	                  <ul class="list-unstyled list-border-dots">
	                    <li><img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" ></li>
	                  </ul>
	                  <!-- <a href="#" class="btn btn-primary btn-block btn-rounded mt-4">Sign Up</a> -->
	                </div>
	                 <a class="hh-line "></a>
	                <div class="">
	               		<span>
	               			<img class="h-image-circle" src="${pageContext.request.contextPath}/assets/img/c.JPG">
	                	</span>
	                	<span>
	                		<a>베라님</a>
	                	</span>
	                	<span>
	                		<a>♡3</a>
						</span>
					
	                </div>
	              </div>
	              
	            </div>
	            
	            <div class="col-md-3">
	              <div class="card bg-white bg-shadow text-center card-outline-primary">
	              	<div class="row">
	              		<div class="col-md-6" ><span class="">ㅁ</span></div>
	                	<div class="col-md-3" ><span class="">ㅁ</span></div>
	                	<div class="col-md-2">ㅁ</div>
	                	<div class="col-md-1">X</div>
	              	
	              	
	              	
	             
	              	</div>
	              	
	                <h5 class="py-2 text-shadow">
	                  <span class="em pull-left" >지수님 옷</span> <input type="checkbox">
	                  <i class="ion-android-checkbox-outline"></i>
	                </h5>
	                <p class="hh-line "></p>
	                <!-- <div class="card-body"> -->
	                <div >
	                  <ul class="list-unstyled list-border-dots">
	                    <li><img src="${pageContext.request.contextPath}/assets/img/c.JPG" class="hh-back" ></li>
	                  </ul>
	                  <!-- <a href="#" class="btn btn-primary btn-block btn-rounded mt-4">Sign Up</a> -->
	                </div>
	                 <a class="hh-line "></a>
	                <div class="">
	               		<span>
	               			<img class="h-image-circle" src="${pageContext.request.contextPath}/assets/img/c.JPG">
	                	</span>
	                	<span>
	                		<a>베라님</a>
	                	</span>
	                	<span>
	                		<a>♡3</a>
						</span>
					
	                </div>
	              </div>
	              
	            </div>
	   
	   
	   
	 
            
            
		</div><!-- / row -->
		
		
		
	</div><!-- / col-md-10 -->
	
	
	
	
<!-- ---------------------------------------------------------------------- -->



	
	
	</div><!-- / row -->
</div><!-- container -->

































<!-- ---------------------------------------------------------------------- -->


<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>




</body>




</html>