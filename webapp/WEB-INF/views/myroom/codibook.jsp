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


 /* a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;} */
 a:hover { color: black; text-decoration: none;}

</style>

</head>
<body>


<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

<div class="myroomimg">
	<div class="container">
	<h3>codibook</h3>
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



				<!-- 여기서부터 건들기 -->
				<div
					style="overflow: auto; width: 87%; height: 37vw; padding: 2%; padding-bottom: 0; background-color: rgba(255, 255, 255, 0.9); border-radius: 1em; float: right;">
					<div class="bts row">
						<div class='list-group gallery' id="codibookItemList">
						</div>
						<!-- list-group / end -->
					</div>
					<!-- row / end -->
				</div>
		</div>
	</div>
</div><!-- /container -->



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
							if ($this.hasClass('likebtn')){
								console.log("좋아요 버튼");

								var authNo = ${authUser.no};
								console.log($this);
								
								var no = $this.data('no');
								console.log(no);
								
								likebtnClick(no, authNo);
								
								var c = $this.data('count');
								console.log(c);
								c++;
								$this.data('count', c);							
								$('#' + this.id + '-count').text(c);
								$($this).attr('src', '${pageContext.request.contextPath}/assets/img/heart-skin.png');
								$this.removeClass("likebtn");
							}
						});
						
						$('.chsbtn').click(function() {
	
							console.log("선택===================================")
							/* var $this = $(this);
							if ($this.hasClass('chsbtn')){
								choosebtnClick($this.val());
								$($this).addClass("btn-success");
								$this.removeClass("chsbtn")
							}
 */
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
		
		var str = "";
		str += "<div class='col-md-3' id='codibookItem" + CodibookVo.no + "'>";
		str += "	<div class='card bg-white bg-shadow text-center card-outline-primary'>";
		str += "		<div class='row tb4'>";
		str += "			<span class='h-ic h-iec h-fs'><a href=''>"+ CodibookVo.ownername + "님 옷</a></span>";
		str += "			<span class='h-ic2'></span>";
		str += "			<span class='h-icr'>";
		if (userNo == authNo) {
			if (CodibookVo.choose != 0) {
				str += "				<button type='button' class='h-btn btn-outline-green pointer' >Choice</button>";
			} else {
				str += "				<button type='button' class='chsbtn h-btn btn-outline-green pointer' >Choice</button>";
			}
			str += "				<button type='button' class='deleteCodiBtn h-btn btn-outline-green pointer' data-codibookitemno='"+ CodibookVo.no + "'>X</button>";
		}
		str += "			</span>";
		
		str += "		</div>";
		
		str += "		<p class='hh-line'></p>";
		str += "		<div>";
		str += "			<ul class='list-unstyled list-border-dots'>";
		str += "				<li>";
		str += "				<div id=\"openModal"+CodibookVo.no+"\"";
		str += "	 				data-no=\""+CodibookVo.no+"\" ";
		str += "	 				data-other=\""+CodibookVo.otherNo+"\" ";
		str += "	 				data-image=\"${pageContext.request.contextPath}/upload/"+CodibookVo.codi+"\" ";
		str += "	 				data-profile=\"${pageContext.request.contextPath}/upload/"+CodibookVo.profile+"\" ";
		str += "	 				data-nicname=\""+CodibookVo.otherNicname+"\" ";
		str += "					data-toggle=\"modal\" data-target=\'#modal\' data-keyboard=\"true\"";
		str += "					data-backdrop=\"false\">";
		str += "					<img src='http://localhost:8088/Vestis/upload/"+CodibookVo.codi+"' class='hh-back' style=\"cursor:pointer\"/>";
		str += "				</div> ";
		str += "				</li>";
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
			str += "				<div><img class='pointer' style='width:32px; height:32px; margin-top:8px' src='${pageContext.request.contextPath}/assets/img/heart-skin.png'></div>";
			str += "				<div class='pointer' style='position: relative; top: -6px; color: black; font-size:14px; align: center'>"+CodibookVo.likes+"</div>";
		} else {
			str += "				<div><img class='pointer likebtn' style='width:32px; height:32px; margin-top:8px' ";
			str += "					data-count=\""+CodibookVo.likes+"\" data-no=\""+CodibookVo.no+"\" id=\"like"+CodibookVo.no+"\" src='${pageContext.request.contextPath}/assets/img/heart.png'></div>";
			str += "				<div id=\"like"+ CodibookVo.no + "-count\" class='pointer' style='position: relative; top: -6px; color: black; font-size:14px; align: center'>"+CodibookVo.likes+"</div>";
		}
		str += "			</span>";
		str += "		</div>";
		
		str += "	</div>";
		str += "</div>";
		
		$("#codibookItemList").append(str);
	} 
	
	
/* 	function es_render(CodibookVo) {
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
		str += "		<img class=\"img-responsive getSrc\" alt=\"\"";
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
	} */
		
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
 		str += "	<img class=\"avatar pull-left\" src=\"${pageContext.request.contextPath}/upload/"+codiCoVo.dbName+"\" alt=\"avatar\">";
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