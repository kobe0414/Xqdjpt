<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='icon' href='<%=request.getContextPath()%>/images/xiao.ico' type='image/x-ico' /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/global.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/gwssym.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/multiple-select.css">

<title>岗位搜索</title>
</head>
<body id="gwssbody" value="gwss">
	<div id="bodyDiv" class="bodyDiv">
		<div style="width: 100%;">
			<jsp:include page="navbarTop.jsp"></jsp:include>
		</div>
		<div id="searchContidionDiv">
			<div class="searchDiv">
				工作地点: 
				<span id="gzddAll" searchType="gzdd" value="all">不限</span>
				<select id="provinceSelect">
					<option value="all">所有省</option>
				</select>
				<select id="citySelect">
					<option value="all">所有市</option>
				</select>
			</div>
			<div class="searchDiv">
				月薪范围:
				<span id="yxfwAll" searchType="yxfw" value="all">不限</span>
				<span id="yxfw1" searchType="yxfw" value="1" valueMax="2000" valueMin="0">2千以下</span>
				<span id="yxfw2" searchType="yxfw" value="2" valueMax="3000" valueMin="2000">2千到3千</span>
				<span id="yxfw3" searchType="yxfw" value="3" valueMax="4000" valueMin="3000">3千到4千</span>
				<span id="yxfw4" searchType="yxfw" value="4" valueMax="1000000" valueMin="4000">4千以上</span>
			</div>
			<div class="searchDiv">
				发布时间:
				<span id="fbsjAll" searchType="fbsj" value="all">不限</span>
				<span id="fbsj1" searchType="fbsj" value="3">最近三天</span>
				<span id="fbsj2" searchType="fbsj" value="7">最近一周</span>
				<span id="fbsj3" searchType="fbsj" value="31">最近一个月</span>
				<span id="fbsj4" searchType="fbsj" value="100">最近三个月</span>
			</div>
			<div class="searchDiv">
			职业类型:
				<span id="zylxAll" searchType="zylx" value="all">不限</span>
				<span id="zylx1" searchType="zylx" value="g01">软件/互联网开发/系统集成</span>
				<span id="zylx2" searchType="zylx" value="g02">IT质量管理/测试/配置管理</span>
				<span searchType="zylx" value="g03">IT运维/技术支持</span>
				<span searchType="zylx" value="g04" isMore="isMore">IT管理/项目协调</span>
				<span searchType="zylx" value="g05" isMore="isMore">互联网产品/运营管理</span>
				<span searchType="zylx" value="g06" isMore="isMore">硬件开发</span>			
				<span id="zylxMore" searchType="zylx" value="more">更多</span>
			</div>
			<div class="searchDiv" isMore="isMore">
			    <span style="color: #FFFAF0;margin-left: 0; cursor: default;" value="more">职业类型:</span>
				<span style="color: #FFFAF0;cursor: default;" value="more">不限</span>
				<span searchType="zylx" value="g07">电信/通信技术开发及其应用</span>
				<span searchType="zylx" value="g08">人力资源</span>
				<span searchType="zylx" value="g09">项目管理/项目协调</span>
				<span searchType="zylx" value="g10">销售管理</span>
				<span searchType="zylx" value="g11">市场</span>
				<span searchType="zylx" value="g12">财务/审计/税务</span>
				<span searchType="zylx" value="g13">行政/后勤/文秘</span>
				<span searchType="zylx" value="g14">物业管理</span>
			</div>
			<div class="searchDiv" isMore="isMore">
			    <span style="color: #FFFAF0;margin-left: 0; cursor: default;" value="more">职业类型:</span>
				<span style="color: #FFFAF0;cursor: default;" value="more">不限</span>
				<span searchType="zylx" value="g15">物流/仓储</span>
				<span searchType="zylx" value="g16">律师/法务/合规</span>
				<span searchType="zylx" value="g17">保险</span>
				<span searchType="zylx" value="g18">技工/操作工</span>
				<span searchType="zylx" value="g19">化工</span>
				<span searchType="zylx" value="g20">教育/培训</span>
				<span id="zylxSq" searchType="zylx" value="more">收起</span>
			</div>
		</div>
		<div id="gwlbDiv">
		
		</div>
		
	</div>
</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/multiple-select.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/gwssym.js"></script>
</html>