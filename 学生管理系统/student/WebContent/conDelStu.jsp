<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>学生信息浏览</title>
	<!-- Bootstrap -->
	<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="./bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
	<script type="text/javascript" src="./js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 标题栏 -->
	<%@ include file="./component/titleBar.jsp"  %>
<!-- 标题栏完 -->
<div class="container">
	<div class="row">
		<!-- 菜单 -->
		<div class="col-md-3 col-md-pull-2">
			<%@ include file="./component/mainMenu.jsp" %>
		</div>
		<!-- 菜单end -->
		<!-- 主体 -->
		<div class="col-md-9">
			<c:forEach items="${list}" var="stu">
			<div class="form-group">
					<label for="stuNo">学生学号</label>
   					<input type="text" value="${stu.stuNo}" class="form-control" name="stuNo" id="stuNo" readonly="readonly">
  			</div>
  			<div class="form-group">
					<label for="stuName">学生姓名</label>
   					<input type="text" value="${stu.stuName}" class="form-control" name="stuName" id="stuName" readonly="readonly">
  			</div>
  			<div class="form-group">
					<label for="stuAge">学生年龄</label>
   					<input type="text" value="${stu.stuAge}" class="form-control" name="stuAge" id="stuAge" readonly="readonly">
  			</div>
  			<div class="form-group">
					<label for="stuGender">学生性别</label>
   					<input type="text" value="${stu.stuGender}" class="form-control" name="stuGender" id="stuGender" readonly="readonly">
  			</div>
  			<div class="form-group">
					<label for="stuCollege">学生专业</label>
   					<input type="text" value="${stu.stuCollege}" class="form-control" name="stuCollege" id="stuCollege" readonly="readonly">
  			</div>
  			<div class="form-group">
					<label for="stuHometown">学生家乡</label>
   					<input type="text" value="${stu.stuHometown}" class="form-control" name="stuHometown" id="stuHometown" readonly="readonly">
  			</div>
  			<div class="form-group">
					<label for="stuTel">学生电话</label>
   					<input type="text" value="${stu.stuTel}" class="form-control" name="stuTel" id="stuTel" readonly="readonly">
  			</div>
  			<div class="col-md-12" style="text-align: center;">&nbsp;</div>
  			<div class="col-md-12" style="text-align: center;">&nbsp;
  			<a href="javascript:showUnDelStuDialog()" class="btn btn-danger btn-lg active" role="button">删除</a>
			</div>
			</c:forEach>
		</div>
	</div>
</div>
<!-- 错误消息提醒 -->
	<%@ include file="./component/errModalDialog.jsp" %>
<!-- 错误消息提醒end -->
<!-- 删除消息提醒 -->
	<%@ include file="./component/UnDelStuDialog.jsp" %>
<!-- 删除消息提醒end -->
</body>
</html>