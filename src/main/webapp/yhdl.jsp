<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='icon' href='<%=request.getContextPath()%>/images/xiao.ico' type='image/x-ico' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校企对接平台登录</title>
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
	background-color: #FFFFF0;
	margin: 0 auto;
	border-radius: 5px;
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

.dlbkztDiv label {
font-weight: normal;
}
</style>
<body>
	<div class="topDiv"></div>
	<div class="dlbkDiv">
		<div class="dlbkbtDiv">
			<span>校企对接平台</span>
		</div>
		<div class="dlbkztDiv">
			<form>
				<div class="form-group">
					<input type="text" class="form-control" id="yhzhInput"
						placeholder="邮箱或手机号或账号">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="yhmmInput"
						placeholder="密码">
				</div>
				<div class="form-group">
				
					<input type="radio" name="yhlx" checked="checked" value="1" id="xsInput" /><label for="xsInput">学生</label>&nbsp;&nbsp;
					<input type="radio" name="yhlx" value="2" id="qyInput" /><label for="qyInput">企业</label>&nbsp;&nbsp; 
					<input type="radio" name="yhlx" value="3" id="xxInput" /><label for="xxInput">学校</label>&nbsp;&nbsp;
				</div>
				<button id="yhdlButton" type="button"
					class="btn btn-default btn-block">登录</button>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-confirm.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/yhdl.js"></script>
</html>