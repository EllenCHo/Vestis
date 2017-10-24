<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	          <span class="h-name" style="text-align:center; padding:0;">
	          <c:if test="${authUser.no == userNo }">
	          	<a href="${pageContext.request.contextPath }/user/modifyform"><img src="${pageContext.request.contextPath }/assets/img/grey.png" width="20px" height="20px" style="margin-left:20px; margin-bottom:3px;" /></a>
	          </c:if>
	          </span>
	          <br>
	          <span class="nav-header">In This Section</span> 
	          <a href="${pageContext.request.contextPath }/myroom/${userNo}" class="nav-link first" id="myroom">
	            MY ROOM
	            <small>나의 방</small>
	            <i class="fa fa-angle-right"></i>
	          </a>
	          <a href="${pageContext.request.contextPath }/myroom/clothes/${userNo}" class="nav-link" id="wardrobe">
	            WARDROBE 
	            <small>옷장</small>
	            <i class="fa fa-angle-right"></i>
	          </a>
	          <a href="${pageContext.request.contextPath }/myroom/codibook/${userNo}" class="nav-link" id="codibook">
	            CODI BOOK 
	            <small>코디 세트 보기</small>
	            <i class="fa fa-angle-right"></i>
	          </a>
	          <a href="${pageContext.request.contextPath }/myroom/codi/${userNo}" class="nav-link" id="codi">
	            CODI 
	            <small>코디하기</small>
	            <i class="fa fa-angle-right"></i>
	          </a>
	        </div>
	      </div>
	    </div>

<script type="text/javascript">	
$(document).ready(function(){

	//현재서브메뉴 선택
 	var submenu = "${submenu}";
 	thisSubMenu(submenu);
 	
	var no=${userNo};
	$.ajax({	
		url : "${pageContext.request.contextPath }/user/getUserInfo",		
			type : "post",
			data : {"no": no},  
		 	dataType : 'json', 
			success : function(result){	
				console.log(result);
				console.log(result.profileDBName);
				profileRender(result.profileDBName);
				$('.h-name').prepend(result.nicname);
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