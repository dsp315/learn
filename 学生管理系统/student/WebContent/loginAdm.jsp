<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>登录</title>
	<!-- Bootstrap -->
	<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="./bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
	<script type="text/javascript" src="./js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
	<style type="text/css">
	.bodyBackgroundPic{
		background: url("./imgPic/123.png") no-repeat;
  		height: 100%;
  		width: 100%;
		background-size: cover;
	}
	.NoMove{
	position: fixed;
	top: 200px;
	width: 200px;
	text-align: center;
	}
	.listGroupItem{
	background-color: rgb(0, 206, 201,0.3);
	
	}
</style>
</head>
<body class="bodyBackgroundPic">
<!-- 导航栏 -->
<%@ include file="./component/titleBar.jsp"  %> 
<!-- 导航栏end -->
<div class="container">
	<div class="row">
		<!-- 菜单 -->
		<div class="col-md-3 col-md-pull-2;" >
			<div class="panel-group NoMove" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-primary">
    <div class="panel-heading" role="tab" id="headingEcchartsView">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#ecchartsView" aria-expanded="true" aria-controls="ecchartsView">
          学生信息管理
        </a>
      </h4>
    </div>
    <div id="ecchartsView" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingEcchartsView">
    	<ul class="list-group">
    		<li class="listGroupItem"><a style="color: black;" href="./CheckAllStuServlet?page=view">浏览学生信息</a></li>
  			<li class="listGroupItem"><a style="color: black;" href="./CheckAllStuServlet?page=que">查询学生信息</a></li>
  			<li class="listGroupItem"><a style="color: black;" href="./CheckAllStuServlet?page=add">添加学生信息</a></li>
  			<li class="listGroupItem"><a style="color: black;" href="./CheckAllStuServlet?page=del">删除学生信息</a></li>
  			<li class="listGroupItem"><a style="color: black;" href="./CheckAllStuServlet?page=mod">修改学生信息</a></li>
		</ul>
    </div>
  </div>
  <div class="panel panel-primary">
    <div class="panel-heading" role="tab" id="headingUsersMgr">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#usersMgr" aria-expanded="false" aria-controls="usersMgr">
          管理员信息
        </a>
      </h4>
    </div>
    <div id="usersMgr" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingUsersMgr">
    	<ul class="list-group">
  			<li class="listGroupItem"><a style="color: black;" href="./CheckModAdmServlet">修改信息</a></li>
  			<li class="listGroupItem"><a style="color: black;" href="./CheckAdmPwdServlet">修改密码</a></li>
		</ul>
    </div>
  </div>
</div>
		</div>
		<!-- 菜单end -->
		<!-- 主体 -->
		<div class="col-md-5 col-md-offset-2" style="opacity: 0.8">
			<h3 style="text-align: center; color: #0984e3;">登录</h3><hr>
			<div style="opacity: 0.8">
			<form action="./LoginAdmServlet" method="post" >
				<div class="form-group">
					<label for="admNo">管理员编号</label>
   					<input type="text" class="form-control" name="admNo" id="admNo" placeholder="管理员编号">
  				</div>
				<div class="form-group">
					<label for="admPwd">管理员密码</label>
   					<input type="password" class="form-control" name="admPwd" id="admPwd" placeholder="管理员密码">
  				</div>
  				<div class="col-md-12" style="text-align: center;">&nbsp;</div>
  				<div class="col-md-12" style="text-align: center;">&nbsp;
  					<input type="submit" class="btn btn-primary" value="用户登陆">
  				</div>
			</form>
			</div>
		</div>
		<!-- 主体end -->
	</div>
</div>
<!-- 错误消息提醒 -->
	<%@ include file="./component/errModalDialog.jsp" %>
<!-- 错误消息提醒end -->
</div>
</body>
</html>