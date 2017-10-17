<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>clothes</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">


<!-- Custom fonts for this template -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic"	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/assets/css/business-casual.css" rel="stylesheet">


<!--  -->
<link rel="stylesheet"	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/codi_bootstrap.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!--  -->

	
	

<style>
.sub-menu {
	width: 120px;
	height: 800px;
	float: left;
}

.list {
	color: white;
	padding-top: 1%;
	padding-bottom: 1%;
}

.bts .list-group {
	display: block;
	margin-top: 0;
}

.gallery {
	display: inline-block;
	margin-top: 20px;
	width: 100%;
}

.btn-hover {
	font-weight: normal;
	color: #333333;
	cursor: pointer;
	background-color: inherit;
	border-color: transparent;
}

.btn-hover-alt {
	font-weight: normal;
	color: #ffffff;
	cursor: pointer;
	background-color: inherit;
	border-color: transparent;
}

.prifile_photo {
	border-radius: 50%;
	width: 50px;
	height: 50px;
}

.comments-list .comment .avatar {
	border-radius: 50%;
	width: 50px;
	height: 50px;
}

.comments-list .comment .comment-heading {
	display: block;
	width: 100%;
}

.comments-list .comment .comment-heading .user {
	font-size: 14px;
	font-weight: bold;
	display: inline;
	margin-top: 0;
	margin-right: 10px;
}

.comments-list .comment .comment-heading .time {
	font-size: 12px;
	color: #aaa;
	margin-top: 0;
	display: inline;
}

.comments-list .comment .comment-body {
	margin-left: 60px;
}

.comments-list .comment>.comments-list {
	margin-left: 50px;
}

.input-group-addon a {
	color: #454545;
}

.comment {
	border-bottom: 1px dashed gray;
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

#wearclothimg {
	position: absolute;
	max-width: 100%;
	max-height: 100%;
	width: auto;
	height: auto;
	margin: auto;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
}

.text-left {
	font-size: 14px;
	font-weight: normal;
}


</style>


<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
 p { font-size: 24px; }
 .hn { font-family: 'Hanna'; }


.tb {
	margin-top: 20px;
	white-space:nowrap;
}


.left {
	margin-left: 18px;
}

#tb {
	background:#F6CED8;
	color:#688A08;
	width:200px;
	height: 270px;
	text-align: center;
}

