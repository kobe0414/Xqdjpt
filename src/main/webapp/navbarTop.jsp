<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jquery-confirm.css">
</head>
<body>

	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">校企对接平台</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			
			<form id="id_form" class="navbar-form navbar-left">
				<div class="form-group">
					<input id="gwgjzInput" type="text" class="form-control" placeholder="岗位关键字搜索">
				</div>
				<button id="id_search" class="btn btn-default">搜索</button>
			</form>
			<ul class="nav navbar-nav navbar-right">

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">我的 <span class="caret"></span></a>
					<ul class="dropdown-menu">
					    <li><a href="gwssym.jsp">岗位搜索</a></li>	
						<li><a href="wdjlym.jsp">我的简历</a></li>						
						<li><a href="wdtdjlym.jsp">我的投递记录</a></li>
						<li><a href="javascript:xgmm()">修改密码</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="javascript:yhtc()">退出</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
</body>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.cookie.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-confirm.js"></script>	
<script type="text/javascript">
var searchCondition = {
		gzdd : 'all',
		yxfw : 'all',
		fbsj : 'all',
		zylx : 'all',
		gwgjz: 'all',
		xsid : '',
		limit:5,
		offset:0
	}
var offset = 0;
$(function(){
	$('#id_form').submit(function() {
		return false;
	});
	$('#id_search').click(function(){
		if($('#gwssbody').attr('value') == 'gwss'){
			offset = 0;
			setGwjbxx();
		}else{
			window.location.href='gwssym.jsp';
		}
		
		
	});
	
	(function ($) {
        $.getUrlParam = function (name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]); return null;
        }
    })(jQuery);
})

function yhtc(){
	$.cookie('yhid',null);
	window.location.href='yhdl.jsp';
}
function xgmm(){
	window.location.href='xgmm.jsp?yhzh='+ $.cookie('yhzh') + '&yhlx='+ $.cookie('yhlx') ;
}
</script>
</html>