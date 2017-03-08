<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='icon' href='<%=request.getContextPath()%>/images/xiao.ico'
	type='image/x-ico' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学校分析统计</title>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/global.css">
<style type="text/css">
.rsDiv {
text-align: center;
font-weight: bold;
font-size: 24px;
}
</style>
</head>
<body>
	<div class="bodyDiv">
		<div style="width: 100%;">
			<jsp:include page="xxNavbarTop.jsp"></jsp:include>
		</div>
		<div>

			<div class="container-fluid">
				<div class="row">
					<div class="col-md-4">
						<div class="panel panel-default">
							<div class="panel-heading">本校投递简历人数</div>
							<div id="bxtdjlrsDiv" class="panel-body rsDiv"></div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="panel panel-default">
							<div class="panel-heading">投递简历人数中被邀面试的人数</div>
							<div id="bxbymsrsDiv" class="panel-body rsDiv"></div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="panel panel-default">
							<div class="panel-heading">面试通过被录用的人数</div>
							<div id="mstgblyrsDiv" class="panel-body rsDiv"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">所有发布岗位薪资占比</div>
				<div class="panel-body">
				<div id="gwxz" style="width:100%; height: 300px;">
				
				</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">投递简历最多的5个职业类别</div>
				<div class="panel-body">
				<div id="gwxzTop10" style="width:100%; height: 300px;">
				
				</div>
				</div>
			</div>

		</div>
	</div>
</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/echarts.min.js"></script>
	
	<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/xx/xxfxtjym.js"></script>
</html>