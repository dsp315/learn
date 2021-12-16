<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="errMsgDialg" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel" style="color: red;font-weight: 900;" >错误</h4>
      </div>
      <div class="modal-body">
        <div class="row" style="color: red;font-weight: 900; ">
          <div class="col-md-10 col-md-offset-1" id="errMsgDiv">
          	${errMsg}
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primay" data-dismiss="modal">关闭</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script type="text/javascript">
	if("${errMsg}"){
		$("#errMsgDialg").modal("show");
	}
</script>
</body>
</html>