<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='icon' href='<%=request.getContextPath()%>/images/xiao.ico' type='image/x-ico' /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>投递记录</title>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/global.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/wdtdjlym.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap-table.css">
	<link type="text/css" rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
</head>
<body>
	<div class="bodyDiv">
		<div style="width: 100%;">
			<jsp:include page="navbarTop.jsp"></jsp:include>
		</div>
		<div class="wdtdjlBt">
			<h4>我的投递记录</h4>
		</div>
		<div class="lineDiv"></div>
		<div class="wdtdjlZt">
			<div>
				<select class="selectpicker">
							<option>全部状态</option>
							<option>已面试</option>
							<option>待反馈</option>
				</select>
				<select class="selectpicker">
							<option value="1">投递时间由近到远</option>
							<option value="2">投递时间由远到近</option>
				</select>
			</div>
			<table id="tb_departments"></table>
		</div>
	</div>

</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap-table.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap-table-zh-CN.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap-table-export.js"></script>
<script
	src="https://rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js"></script>
	<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/wdtdjlym.js"></script>
</html>