#tit {
	background: #F6CED8;
	font-weight: bold;
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
		<!-- 서브메뉴 -->
	<div class="row">
	
	<div class="col-md-10">
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
         
         
	</div>
	
	
	
	<!-- 사람프로필 리스트 -->
	<div class="col-md-2  tb2">
		<div class="mb-4">
              <ul class="nav nav-tabs">
                <li class="nav-item active"><a href="#popular" class="nav-link " data-toggle="tab">Popular</a></li>
                <li class="nav-item"><a href="#latest" class="nav-link" data-toggle="tab">Latest</a></li>
              </ul>
              <div class="tab-content tab-content-bordered">
                <!-- Popular tab content -->
                <div class="tab-pane fade active show blog-roll-mini" id="popular">
                  <!-- Popular blog post 1 -->
                  <div class="row blog-post">
                    <div class="col-4">
                      <div class="blog-media">
                        <a href="blog-post&lt;?php echo OUTPUT_FILE_TYPE; ?&gt;&#10;                          ">
                          <img src="assets/img/blog/ladybird.jpg" alt="Picture of frog by Ben Fredericson" class="img-fluid">
                        </a>
                      </div>
                    </div>
                    <div class="col-8">
                      <h5>
                        <a href="#">At Interdico Populus Vero</a>
                      </h5>
                    </div>
                  </div>
                  <!-- Popular blog post 2 -->
                  <div class="row blog-post">
                    <div class="col-4">
                      <div class="blog-media">
                        <a href="blog-post&lt;?php echo OUTPUT_FILE_TYPE; ?&gt;&#10;                          ">
                          <img src="assets/img/blog/ladybird.jpg" alt="Picture of frog by Ben Fredericson" class="img-fluid">
                        </a>
                      </div>
                    </div>
                    <div class="col-8">
                      <h5>
                        <a href="#">Jugis Molior Sino Uxor</a>
                      </h5>
                    </div>
                  </div>
                  <!-- Popular blog post 3 -->
                  <div class="row blog-post">
                    <div class="col-4">
                      <div class="blog-media">
                        <a href="blog-post&lt;?php echo OUTPUT_FILE_TYPE; ?&gt;&#10;                          ">
                          <img src="assets/img/blog/ladybird.jpg" alt="Picture of frog by Ben Fredericson" class="img-fluid">
                        </a>
                      </div>
                    </div>
                    <div class="col-8">
                      <h5>
                        <a href="#">Cui Imputo Magna Refero</a>
                      </h5>
                    </div>
                  </div>
                  <!-- Popular blog post 4 -->
                  <div class="row blog-post">
                    <div class="col-4">
                      <div class="blog-media">
                        <a href="blog-post&lt;?php echo OUTPUT_FILE_TYPE; ?&gt;&#10;                          ">
                          <img src="assets/img/blog/fly.jpg" alt="Picture of frog by Ben Fredericson" class="img-fluid">
                        </a>
                      </div>
                    </div>
                    <div class="col-8">
                      <h5>
                        <a href="#">Melior Quidne Sagaciter Vindico</a>
                      </h5>
                    </div>
                  </div>
                </div>
                <!-- Latest tab content -->
                <div class="tab-pane fade blog-roll-mini" id="latest">
                  <!-- Latest blog post 1 -->
                  <div class="row blog-post">
                    <div class="col-4">
                      <div class="blog-media">
                        <a href="blog-post&lt;?php echo OUTPUT_FILE_TYPE; ?&gt;&#10;                          ">
                          <img src="assets/img/blog/ladybird.jpg" alt="Picture of frog by Ben Fredericson" class="img-fluid">
                        </a>
                      </div>
                    </div>
                    <div class="col-8">
                      <h5>
                        <a href="#">Abdo Esse Pertineo Praesent</a>
                      </h5>
                    </div>
                  </div>
                  <!-- Latest blog post 2 -->
                  <div class="row blog-post">
                    <div class="col-4">
                      <div class="blog-media">
                        <a href="blog-post&lt;?php echo OUTPUT_FILE_TYPE; ?&gt;&#10;                          ">
                          <img src="assets/img/blog/ape.jpg" alt="Picture of frog by Ben Fredericson" class="img-fluid">
                        </a>
                      </div>
                    </div>
                    <div class="col-8">
                      <h5>
                        <a href="#">Accumsan Amet Humo Populus</a>
                      </h5>
                    </div>
                  </div>
                  <!-- Latest blog post 3 -->
                  <div class="row blog-post">
                    <div class="col-4">
                      <div class="blog-media">
                        <a href="blog-post&lt;?php echo OUTPUT_FILE_TYPE; ?&gt;&#10;                          ">
                          <img src="assets/img/blog/fly.jpg" alt="Picture of frog by Ben Fredericson" class="img-fluid">
                        </a>
                      </div>
                    </div>
                    <div class="col-8">
                      <h5>
                        <a href="#">Inhibeo Jumentum Sit Vel</a>
                      </h5>
                    </div>
                  </div>
                  <!-- Latest blog post 4 -->
                  <div class="row blog-post">
                    <div class="col-4">
                      <div class="blog-media">
                        <a href="blog-post&lt;?php echo OUTPUT_FILE_TYPE; ?&gt;&#10;                          ">
                          <img src="assets/img/blog/bee.jpg" alt="Picture of frog by Ben Fredericson" class="img-fluid">
                        </a>
                      </div>
                    </div>
                    <div class="col-8">
                      <h5>
                        <a href="#">Praemitto Scisco Ulciscor Venio</a>
                      </h5>
                    </div>
                  </div>
                </div>
              </div>
            </div>
	</div>
	</div>
	</div>
	
	
	
	
	
	
