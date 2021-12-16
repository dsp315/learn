<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>学生信息浏览</title>
	<!-- Bootstrap -->
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
	<script type="text/javascript" src="../js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function showUnDelStuDialog(stuNO, stuName){
		//设置对话框信息
		$("#delInfoSpan").html(stuNO + "&nbsp;|&nbsp;" + stuName);
		//设置提交的stuNO的input
		$("#stuNOInput").val(stuNO);
		
		$("#unDelStuDialog").modal("show");
	}
</script>
</head>
<body>
<!-- 提示是否删除的确认Dialog -->
<div id="unDelStuDialog" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel" style="font-weight: 900;">删除</h4>
      </div>
      <div class="modal-body">
        <div class="row" style="font-weight: 900;">
          <div class="col-md-10 col-md-offset-1">
	         	 是否确认删除学生<span id="delInfoSpan"></span>信息
          </div>
        </div>
      </div>
      <form action="./DelStuServlet">
      <input id="stuNOInput" type="hidden" name="stuNO" value="">
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="submit" class="btn btn-danger">删除</button>
      </div>
      </form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</body>
</html>