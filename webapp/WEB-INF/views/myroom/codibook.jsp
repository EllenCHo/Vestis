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

.btn {
	cursor:pointer;
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
/* 
.prifile_photo {
	border-radius: 50%;
	width: 50px;
	height: 50px;
} */

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


 /* a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;} */
 a:hover { color: black; text-decoration: none;}


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
  color: #55A79A;
  background-color: white;
  background-image: none;
  border-color: #ababab;
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


.codibook{
	background-image: url('/Vestis/assets/img/back37.jpg');
	background-size:100%;
	width : 100%;
	height : 200px;
	text-align: center;
	padding-bottom:80px;
	padding-top:80px;
	border-bottom:0.5px solid rgba(85, 167, 154, .6)
}

/* Important part */
.modal-dialog{
    overflow-y: initial !important
}
.modal-body{
    height: 700px;
    overflow-y: auto;
}

</style>

</head>
<body>


<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

<div class="codibook" >
	<div class="container">
	<h1>codibook</h1>
	</div>
</div>

<div class="container">
	<div class="row">

		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>


		<!-- ---------------------------------------------------------------------- -->
		<div class="col-md-10">
	
			<!-- 서브메뉴(탭) -->
			<ul class="nav nav-tabs flex-column flex-lg-row tb2" role="tablist">
				<li class="nav-item h-lr active"> <a class="nav-link" data-toggle="tab" href="#tab-1" role="tab" aria-expanded="true" data-type="all">All Codi Set</a> </li>
				<li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#tab-2" role="tab" aria-expanded="false" data-type="own">My Codi Set</a> </li>
				<li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#tab-3" role="tab" aria-expanded="false" data-type="other">Other Codi Set</a> </li>
				<li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#tab-4" role="tab" aria-expanded="false" data-type="system">System Codi Set</a> </li>
			</ul>
	
			<!-- 리스트 출력영역 -->
			<div class="row" id="codibookItemList">
				
			
			</div>

		</div>
	</div>
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
								<label style="margin-left: 5%; display: inline;">실제로 입은 사진</label>
								<form id="sendimgfile" action="" method="post" enctype="multipart/form-data" style="display: inline;">
									<input type="file" id="fileopen" name="file" accept="image/*"  style="display: none;">
									<input type="hidden" id="codiNoSave">
									<button id="inputfilebtn" class="btn btn-outline-green" type="button" style="margin-left: 17%; margin-bottom: 3%;">사진선택</button>
								</form>
								<button id="saveimgbtn" class="btn btn-outline-green" style="margin-bottom:3%;">저장</button>
								<div style="border: 1px solid; overflow: hidden; height: 90.5%; position: relative;">
									<img id="wearclothimg" class="img-responsive" src="${pageContext.request.contextPath}/assets/img/base_img.png" alt="">
								</div>
							</div>
						</div><!-- /row -->
	
						<hr>
						<div class="row bts">
							<div class="input-group" style="padding-left: 2%; padding-right: 2%; margin-bottom: 2%;">
								<input class="form-control es_commentInput" placeholder="Add a comment" type="text" style="width:96% !important;"> 
								<button class="input-group-addon es_commentButton" style="height:34px; width:4%; padding:0;"><span class="glyphicon glyphicon-edit"></span></button>
							</div>
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
<!-- /코디이미지 상세내용 Modal -->

 


<!-- ---------------------------------------------------------------------- -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- 코디북 리스트 뿌리기 & 모달창 관리 -->
<script type="text/javascript">
	$(document).ready(function() {
		es_fetchBook("all");
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

	function es_fetchBook(purpose) {
		var num = ${userNo};
		var authNo = ${authUser.no};
		console.log(purpose+num);
		$.ajax({
					url : "${pageContext.request.contextPath }/myroom/codibookList",
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
							console.log("종아요 버튼");

							if ($this.hasClass('likebtn')){
								console.log("종아요 버튼");

								
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
	
							var $this = $(this);
							var no = $this.data("codibookitemno");
							if ($this.hasClass('choiceBtn')){
								choosebtnClick(no);
								$($this).addClass("choicEDBtn");
								$this.removeClass("choiceBtn");
							}
 
						});
						
						$('.deleteCodiBtn').click(function() {
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

	
	
	function es_render(CodibookVo) {
		var userNo = ${userNo};
		var authNo = ${authUser.no};
		
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
		
		if (userNo == authNo) {
			str += "				<button type='button' class='deleteCodiBtn h-btn btn-outline-green' style='margin-right:10px; cursor:pointer' data-codibookitemno='"+ CodibookVo.no + "'>X</button>";
		}
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
		
		console.log("카드");
		$("#codibookItemList").append(str);
	} 
	
	
	
/*  	function es_render(CodibookVo) {
		var userNo = ${userNo};
		var authNo = ${authUser.no};
		
		var str = "";
		str += "<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3' id=\"codibookItem"+CodibookVo.no+"\" style=\"height:25%;\">";
		str += "<div class=\"thumbnail bts\">";
		if (userNo == authNo) {
		str += "	<button class=\"btn btn-default btn-xs deleteCodiBtn\" style=\"float:right;\" value="+CodibookVo.no+">X</button>";
		}
		str += "	<div id=\"openModal"+CodibookVo.no+"\"";
		str += "	 	data-no=\""+CodibookVo.no+"\" ";
		str += "	 	data-other=\""+CodibookVo.otherNo+"\" ";
		str += "	 	data-image=\"${pageContext.request.contextPath}/upload/"+CodibookVo.codi+"\" ";
		str += "	 	data-profile=\"${pageContext.request.contextPath}/upload/"+CodibookVo.profile+"\" ";
		str += "	 	data-nicname=\""+CodibookVo.otherNicname+"\" ";
		str += "		data-toggle=\"modal\" data-target=\'#modal\' data-keyboard=\"true\"";
		str += "		data-backdrop=\"false\">";
		str += "		aaaa<img class=\"img-responsive getSrc\" alt=\"\"";
		str += "			src=${pageContext.request.contextPath}/upload/"+CodibookVo.codi+" style=\"cursor:pointer\"/>";
		str += "	</div> ";
		str += "	<div class=\"row\">";
		str += "	<div class=\"col-md-8\">";
		str += "		<p class=\"text-left\" style=\"margin: 2%;\">";
		str += "			<img class=\"prifile_photo\" src=${pageContext.request.contextPath}/upload/"+CodibookVo.profile+" alt=\"프로필사진\" style=\"margin-right:10px;\">"
				+ CodibookVo.otherNicname + "</p>";
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
			str += "			style=\"display: inline; float:right; margin-top:5%\" data-count="+CodibookVo.likes+" value="+CodibookVo.no+"	 id=\"like"
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

 */		
		
		
	
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

<!-- 코디북 분류 -->
<script type="text/javascript">
	$(".nav-item a").on('click', function() {
		console.log("분류 클릭");
		var listType = $(this).data("type");
		console.log(listType);
		$("#codibookItemList").empty();
		es_fetchBook(listType);
		
		$(".nav-item a").removeClass("active");
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
 		var authNo = ${authUser.no};
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
 		var authNo = ${authUser.no};
 		
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

<!-- 착용사진 올리기 -->
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
		var no = $('#codiNoSave').val();
		formData.append("no", no)
		
		console.log(no);
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

</html>