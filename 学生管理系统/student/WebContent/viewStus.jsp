<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<table class=" table table-hover table-striped">
				<thead>
					<tr>
						<th>学生学号</th><th>学生姓名</th><th>学生年龄</th><th>性别</th><th>学院</th><th>家乡</th><th>电话</th><th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${proList }" var="pro">
						<tr>
							<td>${pro.stuNo}</td><td>${pro.stuName}</td><td>${pro.stuAge}</td>
							<td>${pro.stuGender == 1?"男":"女"}</td>
							<td>${pro.stuCollege}</td><td>${pro.stuHometown}</td><td>${pro.stuTel}</td>
							<td>
								<a href="${pageContext.request.contextPath}/ConModStuServlet?stuNo=${pro.stuNo}"><span class="glyphicon glyphicon-pencil"></span></a>&nbsp;&nbsp;
							 	<a href="javascript:showUnDelStuDialog('${pro.stuNo}', '${pro.stuName}')"><span class="glyphicon glyphicon-trash"></span></a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- 主体end -->
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