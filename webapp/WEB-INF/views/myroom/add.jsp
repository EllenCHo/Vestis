<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>add</title>
	
    <!-- Custom fonts for this template -->
    <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
 -->

    <!-- Custom styles for this template -->
    <%-- <link href="${pageContext.request.contextPath}/assets/css/business-casual.css" rel="stylesheet"> --%>
    <!-- 사이즈작아짐 -->
  <!--   <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">-->
    
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://www.expertphp.in/js/jquery.form.js"></script> -->

<!-- Theme style -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/theme-style.min.css" rel="stylesheet">
	
<style>

.co{
	display:flex;
	width:80%;
	height:600px;
	float:left;
	border-width:1px;
    border-style:solid;
    border-color:#949494;
    margin-left:30px;
    margin-right:20px;
	/* margin:50px; */
	 
}

.ro {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
}

.lo{
	margin:20px;
	float:left;
}

 #formdiv {
  text-align: center;
}
#file {
  color: green;
  padding: 5px;
  border: 1px dashed #123456;
  background-color: #f9ffe5;
}
#img {
  width: 17px;
  border: none;
  height: 17px;
  margin-left: -20px;
  margin-bottom: 191px;
}
.upload {
  width: 100%;
  height: 30px;
}
.previewBox {
  text-align: center;
  position: relative;
  width: 150px;
  height: 150px;
  margin-right: 10px;
  margin-bottom: 20px;
  float: left;
}
.previewBox img {
  height: 150px;
  width: 150px;
  padding: 5px;
  border: 1px solid rgb(232, 222, 189);
}
.delete {
  color: red;
  font-weight: bold;
  position: absolute;
  top: 0;
  cursor: pointer;
  width: 20px;
  height:  20px;
  border-radius: 50%;
  background: #ccc;
} 

.imgSize{
	width:300px;
	height:300px;
}
.add{
	background-image: url('/Vestis/assets/img/back5.jpg');
	background-size:100%;
	width : 100%;
	height : 200px;
	text-align: center;
	padding-bottom:80px;
	padding-top:80px;
}
</style>


</head>
<body>

<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


<div class="add">
	<div class="container">
	<h3>plus</h3>
	</div>
</div>

<div class="container" id="about">
	<div class="row">

<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>


<!-- ---------------------------------------------------------------------- -->


	  	
		<div class="col-md-9 co bg-faded p-4  ro tb2">
		    <div class="lo">
			<select type="text" id="clothNum"	class=" form-control left h-border-color" style="margin-top:4px;" role="multiselect">
				<option value="0"   selected="selected">옷 분류</option>
				<option value="1" >외투</option>
				<option value="2" >상의</option>
				<option value="3" >하의</option>
				<option value="4" >신발</option>
				<option value="5" >악세사리</option>
			</select>
			</div>
		
			 <form id="uploadImage" action="${pageContext.request.contextPath }/myroom/upload/${userNo}" method="post" enctype="multipart/form-data" >
			  <div class="lo">
			      <input type="file" class="form-control h-border-color" id="images" name="file" onchange="preview_images();"/>
			      <input id="valh" name="valh" type="hidden" ></input>   <!-- 옷종류번호 -->
			      <input type="hidden" name="huserNo" value="${sessionScope.authUser.no}"></input>
			  </div>
			  </form>
			  <div class="lo">
			      <button id="submitBtn" class="tb4 btn btn-primary" name='submit_image'>submit</button>
			  </div>
			  
			
				<script type="text/javascript">
					function preview_images() 
					{
				 		var total_file=document.getElementById("images").files.length;
				 		for(var i=0;i<total_file;i++){
				  			$('#image_preview').append("<div class='col-md-3'><img class='imgSize' src='"+URL.createObjectURL(event.target.files[i])+"'></div>");
				 		}
					}
				</script>
    		 
			 
			<script type="text/javascript">
			$('#clothNum').blur(function() {
				   var val=$('#clothNum').val();
				   console.log(val);
				   $('#valh').val(val);
				   });
			</script>
		 	<div class="row" id="image_preview"></div>
         
		</div>
		
	</div>
</div>

	
	
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
 	

</body>

<script type="text/javascript">
	$('#submitBtn').on("click", function() {
		var val=$('#clothNum').val();
		var fileVal=$('#images').val();
		
		if(val != 0 && fileVal != "") {
			console.log("사진 업로드");
			$('#uploadImage').submit();
		}
		console.log(val);
		console.log(fileVal);
	});
</script>
</html>