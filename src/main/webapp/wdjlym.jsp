<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='icon' href='<%=request.getContextPath()%>/images/xiao.ico' type='image/x-ico' /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的简历</title>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/global.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/wdjlym.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap-datetimepicker.min.css">
	<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/fileinput.min.css">
<link type="text/css" rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
</head>
<body>
	<div class="bodyDiv">
		<div style="width: 100%;">
			<jsp:include page="navbarTop.jsp"></jsp:include>
		</div>
		<div class="wdjlBt">
			<h4 style="display: inline;">我的简历</h4>
			<span id="bjHuoBcSpan" style="margin-left: 800px; cursor: pointer;">编辑</span>
		</div>
		<div class="lineDiv"></div>
		
		<div id="wdjlckDiv" class="wdjlZt">
		    <form class="form-horizontal">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">姓名:</label>
					<div class="col-sm-9">
						<label id="xsxm" for="inputEmail3" class="control-label"></label>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">性别:</label>
					<div class="col-sm-9">
						<label id="xsxb" for="inputEmail3" class="control-label"></label>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">出生日期:</label>
					<div class="col-sm-9">
						<label id="xscsrq" for="inputEmail3" class="control-label"></label>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">邮箱:</label>
					<div class="col-sm-9">
						<label id="xsyx" for="inputEmail3" class="control-label"></label>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">手机号:</label>
					<div class="col-sm-9">
						<label id="xssjhm" for="inputEmail3" class="control-label"></label>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">学历:</label>
					<div class="col-sm-9">
						<label id="xsxl" for="inputEmail3" class="control-label" value="2"></label>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">政治面貌:</label>
					<div class="col-sm-9">
						<label id="xszzmm" for="inputEmail3" class="control-label" value="2"></label>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">所在高校:</label>
					<div class="col-sm-9">
						<label id="xsszxx" for="inputEmail3" class="control-label" value="1"></label>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">期望职业类型:</label>
					<div class="col-sm-9">
						<label id="xsqwcszy" for="inputEmail3" class="control-label"></label>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">期望实习地点:</label>
					<div class="col-sm-9">
						<label id="xsqwgzdd" for="inputEmail3" class="control-label"></label>
					</div>
					
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">期望月薪:</label>
					<div class="col-sm-9">
						<label id="xsqwyx" for="inputEmail3" class="control-label"></label>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">在校获奖情况:</label>
					<div class="col-sm-9">
						<textarea id="xsshzs" class="form-control" rows="5" readonly="readonly"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">专业技能:</label>
					<div class="col-sm-9">
						<textarea id="xszyjn" class="form-control" rows="5" readonly="readonly"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">自我评价:</label>
					<div class="col-sm-9">
						<textarea id="xszwpj" class="form-control" rows="5" readonly="readonly"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">简历附件上传:</label>
					<div class="col-sm-9">
						
					</div>
				</div>
			</form>
		</div>
		<div id="wdjlbjDiv" class="wdjlZt">
			<form class="form-horizontal">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">姓名:</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="xsxmInput"
							placeholder="姓名">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">性别:</label>
					<div class="col-sm-9">
						男&nbsp;<input type="radio" name="sex" checked="checked">&nbsp;&nbsp;&nbsp;&nbsp;女&nbsp;<input
							type="radio" name="sex">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">出生日期:</label>
					<div class="col-sm-9">
						<div class='input-group date' id='datetimepicker1'>
							<input id="xscsrqInput" type='text' class="form-control" /> <span
								class="input-group-addon"> <span
								class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">邮箱:</label>
					<div class="col-sm-9">
						<input id="xsyxInput" type="text" class="form-control" placeholder="邮箱">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">手机号:</label>
					<div class="col-sm-9">
						<input id="xssjhmInput" type="text" class="form-control" placeholder="手机号">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">学历:</label>
					<div class="col-sm-9">
						<select id="xsxlSelect" class="selectpicker">
							<option value="1">大专</option>
							<option value="2">本科</option>
							<option value="3">硕士研究生</option>
							<option value="4">博士研究生</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">政治面貌:</label>
					<div class="col-sm-9">
						<select id="xszzmmSelect" class="selectpicker">
							<option value="1">团员</option>
							<option value="2">预备党员</option>
							<option value="3">党员</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">所在高校:</label>
					<div class="col-sm-3">
						<select id="provinceSchoolSelect" class="selectpicker" data-width="150px" data-live-search="true">
							<option>浙江省</option>
							<option>安徽省</option>
							<option>江苏省</option>
						</select>
					</div>
					<div class="col-sm-6">
						<select id="schoolSelect" class="selectpicker" data-width="290px" data-live-search="true">
							<option>杭州师范大学</option>
							<option>杭州电子科技大学</option>
							<option>浙江大学</option>
						</select>
					</div>
					
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">期望职业类型:</label>
					<div class="col-sm-9">
						<select id="xsqwcszySelect" class="selectpicker" data-live-search="true">
							<option>团员</option>
							<option>预备党员</option>
							<option>党员</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">期望实习地点:</label>
					<div class="col-sm-3">
						<select id="provinceCitySelect" class="selectpicker" data-width="150px" data-live-search="true">
							<option>浙江省</option>
							<option>安徽省</option>
							<option>江苏省</option>
						</select>
					</div>
					<div class="col-sm-3">
						<select id="citySelect" class="selectpicker" data-width="150px" data-live-search="true">
							<option>杭州市</option>
							<option>绍兴市</option>
							<option>南京市</option>
						</select>
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">期望月薪:</label>
					<div class="col-sm-9">
						<select id="gwyxSelect" class="selectpicker">
							<option value="1">2000以下</option>
							<option value="2">2000-3000/月</option>
							<option value="3">3000-4000/月</option>
							<option value="4">4000以上/月</option>
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">在校获奖情况:</label>
					<div class="col-sm-9">
						<textarea id="xsshzsTextarea" class="form-control" rows="5"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">专业技能:</label>
					<div class="col-sm-9">
						<textarea id="xszyjnTextarea" class="form-control" rows="5"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">自我评价:</label>
					<div class="col-sm-9">
						<textarea id="xszwpjTextarea" class="form-control" rows="5"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">简历附件上传:</label>
					<div class="col-sm-9">
						<input id="input-1" type="file" data-show-caption="true">
					</div>
				</div>
				
			</form>
		</div>
		<div>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
<script type="text/javascript"
    src="<%=request.getContextPath()%>/js/fileinput.min.js"></script>
    <script type="text/javascript"
    src="<%=request.getContextPath()%>/js/zh.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/wdjlym.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/utils.js"></script>
</html>