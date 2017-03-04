<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>岗位应聘学生信息</title>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap-table.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/global.css">
	<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/qy/gwypxsym.css">
</head>
<body>
<div class="bodyDiv">
    <div style="width: 100%;">
			<jsp:include page="qyNavbarTop.jsp"></jsp:include>
		</div>
		<div class="xsypBt">
			<h4 id="gwmcH4" style="display: inline;"></h4>&nbsp;&nbsp;应聘学生
		</div>
		<div class="lineDiv"></div>
		<div>
		<table id="tb_departments">
		</table>
		</div>
</div>
</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap-table.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap-table-zh-CN.js"></script>
	<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/qy/gwypxsym.js"></script>
</html>