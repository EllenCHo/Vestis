<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/vendor/jquery/jquery-1.12.4.js"></script>

<!-- 부트스트랩 -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.js"></script>




<!-- Theme style -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/theme-style.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/theme-style.css" rel="stylesheet">


<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>


<c:import url="/WEB-INF/views/user/loginform.jsp"></c:import>

<style>
/* 테마css에서 쓰고 있음 */
/* .bg-faded {
	background-color: rgba(85, 167, 154, 0.9);
}
 */

.text-expanded {
	letter-spacing: 2px;
}
#head {
	/* background:#E4D0D0; */
	height:40px;
}

#inhead {
	margin-top:10px;
	
}
#loginhead {
	font-weight:bolder;
	color:#FFFFFF;
/* 수직 수평 정렬
		text-align:center;
	vertical-align:middle;
	*/
}
.loginhead{
	font-weight:bolder;
	color:#FFFFFF;
}

.point{
	cursor: pointer;
}

.gap{
	font-size: 15px !important;
	margin: 0px 20px 0px 0px !important;
}

a:link { text-decoration: none !important;}
a:visited { text-decoration: none !important;}
a:hover { text-decoration: none !important;}




</style>

<body>

<!-- 로그인 헤더 -->
<div class="header-upper">
	<div class="header-inner container">
		<div class="header-block-flex order-1 mr-auto">
		
		<c:choose>
			<c:when test="${empty sessionScope.authUser }">
			<!-- 로그인 전 -->
				<nav class="nav nav-sm header-block-flex">
					<a class="gap d-md-block text-uppercase point" data-role="button" data-toggle="modal" data-target="#loginpop">login</a>
					<a class="gap d-md-block text-uppercase" data-role="button" href="/Vestis/user/joinform">join</a>
				</nav>
			</c:when>
			<c:otherwise>	
				<!-- 로그인 후 -->
				<nav class="nav nav-sm header-block-flex">
				<a class="gap d-md-block text-uppercase" data-role="button" >${sessionScope.authUser.nicname}님</a>
				<a class="gap d-md-block text-uppercase" data-role="button" id="logout" href="/Vestis/user/logout">logout</a>
				</nav>
				
				<!-- <div class="space">
					<a data-role="button" id="loginhead" >님</button>
				</div>
				<div class="space">
					<a data-role="button" class="loginhead" id="logout" href="/Vestis/user/logout">로그아웃</a>
				</div> -->
			</c:otherwise>
		</c:choose>
			
			<!-- facebook 로그아웃 -->
		<script type="text/javascript">
		
		
			$("#logout").on("click", function() {
				FB.logout(function(response) {
		            // Person is now logged out
		            console.log("aa")
		         });
				/* 이렇게 하다가 아이디 하나 날아갔음 조심할것 
				FB.getLoginStatus(function(response) {
					if (response.status === 'connected') {
						FB.logout();
					}
				}); */
				
			});	
		</script>
			
			<div class="header-divider"> 
			</div>
		</div>
	</div>
	
</div>
<!-- 메인 헤더 -->
<div class="header">
<div class="header-inner container">
	<div class="header-brand">
	<a href="${pageContext.request.contextPath }/main" style="color:black"><h1>Vestis.</h1></a>
	<div class="header-divider d-none d-lg-block"></div>
								<!--위2개 없애도 됨 -->
	<div class="header-slogan">여러분의 옷장을 공유해보아요~ 환영합니다.</div>
		
	
		<ul class="h-snip1211" style="margin-left:172px;">
        	<li>
        	            	
        	<c:choose>
				<c:when test="${empty sessionScope.authUser }">
					<a id="roomheadd"  href="#">my room
                	<span class="sr-only">(current)</span>
              		</a>  
              			<script type="text/javascript">
              				$("#roomheadd").on("click",function(){
              					alert("로그인 해주세요");
              				});
              			</script>
				</c:when>
				<c:otherwise>
					<a  href="${pageContext.request.contextPath }/myroom/${authUser.no}?submenu=myroom">my room
                	<span class="sr-only">(current)</span>
              		</a>
				</c:otherwise>
			</c:choose>	
            </li>
           
            <li>
              	<a  href="${pageContext.request.contextPath }/cogell/list?currNo=1">codi gallery</a>
            </li>
            <li>
              	<a  href="/Vestis/market/list?currNo=1">market</a>
            </li>
            <li>
              	<a  href="/Vestis/center/list">service center</a>
            </li>
       
		</ul>
		
	</div>
</div>
</div>

</body>
</html>