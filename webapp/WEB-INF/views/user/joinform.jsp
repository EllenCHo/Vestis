<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Vestis-Login</title>
    <!-- 구글맵  위도 경도 구할때 사용  -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJKNfD945xU1q-W9XikGXR5zNnas7fJLo"></script>
    
	<!-- 부트스트랩세트3개  -->
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.js"></script>	
    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/css/business-casual.css" rel="stylesheet">
	
	
	<style>
	
	/* ------------------------------------------------------------------------ */
	/* 완전 겉 테두리 */
.table-bordered {
  border: 1px solid #bcbdc1 !important;
}

/* 전체 테두리 */
.table-bordered th,
.table-bordered td {
  border: 1px solid  #bcbdc1 !important;
  text-align: center;
}

.table-bordered thead th,
.table-bordered thead td {
 /* 번호,제목,작성자,작성일 밑 테두리 */
  border-bottom-width: 3px !important;
  text-align: center;
  font-weight:bold;
}


.table th, .table td {
	padding-top:5px;/* !important; */
	padding-bottom:5px;
}
.table th{
font-weight:bold !important;
}
.table td{
font-weight:bold;
}


#butn1{
width:90px;
height:30px;
font-weight:bold !important;
}


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
	
	
	/* ------------------------------------------------------------------------ */
	
	#joinform{
		background:white;
		margin-top:15px;
   		height: 550px;
		margin-bottom:10px;
	}
	.form-signin {
		position: relative;
		top:60px;
		width: 600px;
		background:white;
		/* text-align:center; */
		margin:auto;
	
	}
	
	
	/* .row > .col-md-7 {
		padding-right:3px;
	}
	
	.row > .col-md-2 {
		padding-left:3px;
		background:white;
	} */
	
	#sns {
		text-align:center;
		position:relative;
		left:250px;
		margin-top:30px;
	}
	
	#facebook {
		width: 600px;
		margin:auto;
		margin-top:5px;
		color: white;
	}
	#kakaotalk {
		width: 600px;
		margin:auto;
		margin-top:10px;
	}
	
	#default {
		width: 600px;
		margin:auto;
		margin-top:10px;
		margin-bottom:10px;
	}
	
	/* 바꾸기  */
	#joinName {
		text-align: center;
		font-weight: bold;
		padding: 15px;
		height: 50px;
		margin-bottom: 3px;
	}
	
	#btnb {
		margin-top:10px;
		background:#404040;
		width: 600px;
		margin: auto;
	}
	
	#birth_form {
		height: 30px;
		margin-top: 10px;
		margin-left: 170px !important;
	}
	
	#gender {
		margint-left:10px;
	}

	#add {
		margin-top:10px;
	}
	
	#sns {
		color: red;
		font-weight: bold;
	}
	
	#teach {
		colore: #736464;
		/* font-weight:bold; */
		
	}
	
	#addName{
		font-weight:bold;
	}
	#email {
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
		width:125px;
	}
	#passwords {
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
		width:125px;
	}
	#passwordd {
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
		width:125px;
	}
	#name {
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
		width:125px;
	}
	#nicname {
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
		width:125px;
	}
	#phone {
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
		width:125px;
	}
	.table-responsive{
	padding:10px;
	padding-top:30px !important;
	border: 1px solid  #bcbdc1 !important;
	}
	</style>
	
	
	
	<script language="javascript" charset="UTF-8">

function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrCoordUrl.do)를 호출하게 됩니다.
	var pop = window.open("${pageContext.request.contextPath }/user/addressform","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	console.log("도착");

	
}