<!-- -----------------------------------------------------------------------------------------------------------------------------  -->

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- 코디북 리스트 뿌리기 -->
<script type="text/javascript">
	$(document).ready(function() {
		es_fetchBook("all");
		console.log("ready!");
		
		
		$('#modal').on('show.bs.modal', function (event) {
			  console.log('모달모달');
			  var info = $(event.relatedTarget.dataset); // Button that triggered the modal
			  console.log(info);
			  var img = info[0].image; // Extract info from data-* attributes
			  console.log(img);
			  var wearimg = info[0].wearimage; // Extract info from data-* attributes
			  var profile = info[0].profile;
			  console.log(profile);
			  var nicname = info[0].nicname;
			  console.log(nicname);
			  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
			  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.

			  
			  var str = ""
			  str += "<img class=\"prifile_photo\" src=\"\" alt=\"프로필사진\" style=\"margin-right: 10px;\">";
			  str += nicname;
			  
			  $('.showPic').attr('src', img);
			  $('#wearclothimg').attr('src', wearimg);
			  $('.nicname').html(str);
			  $('.prifile_photo').attr('src', profile);
			  


			});
	});

	function es_fetchBook(purpose) {
		
		var authNo = ${authUser.no};
		var num = authNo;	//아무런 영향이 없음
		
		console.log(purpose+num);
		$.ajax({
					url : "${pageContext.request.contextPath }/cogell/codibookList",
					dataType : "json",
					type : "post",
					data : {"purpose":purpose, "num":num, "no":authNo},
					success : function(codibookList) {
						console.log("성공");
						console.log(codibookList.length);
						for (var i = 0; i < codibookList.length; i++) {
							es_render(codibookList[i]);
							
						}
						$('.likebtn').click(function() {
							var $this = $(this);
							if ($this.hasClass('likebtn')){
								console.log("종아요 버튼");

								var authNo = ${authUser.no};
								console.log($($this).val());
								likebtnClick($this.val(), authNo);
								var c = $this.data('count');
								if (!c)
									c = 0;
								c++;
								$this.data('count', c);							
								$('#' + this.id + '-bs').html(c);
								$($this).addClass("btn-primary");
								$this.removeClass("likebtn");
							}
						});
						
						$('.chsbtn').click(function() {
							var $this = $(this);
							if ($this.hasClass('chsbtn')){
								choosebtnClick($this.val());
								$($this).addClass("btn-success");
								$this.removeClass("chsbtn")
							}

						});
						
						$('.deleteCodiBtn').click(function() {
							var $this = $(this);
							var no = $this.val();
							deletebtnClick(no);
							
							$("#codibookItem"+no).remove();
						});
						
						/* $('.getSrc').click(function() {
							console.log("hello");
							var src = $(this).attr('src');
							
							//프로필 사진과 닉네임을 가져와야한다
							//db를 통해서 할것이므로 눌렀을 때 코디번호를 모달창에 전해야한다.
							$('.showPic').attr('src', src);
						}); */	
						
						

					},
					error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
						console.error(status + " : " + error);
					}
				});
		
		$.ajax({
			url : "${pageContext.request.contextPath }/cogell/codibookList2",
			dataType : "json",
			type : "post",
			data : {"purpose":purpose, "num":num, "no":authNo},
			success : function(codibookList) {
				console.log("성공");
				console.log(codibookList.length);
				for (var i = 0; i < codibookList.length; i++) {
					es_render2(codibookList[i]);
					
				}
				$('.likebtn').click(function() {
					var $this = $(this);
					if ($this.hasClass('likebtn')){
						console.log("종아요 버튼");

						var authNo = ${authUser.no};
						console.log($($this).val());
						likebtnClick($this.val(), authNo);
						var c = $this.data('count');
						if (!c)
							c = 0;
						c++;
						$this.data('count', c);							
						$('#' + this.id + '-bs').html(c);
						$($this).addClass("btn-primary");
						$this.removeClass("likebtn");
					}
				});
				
				$('.chsbtn').click(function() {
					var $this = $(this);
					if ($this.hasClass('chsbtn')){
						choosebtnClick($this.val());
						$($this).addClass("btn-success");
						$this.removeClass("chsbtn")
					}

				});
				
				$('.deleteCodiBtn').click(function() {
					var $this = $(this);
					var no = $this.val();
					deletebtnClick(no);
					
					$("#codibookItem"+no).remove();
				});
				
				/* $('.getSrc').click(function() {
					console.log("hello");
					var src = $(this).attr('src');
					
					//프로필 사진과 닉네임을 가져와야한다
					//db를 통해서 할것이므로 눌렀을 때 코디번호를 모달창에 전해야한다.
					$('.showPic').attr('src', src);
				}); */	
				
				

			},
			error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
				console.error(status + " : " + error);
			}
		});
		
		
		
		$.ajax({
			url : "${pageContext.request.contextPath }/cogell/codibookList3",
			dataType : "json",
			type : "post",
			data : {"purpose":purpose, "num":num, "no":authNo},
			success : function(codibookList) {
				console.log("성공");
				console.log(codibookList.length);
				for (var i = 0; i < codibookList.length; i++) {
					es_render3(codibookList[i]);
					
				}
				$('.likebtn').click(function() {
					var $this = $(this);
					if ($this.hasClass('likebtn')){
						console.log("종아요 버튼");

						var authNo = ${authUser.no};
						console.log($($this).val());
						likebtnClick($this.val(), authNo);
						var c = $this.data('count');
						if (!c)
							c = 0;
						c++;
						$this.data('count', c);							
						$('#' + this.id + '-bs').html(c);
						$($this).addClass("btn-primary");
						$this.removeClass("likebtn");
					}
				});
				
				$('.chsbtn').click(function() {
					var $this = $(this);
					if ($this.hasClass('chsbtn')){
						choosebtnClick($this.val());
						$($this).addClass("btn-success");
						$this.removeClass("chsbtn")
					}

				});
				
				$('.deleteCodiBtn').click(function() {
					var $this = $(this);
					var no = $this.val();
					deletebtnClick(no);
					
					$("#codibookItem"+no).remove();
				});
				
				/* $('.getSrc').click(function() {
					console.log("hello");
					var src = $(this).attr('src');
					
					//프로필 사진과 닉네임을 가져와야한다
					//db를 통해서 할것이므로 눌렀을 때 코디번호를 모달창에 전해야한다.
					$('.showPic').attr('src', src);
				}); */	
				
				

			},
			error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
				console.error(status + " : " + error);
			}
		});
		
	}
	
	function es_render(CodibookVo) {
		
		var authNo = ${authUser.no};
		var userNo =authNo;
		
		var str = "";
		str += "<div class='col-sm-4 col-xs-6 col-md-3 col-lg-4' id=\"codibookItem"+CodibookVo.no+"\">";
		str += "<div class=\"thumbnail bts\">";
		str += "<button class=\"btn btn-default btn-xs\" id='tit'><a href='${pageContext.request.contextPath}/myroom/codibook/"+CodibookVo.ownerNo+"'>"+CodibookVo.ownername+"</a></button>";
		str += "	<button class=\"btn btn-default btn-xs deleteCodiBtn\" style=\"float:right;\" value="+CodibookVo.no+">X</button>";
		str += "	<div id=\"openModal"+CodibookVo.no+"\"";
		str += "	 	data-image=\"${pageContext.request.contextPath}/upload/"+CodibookVo.codi+"\" ";
		str += "	 	data-wearimage=\"${pageContext.request.contextPath}/upload/"+CodibookVo.wear+"\" ";
		str += "	 	data-profile=\"${pageContext.request.contextPath}/upload/"+CodibookVo.profile+"\" ";
		str += "	 	data-nicname=\""+CodibookVo.otherNicname+"\" ";
		str += "		data-toggle=\"modal\" data-target=\'#modal\' data-keyboard=\"true\"";
		str += "		data-backdrop=\"false\">";
		str += "		<img class=\"img-responsive getSrc\" alt=\"\"";
		str += "			src=${pageContext.request.contextPath}/upload/"+CodibookVo.codi+" style=\"cursor:pointer\"/>";
		str += "	</div> ";
		str += "	<div class=\"row\">";
		str += "	<div class=\"col-md-8\">";
		str += "		<p class=\"text-left\" style=\"margin: 2%;\">";
		str += "			<img class=\"prifile_photo\" src=${pageContext.request.contextPath}/upload/"+CodibookVo.profile+" alt=\"프로필사진\" style=\"margin-right:10px;\">"
					+"<a href='${pageContext.request.contextPath}/myroom/codibook/"+CodibookVo.ownerNo+"'>"+CodibookVo.otherNicname + "</a></p>";
		str += " 	</div>";
		str += " 	<div class=\"col-md-4\" style=\"padding-top:2%; padding-left:auto;\">";
		if (userNo == authNo) {
		//if(true){
			if (CodibookVo.choose != 0) {
				str += "<button class=\"btn btn-sm btn-hover btn-default btn-success\" value="+CodibookVo.no+" style=\"float:right;\">";
				str += "<span class=\"glyphicon glyphicon-check\"></span>";
				str += "</button>";
			} else {
				str += "<button class=\"btn btn-sm btn-hover btn-default chsbtn\" value="+CodibookVo.no+" style=\"float:right;\">";
				str += "<span class=\"glyphicon glyphicon-check\" ></span>";
				str += "</button>";
			}
			
		}
		if(CodibookVo.likeflag != 0){
			str += "		<button class=\"btn btn-sm btn-hover btn-primary\"";
			str += "			style=\"display: inline; float:right; margin-top:5%\" data="+CodibookVo.likes+" value="+CodibookVo.no+" id=\"like"
					+ CodibookVo.no + "\">";
			str += "			<span class=\"glyphicon glyphicon-thumbs-up\"><div id=\"like"+CodibookVo.no+"-bs\" style=\"display: inline; margin-left: 2px;\">"
					+ CodibookVo.likes + "</div></span>";
			str += "		</button>";
		} else {
			str += "		<button class=\"btn btn-sm btn-default btn-hover likebtn\"";
			str += "			style=\"display: inline; float:right; margin-top:5%\" data="+CodibookVo.likes+" value="+CodibookVo.no+"	 id=\"like"
					+ CodibookVo.no + "\">";
			str += "			<span class=\"glyphicon glyphicon-thumbs-up\"><div id=\"like"+CodibookVo.no+"-bs\" style=\"display: inline; margin-left: 2px;\">"
					+ CodibookVo.likes + "</div></span>";
			str += "		</button>";
		}
		str += "	</div>";
		str += "	</div>";
		str += "</div>";

		str += "</div>";

		$("#codibookItemList").append(str);
	}
		

