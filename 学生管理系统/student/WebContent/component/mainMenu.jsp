<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.NoMove{
	position: fixed;
	top: 200px;
	width: 200px;
	text-align: center;
	}
	.listGroupItem{
	background-color: white;
	color: #8c7ae6;
	}
</style>
</head>
<body>
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
    		<li class="list_group_item"><a href="./CheckAllStuServlet?page=view">浏览学生信息</a></li>
  			<li class="list_group_item"><a href="./CheckAllStuServlet?page=que">查询学生信息</a></li>
  			<li class="list_group_item"><a href="./CheckAllStuServlet?page=add">添加学生信息</a></li>
  			<li class="list_group_item"><a href="./CheckAllStuServlet?page=del">删除学生信息</a></li>
  			<li class="list_group_item"><a href="./CheckAllStuServlet?page=mod">修改学生信息</a></li>
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
  			<li class="list_group_item"><a href="./CheckModAdmServlet">修改信息</a></li>
  			<li class="list_group_item"><a href="./CheckAdmPwdServlet">修改密码</a></li>
		</ul>
    </div>
  </div>
</div>
</body>
</html>