function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo,entX,entY){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	/* console.log(roadAddrPart1);
	console.log(roadAddrPart2);
	console.log(roadFullAddr); */
	/* document.form.roadFullAddr.value = roadFullAddr; */
	$('#roadFullAddr').val(roadFullAddr);
	/* $('#entX').val(entX);
	$('#entY').val(entX); */
	
	
	/* document.form.roadAddrPart1.value = roadAddrPart1;
	document.form.roadAddrPart2.value = roadAddrPart2;
	document.form.addrDetail.value = addrDetail;
	document.form.engAddr.value = engAddr;
	document.form.jibunAddr.value = jibunAddr;
	document.form.zipNo.value = zipNo;
	document.form.admCd.value = admCd;
	document.form.rnMgtSn.value = rnMgtSn;
	document.form.bdMgtSn.value = bdMgtSn;
	document.form.detBdNmList.value = detBdNmList;
	document.form.bdNm.value = bdNm;
	document.form.bdKdcd.value = bdKdcd;
	document.form.siNm.value = siNm;
	document.form.sggNm.value = sggNm;
	document.form.emdNm.value = emdNm;
	document.form.liNm.value = liNm;
	document.form.rn.value = rn;
	document.form.udrtYn.value = udrtYn;
	document.form.buldMnnm.value = buldMnnm;
	document.form.buldSlno.value = buldSlno;
	document.form.mtYn.value = mtYn;
	document.form.lnbrMnnm.value = lnbrMnnm;
	document.form.lnbrSlno.value = lnbrSlno;
	document.form.emdNo.value = emdNo; */
	/* document.form.entX.value = entX;
	document.form.entY.value = entY;  */
	
	
	console.log("시작");
	var faddr = roadAddrPart1;
	var geocode;
	
	geocoder = new google.maps.Geocoder();
	geocoder.geocode( { 'address': faddr}, function(results, status) {

		if (status == google.maps.GeocoderStatus.OK) {
			console.log("확인");
			console.log(results);
			 var lat = results[0].geometry.location.lat();
             var lng = results[0].geometry.location.lng();
             $('#lat').val(lat);
         	 $('#lng').val(lng);
             /* $("#lat").html(lat);
             $("#lng").html(lng); */
		} else {
			var faddr_lat = "";
			var faddr_lng = "";
		}

		/* alert('주소 : ' + faddr + '\n\n위도 : ' + lat + '\n\n경도 : ' + lng);
		
		 */
	});
	
}

</script>

  </head>
  <body>

   
	

	
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	
<div class="myroomimg">
	<div class="container">
		<h3>Login</h3>
	</div>
</div>

<div class="container" id="about">
	<div class="row">
 
 
 <!-- =================================================================================== -->  
   
   