function es_render2(CodibookVo) {
		
		var authNo = ${authUser.no};
		var userNo =authNo;
		
		var str = "";
		str += "<div class='col-sm-4 col-xs-6 col-md-3 col-lg-4' id=\"codibookItem"+CodibookVo.no+"\">";
		str += "<div class=\"thumbnail bts\">";
		str += "<button class=\"btn btn-default btn-xs\" id='tit'><a href='${pageContext.request.contextPath}/myroom/codibook/"+CodibookVo.ownerNo+"'>"+CodibookVo.ownername+"</a></button>";
		str += "	<button class=\"btn btn-default btn-xs deleteCodiBtn\" style=\"float:right;\" value="+CodibookVo.no+">X</button>";
		str += "	<div id=\"openModal"+CodibookVo.no+"\"";
		str += "	 	data-image=\"${pageContext.request.contextPath}/upload/"+CodibookVo.codi+"\" ";
		str += "	 	data-wearimage=\"${pageContext.request.contextPath}/upload/"+CodibookVo.wear+"\" ";
		str += "	 	data-profile=\"${pageContext.request.contextPath}/upload/"+CodibookVo.profile+"\" ";
		str += "	 	data-nicname=\""+CodibookVo.otherNicname+"\" ";
		str += "		data-toggle=\"modal\" data-target=\'#modal\' data-keyboard=\"true\"";
		str += "		data-backdrop=\"false\">";
		str += "		<img class=\"img-responsive getSrc\" alt=\"\"";
		str += "			src=${pageContext.request.contextPath}/upload/"+CodibookVo.codi+" style=\"cursor:pointer\"/>";
		str += "	</div> ";
		str += "	<div class=\"row\">";
		str += "	<div class=\"col-md-8\">";
		str += "		<p class=\"text-left\" style=\"margin: 2%;\">";
		str += "			<img class=\"prifile_photo\" src=${pageContext.request.contextPath}/upload/"+CodibookVo.profile+" alt=\"프로필사진\" style=\"margin-right:10px;\">"
				+"<a href='${pageContext.request.contextPath}/myroom/codibook/"+CodibookVo.ownerNo+"'>"+CodibookVo.otherNicname + "</a></p>";
		str += " 	</div>";
		str += " 	<div class=\"col-md-4\" style=\"padding-top:2%; padding-left:auto;\">";
		if (userNo == authNo) {
		//if(true){
			if (CodibookVo.choose != 0) {
				str += "<button class=\"btn btn-sm btn-hover btn-default btn-success\" value="+CodibookVo.no+" style=\"float:right;\">";
				str += "<span class=\"glyphicon glyphicon-check\"></span>";
				str += "</button>";
			} else {
				str += "<button class=\"btn btn-sm btn-hover btn-default chsbtn\" value="+CodibookVo.no+" style=\"float:right;\">";
				str += "<span class=\"glyphicon glyphicon-check\" ></span>";
				str += "</button>";
			}
			
		}
		if(CodibookVo.likeflag != 0){
			str += "		<button class=\"btn btn-sm btn-hover btn-primary\"";
			str += "			style=\"display: inline; float:right; margin-top:5%\" data="+CodibookVo.likes+" value="+CodibookVo.no+" id=\"like"
					+ CodibookVo.no + "\">";
			str += "			<span class=\"glyphicon glyphicon-thumbs-up\"><div id=\"like"+CodibookVo.no+"-bs\" style=\"display: inline; margin-left: 2px;\">"
					+ CodibookVo.likes + "</div></span>";
			str += "		</button>";
		} else {
			str += "		<button class=\"btn btn-sm btn-default btn-hover likebtn\"";
			str += "			style=\"display: inline; float:right; margin-top:5%\" data="+CodibookVo.likes+" value="+CodibookVo.no+"	 id=\"like"
					+ CodibookVo.no + "\">";
			str += "			<span class=\"glyphicon glyphicon-thumbs-up\"><div id=\"like"+CodibookVo.no+"-bs\" style=\"display: inline; margin-left: 2px;\">"
					+ CodibookVo.likes + "</div></span>";
			str += "		</button>";
		}
		str += "	</div>";
		str += "	</div>";
		str += "</div>";

		str += "</div>";

		$("#codibookItemList2").append(str);
	}
	
