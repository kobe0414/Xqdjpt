<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='icon' href='<%=request.getContextPath()%>/images/xiao.ico'
	type='image/x-ico' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业基本信息</title>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/global.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/qy/qyjbxxym.css">
</head>
<body>
	<div class="bodyDiv">
		<div style="width: 100%;">
			<jsp:include page="qyNavbarTop.jsp"></jsp:include>
		</div>
		<div class="jbxxBt">
			<h4 style="display: inline;">企业基本信息</h4>
			<span id="bjHuoBcSpan" style="margin-left: 765px; cursor: pointer;">编辑</span>
		</div>
		<div class="lineDiv"></div>
		
		<div id="qyjbxxbcDiv" class="jbxxZt">
		<form class="form-horizontal">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">企业名称:</label>
				<div class="col-sm-9">
					<label id="qymc" class="control-label"></label>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">企业邮箱:</label>
				<div class="col-sm-9">
					<label id="qyyx" class="control-label"></label>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">企业联系电话:</label>
				<div class="col-sm-9">
					<label id="qylxdh" class="control-label"></label>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">企业规模:</label>
				<div class="col-sm-9">
					<label id="qygm" class="control-label"></label>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">企业性质:</label>
				<div class="col-sm-9">
					<label id="qyxz" class="control-label"></label>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">企业行业:</label>
				<div class="col-sm-9">
					<label id="qyhy" class="control-label"></label>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">企业地址:</label>
				<div class="col-sm-9">
					<label id="qydz" class="control-label"></label>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">企业介绍:</label>
				<div class="col-sm-9">
					<div id="qyjs" class="control-label"></div>
				</div>
			</div>
			</form>
		</div>
		<div id="qyjbxxbjDiv" class="jbxxZt">
			<form class="form-horizontal">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">企业名称:</label>
					<div class="col-sm-9">
						<input id="qymcInput" type="text" class="form-control" placeholder="企业名称">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">企业邮箱:</label>
					<div class="col-sm-9">
						<input id="qyyxInput" type="text" class="form-control" placeholder="企业邮箱">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">企业联系电话:</label>
					<div class="col-sm-9">
						<input id="qylxdhInput" type="text" class="form-control" placeholder="企业联系电话">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">企业规模:</label>
					<div class="col-sm-9">
						<input id="qygmInput" type="text" class="form-control" placeholder="企业规模">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">企业性质:</label>
					<div class="col-sm-9">
						<input id="qyxzInput" type="text" class="form-control" placeholder="企业性质">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">企业行业:</label>
					<div class="col-sm-9">
						<input id="qyhyInput" type="text" class="form-control" placeholder="企业行业">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">企业地址:</label>
					<div class="col-sm-9">
						<input id="qydzInput" type="text" class="form-control" placeholder="企业地址">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">企业介绍:</label>
					<div class="col-sm-9">
						<textarea class="ckeditor" name="qyjsTextarea" id="qyjsTextarea"
							rows="10" cols="30"></textarea>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
<script src="https://cdn.ckeditor.com/4.6.2/basic/ckeditor.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/qy/qyjbxxym.js"></script>
</html>