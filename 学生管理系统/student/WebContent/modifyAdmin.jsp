<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>修改信息</title>
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
			<h3 style="text-align: center;">修改信息</h3><hr>
			<form action="./ModAdmServlet" method="post">
				<div class="form-group">
					<label for="admNo">管理员编号</label>
   					<input type="text" value="${logAdmUser.admNo }" class="form-control" name="admNo" id="admNo" placeholder="编号" readonly="readonly">
  				</div>
				<div class="form-group">
    				<label for="admName">用户名</label>
   					 <input type="text" value="${logAdmUser.admName }" class="form-control" name="admName" id="admName" placeholder="用户名">
  				</div>
  				
  				<div class="col-md-12" style="text-align: center;">&nbsp;</div>
  				<div class="col-md-12" style="text-align: center;">&nbsp;
  					<input type="submit" class="btn btn-primary" value="修改">
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