function es_render3(CodibookVo) {
		
		var authNo = ${authUser.no};
		var userNo =authNo;
		
		var str = "";
		str += "<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3' id=\"codibookItem"+CodibookVo.no+"\">";
		str += "<div class=\"thumbnail bts\">";
		str += "<button class=\"btn btn-default btn-xs\" id='tit'><a href='${pageContext.request.contextPath}/myroom/codibook/"+CodibookVo.ownerNo+"'>"+CodibookVo.ownername+"</a></button>";
		str += "	<button class=\"btn btn-default btn-xs deleteCodiBtn\" style=\"float:right;\" value="+CodibookVo.no+">X</button>";
		str += "	<div id=\"openModal"+CodibookVo.no+"\"";
		str += "	 	data-image=\"${pageContext.request.contextPath}/upload/"+CodibookVo.codi+"\" ";
		str += "	 	data-wearimage=\"${pageContext.request.contextPath}/upload/"+CodibookVo.wear+"\" ";
		str += "	 	data-profile=\"${pageContext.request.contextPath}/upload/"+CodibookVo.profile+"\" ";
		str += "	 	data-nicname=\""+CodibookVo.otherNicname+"\" ";
		str += "		data-toggle=\"modal\" data-target=\'#modal\' data-keyboard=\"true\"";
		str += "		data-backdrop=\"false\">";
		str += "		<img class=\"img-responsive getSrc\" alt=\"\"";
		str += "			src=${pageContext.request.contextPath}/upload/"+CodibookVo.codi+" style=\"cursor:pointer\"/>";
		str += "	</div> ";
		str += "	<div class=\"row\">";
		str += "	<div class=\"col-md-8\">";
		str += "		<p class=\"text-left\" style=\"margin: 2%;\">";
		str += "			<img class=\"prifile_photo\" src=${pageContext.request.contextPath}/upload/"+CodibookVo.profile+" alt=\"프로필사진\" style=\"margin-right:10px;\">"
				+"<a href='${pageContext.request.contextPath}/myroom/codibook/"+CodibookVo.ownerNo+"'>"+CodibookVo.otherNicname + "</a></p>";
		str += " 	</div>";
		str += " 	<div class=\"col-md-4\" style=\"padding-top:2%; padding-left:auto;\">";
		if (userNo == authNo) {
		//if(true){
			if (CodibookVo.choose != 0) {
				str += "<button class=\"btn btn-sm btn-hover btn-default btn-success\" value="+CodibookVo.no+" style=\"float:right;\">";
				str += "<span class=\"glyphicon glyphicon-check\"></span>";
				str += "</button>";
			} else {
				str += "<button class=\"btn btn-sm btn-hover btn-default chsbtn\" value="+CodibookVo.no+" style=\"float:right;\">";
				str += "<span class=\"glyphicon glyphicon-check\" ></span>";
				str += "</button>";
			}
			
		}
		if(CodibookVo.likeflag != 0){
			str += "		<button class=\"btn btn-sm btn-hover btn-primary\"";
			str += "			style=\"display: inline; float:right; margin-top:5%\" data="+CodibookVo.likes+" value="+CodibookVo.no+" id=\"like"
					+ CodibookVo.no + "\">";
			str += "			<span class=\"glyphicon glyphicon-thumbs-up\"><div id=\"like"+CodibookVo.no+"-bs\" style=\"display: inline; margin-left: 2px;\">"
					+ CodibookVo.likes + "</div></span>";
			str += "		</button>";
		} else {
			str += "		<button class=\"btn btn-sm btn-default btn-hover likebtn\"";
			str += "			style=\"display: inline; float:right; margin-top:5%\" data="+CodibookVo.likes+" value="+CodibookVo.no+"	 id=\"like"
					+ CodibookVo.no + "\">";
			str += "			<span class=\"glyphicon glyphicon-thumbs-up\"><div id=\"like"+CodibookVo.no+"-bs\" style=\"display: inline; margin-left: 2px;\">"
					+ CodibookVo.likes + "</div></span>";
			str += "		</button>";
		}
		str += "	</div>";
		str += "	</div>";
		str += "</div>";

		str += "</div>";

		$("#codibookItemList3").append(str);
	}
		
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
	
	
	
	
</script>

