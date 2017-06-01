<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='icon' href='<%=request.getContextPath()%>/images/xiao.ico' type='image/x-ico' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>密码修改</title>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jquery-confirm.css">
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.cookie.js"></script>
</head>
<style>
body {
	background-color: #FCFCFC;
}

.topDiv {
	height: 200px;
}

.dlbkDiv {
	width: 400px;
	height: 400px;
	background-color: #FFFFFF;
	margin: 0 auto;
}

.dlbkbtDiv {
	padding-top: 50px;
	padding-bottom: 30px;
	text-align: center;
	font-size: 35px;
}

.dlbkztDiv {
	padding: 0 30px;
}
</style>
<body>
	<div class="topDiv"></div>
	<div class="dlbkDiv">
		<div class="dlbkbtDiv">
			<span>修改密码</span>
		</div>
		<div class="dlbkztDiv">
			<form>
				<div class="form-group">
					<input type="password" class="form-control" id="xmmInput"
						placeholder="请输入新密码">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="qrxmmInput"
						placeholder="请再次输入新密码">
				</div>

				<div class="form-group">
					<input type="password" class="form-control" id="dlmmInput"
						placeholder="请输入旧密码">
				</div>

				<button id="qrxgButton" type="button"
					class="btn btn-default btn-block">确认修改</button>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-confirm.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/xgmm.js"></script>
</html>