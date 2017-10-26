<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Vestis</title>


<!--자신이 만든 css-->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/codi_bootstrap.css" rel="stylesheet"	>

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

.prifile_photo{
    border-radius: 50%;
    width: 50px;
    height: 50px;
    border-width:2px;
    border-style:dashed;
    border-color:rgba(27, 27, 27, .7);
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

.codigallery{
	background-image: url('/Vestis/assets/img/back24.jpg');
	background-size:100%;
	width : 100%;
	height : 200px;
	text-align: center;
	padding-bottom:80px;
	padding-top:80px;
}

.modalBackdrop{
 		
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: rgba( 0, 0, 0, 0.7 );
  z-index: 1040;
  /* opacity:0.5; */
}


/* Important part */
.modal-dialog{
    overflow-y: initial !important
}
.modal-body{
    height: 700px;
    overflow-y: auto;
}
.codigallery{
	background-image: url('/Vestis/assets/img/back58.jpg');
	background-size:100%;
	width : 100%;
	height : 200px;
	text-align: center;
	padding-bottom:80px;
	padding-top:80px;
	border-bottom:0.5px solid rgba(85, 167, 154, .6)
}

</style>


</head>

<body>

	
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	
<div class="codigallery">
	<div class="container">
	<h1>Codi Gallery</h1>
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
					<span style="color:#292b2c">최신코디세트</span>
		  		</div>
		  		
		  		<!-- 최신순 카드 -->
		  		<div class="row" id="regDateItem">
		  		
			  		
		  		</div>
	  		</div>
	  
	  
			<!-- 인기순 -->
			<div class="itemlist">	
				<!-- 인기순 타이틀 -->
				<div class="title">
					<span style="color:#292b2c">인기코디세트</span>
		  		</div>
		  		
		  		<!-- 인기순 카드 -->
		  		<div class="row" id="hitItem">
		  		
			  		
		  		</div>
	  		</div>
		
		
			<!-- 랜덤 -->
			<div class="itemlist">	
				<!-- 랜덤순 타이틀 -->
				<div class="title">
					<span id="startRamdomCloth" style="color:#292b2c; cursor:pointer;">우연한만남</span>
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
                 			<c:forEach items="${clist }" var="vo">
                  			
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
	
	

<!-- 코디이미지 상세내용 Modal -->
<div class="modal fade bs-example-modal-lg" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modalBackdrop"> 
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				
				<div class="modal-header">
					<p class="text-left nicname" style="margin-bottom: 0;">
						<a>
							<img class="prifile_photo" src="http://bootdey.com/img/Content/user_1.jpg" alt="프로필사진" style="margin-right: 10px;">
						</a>
					</p>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">&times;</button>
				</div><!-- modal-header -->
				
				<div class="modal-body" >
					<div class="container-fluid" >
	
						<div class="row" style="height: 71%">
							<div class="col-md-6">
								<label style="margin-left: 5%; margin-bottom: 3.5%; margin-top: 3%;">추천한코디</label> 
								<img class="img-responsive showPic" src="" style="max-width:100%; height:auto; border: 1px solid;">
							</div>
	
	
							<div class="col-md-6">
								<label style="margin-left: 5%; margin-bottom: 3.5%; margin-top: 3%;">실제로 입은 사진</label>
								<div style="border: 1px solid; overflow: hidden; height: 90.5%; position: relative;">
									<img id="wearclothimg" class="img-responsive" src="${pageContext.request.contextPath}/assets/img/base_img.png" alt="">
								</div>
							</div>
						</div><!-- /row -->
	
						<hr>
						<div class="row bts">
							<c:if test="${authUser != null }">
								<div class="input-group" style="padding-left: 2%; padding-right: 2%; margin-bottom: 2%;">
									<input class="form-control es_commentInput" placeholder="Add a comment" type="text" style="width:96%;"> 
									<button class="input-group-addon es_commentButton" style="height:34px; width:4%; padding:0;"><span class="glyphicon glyphicon-edit"></span></button>
								</div>
							</c:if>
							<ul class="comments-list" style="padding-left: 3.2%; padding-right: 3.2%; list-style: none; width: 100%;">
								<li class="comment"><img class="avatar pull-left" src="http://bootdey.com/img/Content/user_1.jpg" alt="avatar">
									<div class="comment-body">
										<div class="comment-heading">
											<h4 class="user">Gavino Free</h4>
											<h5 class="time">5 minutes ago</h5>
											<button class="btn btn-default btn-xs deleteCommentBtn" style="float:right;" value="">X</button>
										</div>
										<p>Sure, oooooooooooooooohhhhhhhhhhhhhhhh</p>
									</div>
								</li>
							</ul>
						</div>
						
					</div><!-- /container-fluid -->
				</div><!-- /modal-body -->
				
				
			</div><!-- modal-content -->
		</div> <!-- /modal-dialog -->
	</div>
</div><!-- /modal -->
	
	
	
	
<!-- -----------------------------------------------------------------------------------------------------------------------------  -->

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>

<!-- 코디북 리스트 뿌리기 -->
<script type="text/javascript">
$(document).ready(function() {
 	es_fetchBookRegDate("regDate");
	es_fetchBookRegDate("hit");  
	es_fetchBookRegDate("random");
	console.log("ready!");
	
	$('#modal').on('show.bs.modal', function (event) {
		  console.log('모달모달');
		  
		  var info = $(event.relatedTarget.dataset); // Button that triggered the modal
		  console.log(info);
		  var no = info[0].no;
		  console.log(no);
		  var otherNo = info[0].other;
		  var img = info[0].image; // Extract info from data-* attributes
		  console.log(img);
		  /* var wearimg = info[0].wearimage; // Extract info from data-* attributes */
		  var profile = info[0].profile;
		  console.log(profile);
		  var nicname = info[0].nicname;
		  console.log(nicname);
		  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
		  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.

		  
		  var str = ""
		  str += "<a href=\"${pageContext.request.contextPath }/myroom/"+otherNo+"\" style=\"text-decoration: none;\">";
		  str += "<img class=\"prifile_photo\" src=\"\" alt=\"프로필사진\" style=\"margin-right: 10px;\">";
		  str += nicname;
		  str += "</a>";
		  
		  getWearImage(no);
		  
		  $('.showPic').attr('src', img);
		  $('.nicname').html(str);
		  $('.prifile_photo').attr('src', profile);
		  $('#codiNoSave').val(no);
		  $('.es_commentButton').val(no);
		  $('.comments-list').empty();
		  fetch_comment(no);
	});
});


/* 카드가져오기 */
function es_fetchBookRegDate(typeNo) {
	var authNo = "${authUser.no}";
	/* if("${authUser.no}" != null){
		authNo = "${authUser.no}";
	} else {
		authNo = 0;
		
		console.log("로그인 안함");
	} */
		/* 
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
	 */
	
	$.ajax({
		url : "${pageContext.request.contextPath }/cogell/codibookList",
		dataType : "json",
		type : "post",
		data : {"purpose":typeNo, "no":authNo},
		
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

			/* $('.choiceBtn').click(function() {
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
			}); */
			
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
 
// 좋아요함수 
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

/*
// 삭제함수
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

 */

	
/* 카드랜더링 */
function es_renderRegDate(CodibookVo) {
	var authNo = "${authUser.no}";	
	console.log(authNo);
	
	var str = "";
	str += "<div class='col-md-3' id='codibookItem" + CodibookVo.no + "'>";
	str += "	<div class='card bg-white bg-shadow text-center card-outline-primary'>";
	str += "		<div class='row tb4'>";
	str += "			<span class='h-ic h-iec h-fs' style='margin-left:5px'><a href=''>"+ CodibookVo.ownername + "님 옷</a></span>";
	str += "			<span class='h-ic2'></span>";
	str += "			<span class='h-icr'>";

	str += "			</span>";
	
	str += "		</div>";
	
	str += "		<p class='hh-line' style=\"margin:0;\"></p>";
	str += "		<div id='openModal"+CodibookVo.no+"'";
	str += "	 			data-no='"+CodibookVo.no+"' ";
	str += "	 			data-other='"+CodibookVo.otherNo+"' ";
	str += "	 			data-image='${pageContext.request.contextPath}/upload/"+CodibookVo.codi+"' ";
	str += "	 			data-profile='${pageContext.request.contextPath}/upload/"+CodibookVo.ownerprofile+"' ";
	str += "	 			data-nicname='"+CodibookVo.ownername+"' ";
	str += "				data-toggle='modal' data-target='#modal' data-keyboard='true'";
	str += "				data-backdrop='false'>";
	str += "			<ul class='list-unstyled list-border-dots point' style=\"margin:0;\">";
	str += "				<li><img src='http://localhost:8088/Vestis/upload/"+CodibookVo.codi+"' class='hh-back' style=\"max-width:100%; height:auto; \" ></li>";
	str += "			</ul>";
	str += "		</div>";
	str += "		<a class='hh-line'></a>";
	
	
	str += "		<div class='row'>";
	str += "			<a style=\"display:inline-flex; margin-bottom:2%;\" href=\"${pageContext.request.contextPath}/myroom/"+CodibookVo.otherNo+"\">";
	str += "			<span class='h-iec'>";
	str += "				<img style='margin: 6px 4px 0px 8px;' class='h-image-circle pointer' src='http://localhost:8088/Vestis/upload/"+CodibookVo.profile+"'>";
	str += "			</span>";
	str += "			<span class='h-ic3' style='margin-top:22px; text-align:left; font-size:13px; width:60%;' ><b class='pointer'>" + CodibookVo.otherNicname + "</b>님 </span>";
	str += "			</a>";
	str += "			<span class='text-primary' style='position:absolute; right:5%;'>";
	
	if(authNo != "") {
		if(CodibookVo.likeflag != 0){                                    
			str += "			<div><img class='' style='width:32px; height:32px; margin-top:8px' data-codibookitemno='"+CodibookVo.no+"' data-count='"+CodibookVo.likes+"' src='${pageContext.request.contextPath}/assets/img/heart-red.png'></div>";
			str += "				<div class='likesCount' style='position: relative; top: -6px; color: black; font-size:14px; align: center'>"+ CodibookVo.likes +"</div>";
		}else {
			str += "			<div><img class='likebtn pointer' style='width:32px; height:32px; margin-top:8px'data-codibookitemno='"+CodibookVo.no+"' data-count='"+CodibookVo.likes+"' src='${pageContext.request.contextPath}/assets/img/heart-gray.png'></div>";
			str += "				<div class='likesCount' style='position: relative; top: -6px; color: black; font-size:14px; align: center'>"+ CodibookVo.likes +"</div>";	
		}
	}
	
	str += "			</span>";
	str += "		</div>";
	
	str += "	</div>";
	str += "</div>";
	
	console.log("카드 랜더링");
	return str;
} 
	
 function getWearImage(no) {
		$.ajax({
			url : "${pageContext.request.contextPath}/myroom/getWearImage",
			type : "post",
			dataType : "json",
			data : {"no":no},
			success : function(wearImg) {
				console.log(wearImg);
				$('#wearclothimg').attr('src', "${pageContext.request.contextPath}/upload/"+wearImg);
			},

			error : function(XHR, status, error) {
				console.log("실패");
			}
		});
	}
	
	
</script>

<script type="text/javascript">
	$('#startRamdomCloth').on("click", function(){
		console.log("랜덤 클릭");
		$("#randomItem").empty();
		es_fetchBookRegDate("random");
	});
</script>
<!-- 댓글창 스크립트 -->
<script type="text/javascript">
	function fetch_comment(no) {
			$.ajax({
			url : "${pageContext.request.contextPath }/myroom/commentList",
			type : "post",
			dataType : "json",
			data : {"no":no},
			success :function(commentList) {
				for (var i = 0; i < commentList.length; i++) {
					addComment(commentList[i]);
				}
				
				$('.deleteCommentBtn').click(function() {
					  console.log("삭제버튼3");
					  var $this = $(this);
					  var no = $this.val();
				 	  console.log(no);	 	
				 	  removeComment(no);
				 	  $("#coDel"+no).remove();
				});
			 	
			},
			error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
				console.error(status + " : " + error);
			}
		});
	}
	
 	$('.es_commentButton').on('click', function() {
 		console.log("코멘트 버튼 클릭")

 		var no = $('.es_commentButton').val();
 		var authNo = "${authUser.no}";
 		var comment = $('.es_commentInput').val();
 		$('.es_commentInput').val(null);
 		console.log(comment);
 		
 		$.ajax({
			url : "${pageContext.request.contextPath }/myroom/addComment",
			type : "post",
			dataType : "json",
			data : {"no":no, "authNo":authNo, "comment":comment},
			success :function(codiCoVo) {
				addComment(codiCoVo);
				
				$('.deleteCommentBtn').click(function() {
					  console.log("삭제버튼3");
					  var $this = $(this);
					  var no = $this.val();
				 	  console.log(no);	 	
				 	  removeComment(no);
				 	  $("#coDel"+no).remove();
				});
			},
			error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
				console.error(status + " : " + error);
			}
		});
 	});
 	
 	function addComment(codiCoVo) { 		
 		var authNo = "${authUser.no}";
 		 		
 		var str = "";
 		str += "<li id=\"coDel"+codiCoVo.no+"\" class=\"comment\" style=\"padding-top:1%;\">";
 		str += "	<img class=\"prifile_photo pull-left\" style=\"border:1px solid\" src=\"${pageContext.request.contextPath}/upload/"+codiCoVo.dbName+"\" alt=\"avatar\">";
		str += "	<div class=\"comment-body\">";
		str += "		<div class=\"comment-heading\">";
		str += "			<h4 class=\"user\">"+codiCoVo.nicname+"</h4>";
 		str += "			<h5 class=\"time\">"+codiCoVo.regDate+"</h5>";
 		if(authNo == codiCoVo.personNo) {
			str += " 			<button class=\"btn btn-default btn-xs deleteCommentBtn\" style=\"float:right;\" value=\""+codiCoVo.no+"\">x</button>";
 		}
		str += "		</div>";
		str += "		<p>"+codiCoVo.content+"</p>";
		str += "	</div>";
		str += "</li>";
		
		$('.comments-list').append(str);
 	}
	
 	function removeComment(no) {
 		$.ajax({
			url : "${pageContext.request.contextPath }/myroom/removeComment",
			type : "post",
			dataType : "json",
			data : {"no":no},
			success :function() {
				console.log("댓글 지우기");
			},
			error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
				console.error(status + " : " + error);
			}
		});
 	}
</script>


</html>