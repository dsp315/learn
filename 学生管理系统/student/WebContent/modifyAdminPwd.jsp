<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>修改管理员密码</title>
	<!-- Bootstrap -->
	<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="./bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
	<script type="text/javascript" src="./js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
</head>>
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
			<h3 style="text-align: center;">修改密码</h3><hr>
			<form action="./ModAdmPwdServlet" method="post">
				<div class="form-group">
					<label for="oldPwd">原密码</label>
   					<input type="password" class="form-control" name="oldPwd" id="oldPwd" placeholder="原密码">
  				</div>
				<div class="form-group">
					<label for="pwd1">新密码</label>
   					<input type="password" class="form-control" name="pwd1" id="pwd1" placeholder="新密码">
  				</div>
  				<div class="form-group">
					<label for="pwd2">确认密码</label>
   					<input type="password" class="form-control" name="pwd2" id="pwd2" placeholder="确认密码">
  				</div>
  				
  				<div class="col-md-12" style="text-align: center;">&nbsp;</div>
  				<div class="col-md-12" style="text-align: center;">&nbsp;
  					<input type="submit" class="btn btn-primary" value="修改密码">
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