<script type="text/javascript">
	$("[name=clothlistchoice]").on('click', function() {
		console.log("분류 클릭");
		var listType = $(this).val();
		console.log(listType);
		$("#codibookItemList").empty();
		es_fetchBook(listType);
	});
</script>

<script type="text/javascript">
	//이벤트 발생시 첨부파일 열기버튼이 눌리도록
	function eventOccur(evEle, evType) {
		if (evEle.fireEvent) {
			evEle.fireEvent('on' + evType);
		} else {
			//MouseEvents가 포인트 그냥 Events는 안됨~ ??
			var mouseEvent = document.createEvent('MouseEvents');
			/* API문서 initEvent(type,bubbles,cancelable) */
			mouseEvent.initEvent(evType, true, false);
			var transCheck = evEle.dispatchEvent(mouseEvent);
			if (!transCheck) {
				//만약 이벤트에 실패했다면
				console.log("클릭 이벤트 발생 실패!");
			}
		}
	}

	$("#inputfilebtn").on("click", function() {
		//e.preventDefault();    
		//eventOccur(document.getElementById('orgFile'),'click');
		console.log("click");
		//eventOccur($("#fileopen"), 'click');
		$("#fileopen").click();
	});

	$('#fileopen').on('change', function() {
		var ext = $(this).val().split('.').pop().toLowerCase(); //확장자

		//배열에 추출한 확장자가 존재하는지 체크
		if ($.inArray(ext, [ 'gif', 'png', 'jpg', 'jpeg' ]) == -1) {
			resetFormElement($(this)); //폼 초기화
			window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
		} else {
			file = $('#fileopen').prop("files")[0];
			blobURL = window.URL.createObjectURL(file);
			$('#wearclothimg').attr('src', blobURL);
			//$('#wearclothimg').slideDown(); //업로드한 이미지 미리보기 
			//$(this).slideUp(); //파일 양식 감춤
		}
	});

	$("#saveimgbtn").on("click", function() {
		var form = $('#sendimgfile')[0];
		var formData = new FormData(form);
		formData.append("wearImg", $("#fileopen")[0].files[0]);

		$.ajax({
			url : "${pageContext.request.contextPath}/myroom/codibookSave",
			type : "POST",
			processData : false,
			contentType : false,
			data : formData,
			success : function(result) {
				alert("저장됐습니다.");
			},

			error : function(XHR, status, error) {
				console.log("실패");
			}
		});
	});
	
	$('#randombtn').click(function() {
		console.log("들어옴");
		
		var purpose="all";
		var authNo = ${authUser.no};
		var num = authNo;	//아무런 영향이 없음
		
		
		$("#codibookItemList").empty();
		$("#codibookItemList2").empty();
		
		console.log(purpose+num);
		$.ajax({
					url : "${pageContext.request.contextPath }/cogell/codibookRList",
					dataType : "json",
					type : "post",
					data : {"purpose":purpose, "num":num, "no":authNo},
					success : function(codibookList) {
						console.log("성공");
						console.log(codibookList.length);
						for (var i = 0; i < codibookList.length; i++) {
							if(i>2){
								es_render2(codibookList[i]);	
								} else {
								es_render(codibookList[i]);	
								}
							}
							
						$('.likebtn').click(function() {
							var $this = $(this);
							if ($this.hasClass('likebtn')){
								console.log("종아요 버튼");

								var authNo = ${authUser.no};
								console.log($($this).val());
								likebtnClick($this.val(), authNo);
								var c = $this.data('count');
								if (!c)
									c = 0;
								c++;
								$this.data('count', c);							
								$('#' + this.id + '-bs').html(c);
								$($this).addClass("btn-primary");
								$this.removeClass("likebtn");
							}
						});
						
						$('.chsbtn').click(function() {
							var $this = $(this);
							if ($this.hasClass('chsbtn')){
								choosebtnClick($this.val());
								$($this).addClass("btn-success");
								$this.removeClass("chsbtn")
							}

						});
						
						$('.deleteCodiBtn').click(function() {
							var $this = $(this);
							var no = $this.val();
							deletebtnClick(no);
							
							$("#codibookItem"+no).remove();
						});
						
						/* $('.getSrc').click(function() {
							console.log("hello");
							var src = $(this).attr('src');
							
							//프로필 사진과 닉네임을 가져와야한다
							//db를 통해서 할것이므로 눌렀을 때 코디번호를 모달창에 전해야한다.
							$('.showPic').attr('src', src);
						}); */	
						
						

					},
					error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
						console.error(status + " : " + error);
					}
				});
		
		
	
	});
	
	
	
	$('#lastestbtn').click(function() {
		console.log("들어옴");
		
		var purpose="all";
		var authNo = ${authUser.no};
		var num = authNo;	//아무런 영향이 없음
		
		
		$("#codibookItemList").empty();
		$("#codibookItemList2").empty();
		
		console.log(purpose+num);
		$.ajax({
					url : "${pageContext.request.contextPath }/cogell/codibookList4",
					dataType : "json",
					type : "post",
					data : {"purpose":purpose, "num":num, "no":authNo},
					success : function(codibookList) {
						console.log("성공");
						console.log(codibookList.length);
						for (var i = 0; i < codibookList.length; i++) {
							if(i>2){
								es_render2(codibookList[i]);	
								} else {
								es_render(codibookList[i]);	
								}
							}
							
						$('.likebtn').click(function() {
							var $this = $(this);
							if ($this.hasClass('likebtn')){
								console.log("종아요 버튼");

								var authNo = ${authUser.no};
								console.log($($this).val());
								likebtnClick($this.val(), authNo);
								var c = $this.data('count');
								if (!c)
									c = 0;
								c++;
								$this.data('count', c);							
								$('#' + this.id + '-bs').html(c);
								$($this).addClass("btn-primary");
								$this.removeClass("likebtn");
							}
						});
						
						$('.chsbtn').click(function() {
							var $this = $(this);
							if ($this.hasClass('chsbtn')){
								choosebtnClick($this.val());
								$($this).addClass("btn-success");
								$this.removeClass("chsbtn")
							}

						});
						
						$('.deleteCodiBtn').click(function() {
							var $this = $(this);
							var no = $this.val();
							deletebtnClick(no);
							
							$("#codibookItem"+no).remove();
						});
						
						/* $('.getSrc').click(function() {
							console.log("hello");
							var src = $(this).attr('src');
							
							//프로필 사진과 닉네임을 가져와야한다
							//db를 통해서 할것이므로 눌렀을 때 코디번호를 모달창에 전해야한다.
							$('.showPic').attr('src', src);
						}); */	
						
						

					},
					error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
						console.error(status + " : " + error);
					}
				});
		
		
	
	});
</script>
</html>