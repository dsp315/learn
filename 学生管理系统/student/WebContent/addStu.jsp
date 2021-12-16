<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>添加学生信息</title>
	<!-- Bootstrap -->
	<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="./bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
	<script type="text/javascript" src="./js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
</head>>
<body>

<!-- 导航栏  -->
<%@ include file="component/titleBar.jsp" %>
<!-- 主体 -->
<div class="container">
	<div class="row">
		<!-- 菜单栏 -->
		<div class="col-md-3 col-md-pull-2">
			<%@ include file="/component/mainMenu.jsp" %>
		</div>
		<!-- 主体 -->
		<div class="col-md-5 col-md-offset-2">
			<h3 style="text-align: center;">添加学生信息</h3><hr>
			<form action="./AddStuServlet" method="post">
  				<div class="form-group">
					<label for="stuName">学生名字</label>
   					<input type="text"class="form-control" name="stuName" id="stuName" placeholder="学生名字">
  				</div>
				<div class="form-group">
					<label for="stuAge">学生年龄</label>
   					<input type="text"class="form-control" name="stuAge" id="stuAge" placeholder="学生年龄">
  				</div>
  				<div class="form-group">
					<label for="stuAge">学生性别</label>
					<br>
  						<input type="radio" name="stuGender" id="stuGender" value="1">男
						&nbsp;&nbsp;
  						<input type="radio" name="stuGender" id="stuGender" value="0">女
  				</div>
  				<div class="form-group">
					<label for="stuCollege">学生学科</label>
						
						<select class="form-control" name="stuCollege">
							<option value="Philosophy">Philosophy</option>
							<option value="economics">economics</option> 
							<option value="Law">Law</option> 
							<option value="education">education</option> 
							<option value="literature">literature</option>
							<option value="History">History</option>  
							<option value="Neo Confucianism">Neo Confucianism</option> 
							<option value="Engineering and learning">Engineering and learning</option>
							<option value="Agronomy">Agronomy</option>
					 		<option value="Medicine">Medicine</option>
							<option value="Management">Management</option>
							<option value="Art">Art</option>
						</select>
						
  				</div>
  				<div class="form-group">
					<label for="stuHometown">学生家乡</label>
   					<input type="text"class="form-control" name="stuHometown" id="stuHometown" placeholder="学生家乡">
  				</div>
  				<div class="form-group">
					<label for="stuTel">学生电话</label>
   					<input type="text"class="form-control" name="stuTel" id="stuTel" placeholder="学生电话">
  				</div>
				  				
  				<div class="col-md-12" style="text-align: center;">&nbsp;</div>
  				<div class="col-md-12" style="text-align: center;">&nbsp;
  					<button type="submit" class="btn btn-info"><span class="glyphicon glyphicon-plus"></span></button>
  				</div>
			</form>
		</div>
	</div>
</div>

<!-- 错误消息提醒 -->
	<%@ include file="./component/errModalDialog.jsp" %>
<!-- 错误消息提醒end -->
</body>
</html>