<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='icon' href='<%=request.getContextPath()%>/images/xiao.ico'
	type='image/x-ico' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>岗位发布</title>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/global.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/qy/qyfbgwym.css">
	<link type="text/css" rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
</head>
<body>
	<div class="bodyDiv">
		<div style="width: 100%;">
			<jsp:include page="qyNavbarTop.jsp"></jsp:include>
		</div>
		<div class="fbgwBt">
			<h4 style="display: inline;">实习岗位发布</h4>
			<span id="fbHuoBcSpan" style="margin-left: 765px; cursor: pointer;">发布</span>
		</div>
		<div class="lineDiv"></div>
		<div id="fbgwbjDiv" class="fbgwZt">
			<form class="form-horizontal">
				<div class="form-group">
					<label class="col-sm-3 control-label">岗位类别:</label>
					<div class="col-sm-9">
						<select id="gwlbSelect" class="selectpicker" data-width="200px" data-live-search="true">
							
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">岗位名称:</label>
					<div class="col-sm-9">
						<input id="gwmcInput" type="text" class="form-control" placeholder="岗位名称">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">岗位月薪:</label>
					<div class="col-sm-9">
						<select id="gwyxSelect" class="selectpicker" data-width="200px">
							<option value="1">2000以下</option>
							<option value="2">2000-3000/月</option>
							<option value="3">3000-4000/月</option>
							<option value="4">4000以上/月</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">岗位招聘人数:</label>
					<div class="col-sm-9">
						<input id="gwzprsInput" type="text" class="form-control" placeholder="岗位招聘人数">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">岗位待遇:</label>
					<div class="col-sm-9">
						<input id="gwdyInput" type="text" class="form-control" placeholder="岗位待遇">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">岗位工作地点:</label>
					<div class="col-sm-3">
						<select id="provinceSelect" class="selectpicker" data-width="150px" data-live-search="true">
							
						</select>
					</div>
					<div class="col-sm-3">
						<select id="citySelect" class="selectpicker" data-width="150px" data-live-search="true">
							
						</select>
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">岗位描述:</label>
					<div class="col-sm-9">
						<textarea class="ckeditor" name="gwmsTextarea" id="gwmsTextarea" rows="10" cols="30"></textarea>
					</div>
				</div>
			</form>
		</div>
		<div id="fbgwBcDiv" class="fbgwZt"></div>
	</div>
</body>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
<script src="https://cdn.ckeditor.com/4.6.2/basic/ckeditor.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/qy/qyfbgwym.js"></script>
</html>