<div id="joinform" class="col-md-12">
    
	<div class="title">
		<span style="color:#292b2c">Login</span>
	</div>
    <div class="table-responsive">
    <div class="col-md-10 container" >
  		<table class="table table-bordered table-cart" id="tb">
	 		<form class="form-signin" method="get" action="${pageContext.request.contextPath }/user/join" disabled>
  				
  			<div class="col-md-9 container" style="margin-left: 160px;">	
  				
  				<!-- 아이디 적는란 -->
  		<div class="row" style="margin: auto;">		
  			<div class="col-md-10">	
  				<label for="inputEmail" class="sr-only">Email address</label>
   				<input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email address" style="margin-bottom: 5px !important;">
   			</div>	
   				<div class="col-md-2">
   					<input id="email" disabled></input>
   				</div>
   		</div>
   					
   				<!-- 비밀번호 적는란 -->
   		<div class="row" style="margin: auto;">		
  			<div class="col-md-10" >	
  				<label for="inputPassword" class="sr-only">Password</label>
   				<input type="password" id="inputPassword" value="" name="password" class="form-control" placeholder="Password" style="margin-bottom: 5px !important;">
   			</div>
   				<div class="col-md-2">
   					<input id="passwordd" disabled></input>
   				</div>
   		</div>
   				
   				<!-- 비밀번호 확인 란 -->
   		<div class="row" style="margin: auto;">		
  			<div class="col-md-10">		
  				<label for="inputPasswords" class="sr-only">Passwords</label>
   				<input type="password" id="inputPasswords" name="passwords" value="" class="form-control" placeholder="Password확인" style="margin-bottom: 5px !important;">
   			</div>	
   				<div class="col-md-2">
   					<input id="passwords" disabled></input>
   				</div>
   		</div>		
   				<!-- 이름 적는란 -->
   		<div class="row" style="margin: auto;">		
  			<div class="col-md-10">		
  				<label for="inputName" class="sr-only">Name</label>
   				<input type="text" id="inputName" name="name" class="form-control" placeholder="Name" style="margin-bottom: 5px !important;">
   			</div>	
   				<div class="col-md-2">
   					<input id="name" disabled></input>
   				</div>
   		</div>
   			
   				<!-- 닉네임 적는란 -->
   		<div class="row" style="margin: auto;">		
  			<div class="col-md-10">		
  				<label for="inputNicname" class="sr-only">Nicname</label>
   				<input type="text" id="inputNicname" name="nicname" class="form-control" placeholder="Nicname" style="margin-bottom: 5px !important;">
   			</div>		
   				<div class="col-md-2">
   					<input id="nicname" disabled>
   				</div>
   			</div>
   			
   					
   				<!-- 핸드폰 번호 적는란 -->
   		<div class="row" style="margin: auto;">		
  			<div class="col-md-10">			
  				<label for="inputPhone" class="sr-only">inputPhone</label>
   				<input type="text" id="inputPhone" name="phone" class="form-control" placeholder="inputPhone" style="margin-bottom: 5px !important;">
   			</div>
   			<div class="col-md-2">	
   				<input id="phone" disabled>
   			</div>
   		</div>		
  			
  					<!-- 주소입력 란 -->			
					<div id="list" ></div>
					<div id="callBackDiv">
						<table style="margin-Left: 188px;">
							<tr>
								<td><input type="text" style="width: 410px !important;"
									id="roadFullAddr" name="address" />
									<span><input id="add" type="button" onClick="goPopup();" value="주소검색" /></span>
								</td>
							</tr>
							
							
							<tr>
							<!-- <td></td> -->	
								<td><input type="hidden" style="width: 500px;" id="lat" name="lat" /></td>
							</tr>
							<tr>
								<td><input type="hidden" style="width: 500px;" id="lng" name="lon" /></td>
							</tr>
						</table>
						<div id="birth_form" style="margin-left: 190px !important;">
						<tr>
							<th class="title">생년월일</th>
								<td class="birth"><select id="birthyear" name="birthyear" class="MS_select MS_birthday">
									<option value="">선택</option><option value="1920">1920</option><option value="1921">1921</option><option value="1922">1922</option><option value="1923">1923</option><option value="1924">1924</option><option value="1925">1925</option><option value="1926">1926</option><option value="1927">1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option></select>년<select id="birthmonth"name="birthmonth" class="MS_select MS_birthday">
									<option value="">선택</option><option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>월<select id="birthday" name="birthday" class="MS_select MS_birthday">
									<option value="">선택</option><option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>일&nbsp;&nbsp;<input id="gender" type="radio" name="gender" value="male" class="MS_radio">남 <input id="gender" type="radio" name="gender" value="female" class="MS_radio" checked="">여</td>
						</tr>
				
  						</div>
  						<br>
  						<button class="btn btn-lg btn-primary btn-block" id="btnb" type="button">회원가입 완료</button>
						<a href="${pageContext.request.contextPath }/main" class="btn btn-lg btn-info btn-block" id="default">메인으로</a>	
				</div> <!-- col-10 -->
				
			<br>
      </form>
    </table>
    </div>
    </div>
   </div> <!-- responsive -->
   <br><br><br><br><br>
 </div> <!-- 조인폼 -->
</div> <!-- 첫 row -->
   
</div> <!-- container -->
<br>
   <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	
	
	
	
  </body>
<script type="text/javascript">	
$('#inputEmail').blur(function() {
	var email=$('#inputEmail').val();
	console.log(email);
	if( email==""){
		$('#email').val("X");
		var element = document.getElementById("email");
		element.style.fontSize = "13pt";
		/* element.style.color = "#03FA38"; */
		element.style.color = "#ff0000";

		
		return false;
	} else {
		$.ajax({	
  			url : "${pageContext.request.contextPath }/user/idcheck",		
  			type : "post",
  			data : {email: email},  
  		 	dataType : 'text', 
  			success : function(result){	//list-ajax에서 보낸 것을 guestbook으로 받음
  				if(result==1){
  					$('#email').val("O");
  					var element = document.getElementById("email");
  					element.style.color = "#03FA38";
  					return true;
  				} else if(result==2){
  					$('#email').val("X(중복)");
  					var element = document.getElementById("email");
  					element.style.color = "#ff0000";
  					return false;
  				}
  			},
  			error : function(XHR, status, error) {
  				console.error(status + " : " + error);
  			}
  		});
		
	}
	
	});
	
$('#inputName').blur(function() {
	var name=$('#inputName').val();
	console.log(name);
	if(name==""){
		$('#name').val("X");
		var element = document.getElementById("name");
		element.style.color = "#ff0000";
		return "false";
	} else {
		$('#name').val("O");
		var element = document.getElementById("name");
		element.style.color = "#03FA38";
		return "true";	
	}
	
	});
	
$('#inputNicname').blur(function() {
	var nicname=$('#inputNicname').val();
	console.log(nicname);
	if(nicname==""){
		$('#nicname').val("X");
		var element = document.getElementById("nicname");
		element.style.color = "#ff0000";
		return false;
	} else {
		$('#nicname').val("O");
		var element = document.getElementById("nicname");
		element.style.color = "#03FA38";
		return true;	
	}
	
	});	

