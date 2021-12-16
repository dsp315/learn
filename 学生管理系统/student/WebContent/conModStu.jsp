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
</head>
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
		<div class="col-md-9">
			<form action="./ModStuServlet" method="post">
			<c:forEach items="${list}" var="stu">
			<div class="form-group">
					<label for="stuNo">学生学号</label>
   					<input type="text" value="${stu.stuNo}" class="form-control" name="stuNo" id="stuNo" readonly="readonly">
  			</div>
  			<div class="form-group">
					<label for="stuName">学生姓名</label>
   					<input type="text" value="${stu.stuName}" class="form-control" name="stuName" id="stuName">
  			</div>
  			<div class="form-group">
					<label for="stuAge">学生年龄</label>
   					<input type="text" value="${stu.stuAge}" class="form-control" name="stuAge" id="stuAge">
  			</div>
  			<div class="form-group">
					<label for="stuGender">学生性别</label><br>
   						<!-- <input type="text" value="${stu.stuGender}" class="form-control" name="stuGender" id="stuGender"> -->
					
  						<input type="radio" name="stuGender" id="stuGender" value="${stu.stuGender}">男
						&nbsp;&nbsp;
  						<input type="radio" name="stuGender" id="stuGender" value="${stu.stuGender}">女
  			</div>
  			<div class="form-group">
					<label for="stuCollege">学生专业</label>
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
   					<!-- <input type="text" value="${stu.stuCollege}" class="form-control" name="stuCollege" id="stuCollege"> -->
  			</div>
  			<div class="form-group">
					<label for="stuHometown">学生家乡</label>
   					<input type="text" value="${stu.stuHometown}" class="form-control" name="stuHometown" id="stuHometown">
  			</div>
  			<div class="form-group">
					<label for="stuTel">学生电话</label>
   					<input type="text" value="${stu.stuTel}" class="form-control" name="stuTel" id="stuTel">
  			</div>
  			<div class="col-md-12" style="text-align: center;">&nbsp;</div>
  			<div class="col-md-12" style="text-align: center;">&nbsp;
  			 <button type="submit" class="btn btn-warning">修改</button>
			</div>
			</c:forEach>
			</form>
		</div>
	</div>
</div>

<!-- 错误消息提醒 -->
	<%@ include file="./component/errModalDialog.jsp" %>
<!-- 错误消息提醒end -->
</body>
</html>