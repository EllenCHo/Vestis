<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
.image-circle{
    border-radius: 50%;
    width: 100px;
    height: 100px;
    margin: 10px;
    border-width:3px;
    border-style:dashed;
    border-color:rgba(27, 27, 27, .7);
}
/* .sub-menu {
	width:120px;
	height:800px;
	float:left;
} 
.clear{
	clear:both;
}

.top{
	margin-top:30px;
	margin-left:5px;
} */
</style>


<!-- <div class="container" id="about">
	<div class="row"> -->
	    <!-- sidebar -->
	    <div class="col-md-2">
	      
	      <!-- Sections Menu-->
	      <div class="nav-section-menu">
	        <div class="nav nav-list" id="submenu">
	        
	          <div id="hyj"></div>
	          <span class="h-name">${sessionScope.authUser.nicname} <a href="${pageContext.request.contextPath }/user/modifyform"><img src="${pageContext.request.contextPath }/assets/img/grey.png" width="20px" height="20px" style="margin-left:20px; margin-bottom:3px;" /></a></span>
	          <br>
	          <span class="nav-header">In This Section</span> 
	          <a href="${pageContext.request.contextPath }/myroom/${authUser.no}?submenu=myroom" class="nav-link first" id="myroom">
	            MY ROOM
	            <small>나의 방</small>
	            <i class="fa fa-angle-right"></i>
	          </a>
	          <a href="${pageContext.request.contextPath }/myroom/clothes/${userNo}?submenu=wardrobe" class="nav-link" id="wardrobe">
	            WARDROBE 
	            <small>옷장</small>
	            <i class="fa fa-angle-right"></i>
	          </a>
	          <a href="${pageContext.request.contextPath }/myroom/codibook/${userNo}?submenu=codibook" class="nav-link" id="codibook">
	            CODI BOOK 
	            <small>코디 세트 보기</small>
	            <i class="fa fa-angle-right"></i>
	          </a>
	          <a href="${pageContext.request.contextPath }/myroom/codi/${userNo}?submenu=codi" class="nav-link" id="codi">
	            CODI 
	            <small>코디하기</small>
	            <i class="fa fa-angle-right"></i>
	          </a>
	        </div>
	      </div>
	    </div>

<form id="move" method="POST" action="#">
   <input id="mo" type="hidden" value="${sessionScope.authUser.no}">
</form>
   
<script type="text/javascript">	
$(document).ready(function(){

	//현재서브메뉴 선택
 	var submenu = "${param.submenu}";
 	thisSubMenu(submenu);
 	
	
	
	
	var mo=$('#mo').val();
	console.log(mo);
	$.ajax({	
		url : "${pageContext.request.contextPath }/user/image",		
			type : "post",
			data : {mo: mo},  
		 	dataType : 'json', 
			success : function(result){	
				console.log(result);
				console.log(result.profileDBName);
				profileRender(result.profileDBName);
				console.log("성공");
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
	});
	
	
	
});


function profileRender(result){
	var str ="";
	str+="<div style='text-align:center'><img src='${pageContext.request.contextPath }/upload/"+result+"' class='image-circle' />";
	str+="</div>";
	$("#hyj").append(str);	
	
}


function thisSubMenu(submenu){

	/* console.log("aaaaa");
	console.log(submenu);
	
	var tmp = $("#submenu a");
	console.log(tmp); */
	
	$("#submenu a").removeClass("active");
	$("#"+submenu).addClass("active");
	
}

</script>