$('#inputPasswords').blur(function() {
	
	var password=$("#inputPassword").val();
	var passwords=$("#inputPasswords").val();
	console.log("1"+password);
	console.log("2"+passwords);
	
	if(password==passwords){
		if(password ==""){
			
			$('#passwordd').val("X");
			var elements = document.getElementById("passwordd");
			elements.style.color = "#ff0000";
			return false;
		} else {
		
			$('#passwordd').val("O");	
			$('#passwords').val("O");
			var element = document.getElementById("passwords");
			var elements = document.getElementById("passwordd");
			element.style.color = "#03FA38";
			elements.style.color = "#03FA38";
			
			return true;
		}
		
	} else {
	
		$('#passwordd').val("X(같지않습니다.)");
		var elements = document.getElementById("passwordd");
		elements.style.color = "#ff0000";
		return false;
	}
	
});
	
$('#inputPassword').blur(function() {
	
	var password=$("#inputPassword").val();
	var passwords=$("#inputPasswords").val();
	console.log("1"+password);
	console.log("2"+passwords);
	
	if(password==passwords){
		if(password == ""){
			$('#passwords').val("X");
			var element = document.getElementById("passwords");
			element.style.color = "#ff0000";
			
			return false;
		} else {
			
			$('#passwords').val("O");	
			$('#passwordd').val("O");	
			var element = document.getElementById("passwords");
			var elements = document.getElementById("passwordd");
			element.style.color = "#03FA38";
			elements.style.color = "#03FA38";
			
			return true;
		}
		
	} else {
		$('#passwords').val("X(같지 않습니다)");
		var element = document.getElementById("passwords");
		element.style.color = "#ff0000";
		
		return false;
	}
	
});
	
$('#inputPhone').blur(function() {
	var phone=$('#inputPhone').val();
	console.log(phone);
	console.log($.isNumeric(phone));
	if($.isNumeric(phone)){
		if(phone==""){
			console.log("빈칸");
			$('#phone').val("X");
			var element = document.getElementById("phone");
			element.style.color = "#ff0000";
			
			return false;
		} else {
			console.log("숫자 입니다.");
			
			$('#phone').val("O");
			var element = document.getElementById("phone");
			element.style.color = "#03FA38";
			return true;
		}
	} else {
		console.log("숫자 아닙니다.");
		$('#phone').val("X(숫자만)");
		var element = document.getElementById("phone");
		element.style.color = "#ff0000";		
		return false;
	}
});

$("#btnb").on("click",function(){
	var email=$('#inputEmail').val();
	var password=$('#inputPassword').val();
	var passwords=$('#inputPasswords').val();
	var name=$('#inputName').val();
	var nicname=$('#inputNicname').val();
	var phone=$('#inputPhone').val();
	var address=$('#roadFullAddr').val();
	var birthyear=$('#birthyear').val();
	var birthmonth=$('#birthmonth').val();
	var birthday=$('#birthday').val();
	var lat=$('#lat').val();
	var lng=$('#lng').val();
	
	console.log(address);
	console.log(birthyear);
	console.log(birthmonth);
	console.log(birthday);
	console.log(lat);
	console.log(lng);

	var checkpoint;
	$.ajax({	
			url : "${pageContext.request.contextPath }/user/idcheck",		
			type : "post",
			data : {email: email},  
		 	dataType : 'text', 
			success : function(result){	//list-ajax에서 보낸 것을 guestbook으로 받음
				checkpoint=result;
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	

	
	if(email=="" || password=="" || passwords=="" || name=="" || nicname=="" || phone=="" || address=="" || birthyear=="" || birthmonth=="" || birthday==""){
		alert("입력을 안한 값이 있습니다.");
		return false;
	} else if(password !=passwords) {
		alert("비밀번호가 같지 않습니다.");
		return false;
	} else if( !$.isNumeric(phone)){
		alert("번호에 숫자만 넣으십시오");
		return false;
	} else if(checkpoint==2){
		alert("이메일이 중복됩니다.!");
		return false;
	} else if(lat=="" || lng==""){
		alert("주소값은 주소검색을 통해서 넣어주세요")
	} else {
		alert("회원가입에 성공하셨습니다.");
		$('.form-signin').submit();
	}
	
});
</script>
</html>
