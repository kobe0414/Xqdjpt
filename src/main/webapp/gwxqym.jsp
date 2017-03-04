<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='icon' href='<%=request.getContextPath()%>/images/xiao.ico' type='image/x-ico' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>岗位详情</title>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/global.css">
	<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/gwxqym.css">
<style type="text/css">
</style>
</head>
<body>
	<div class="bodyDiv">
		<div style="width: 100%;">
			<jsp:include page="navbarTop.jsp"></jsp:include>
		</div>
		<div class="xqtop">
			<div class=".container">
				<div class="row">
					<div class="col-md-8">
						<div id="gwmcDiv" class="inXqtopDiv"></div>
						<div id="qymcDiv" class="inXqtopDiv"></div>
						<div id="gwdyDiv" class="inXqtopDiv">
							
						</div>
					</div>
					<div id="sqgwBtnDiv" class="col-md-4" style="padding-top: 50px;">
						
					</div>
				</div>
			</div>
		</div>
		<div class="lineDiv"></div>
		<div class="xqmiddle">
			<ul>
				<li><span>职位月薪：</span><span id="gwyxSpan"></span></li>
				<li><span>工作地点：</span><span id="gwgzddSpan"></span></li>
				<li><span>发布日期：</span><span id="gwfbrqSpan"></span></li>
				<li><span>招聘人数：</span><span id="gwzprsSpan"></span></li>
				<li><span>职位类别：</span><span id="gwlbmcDiv"></span></li>
			</ul>
		</div>
		<div class="xqbottom">
			<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#home"
					aria-controls="home" role="tab" data-toggle="tab">岗位描述</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab">公司介绍</a></li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="home">
					<div id="gwmsDiv">
						
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="profile">
					<div id="qyjsDiv">
						
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/gwxqym.js"></script>
</html>