<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function showUnLoginDialog(){
		$("#unLoginDialog").modal("show");
	}
</script>
</head>
<body>
<!-- 提示是否退出的确认Dialog -->
<div id="unLoginDialog" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel" style="font-weight: 900;">退出</h4>
      </div>
      <div class="modal-body">
        <div class="row" style="font-weight: 900;">
          <div class="col-md-10 col-md-offset-1">
	         	 是否确认退出登录
          </div>
        </div>
      </div>
      <form action="./UnloginAdmServlet">
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="submit" class="btn btn-primary">退出登录</button>
      </div>
      </form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- 导航栏 -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="#">嘻哈大学</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">浏览 <span class="sr-only">(current)</span></a></li>
        <li><a href="#">管理</a></li>
      </ul>
      <ul class="nav navbar-right">
        <li>
        	<c:if test="${empty logAdmUser }">
        		<a href="./loginAdm.jsp" style="line-height: 30px;color: white;"><span class="glyphicon glyphicon-user"></span></a>
       		</c:if>
       		<c:if test="${not empty logAdmUser }">
        		<a href="javascript:showUnLoginDialog()" style="line-height: 30px;color: white;">${logAdmUser.admName}</a>
       		</c:if>
        </li>
      </ul>
      
      <form class="navbar-form navbar-right" action="#" method="post">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
      </form>
    </div>
  </div>
</nav>

</body>
</html>