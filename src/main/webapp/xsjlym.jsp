<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='icon' href='<%=request.getContextPath()%>/images/xiao.ico'
	type='image/x-ico' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生简历</title>
<style type="text/css">
* {
	margin: 0;
}

body.bodyBackground {
	background: url(images/bg_body.gif) repeat;
	font-size: 12px;
}

.jlwcDiv {
	width: 960px;
	margin: 0 auto;
	background-color: #eaeef2;
	padding: 40px 0;
}

.jlsszDiv {
	font-weight: bold;
	font-size: 16px;
	padding-bottom: 20px;
	width: 410px;
	height: 35px;
	background: url(images/rumtlt_ico.gif) no-repeat;
	display: inline-block;
	line-height: 35px;
	text-indent: 10px;
	float: left;
}

.floatright {
	float: right;
}

.dyjlDiv {
	display: inline-block;
	height: 22px;
	line-height: 22px;
	padding: 2px 0px 0px 20px;
	background: url(images/pic_upicon.gif) no-repeat left -865px;
}

.jlbkDiv {
	background: #fff;
	width: 740px;
	margin: 0 auto;
	padding: 30px;
	border-radius: 2px;
	border: 1px solid #d1d1d1;
}

.xxmkDiv {
	position: relative;
	padding-top: 8px;
	color: #666666;
}

.xxmkSpan {
	font-size: 14px;
	font-weight: bold;
	display: inline-block;
	border-bottom: 1px solid #3787bd;
	height: 36px;
	line-height: 36px;
}

.clearfix {
	zoom: 1;
}

.noprint {
	display: none;
}

.padbottom {
	padding-bottom: 10px;
	width: 100%;
	height: 55px;
}

.xxmkXqDiv {
	border-top: 1px solid #d4dae2;
	min-height: 100px;
}

.infoDiv {
	min-width: 520px;
	margin-top: 10px;
}

li {
	list-style: none;
	margin-top: 5px;
}

li label {
	text-align: right;
	padding-right: 10px;
	width: 80px;
	display: inline-block;
}

li span {
	width: 160px;
	display: inline-block;
}

.wdjlxz {
	color:blue;
	text-decoration:underline;
	cursor:pointer;
	font-weight:normal;
}
</style>
</head>
<body class="bodyBackground">
	<div class="jlwcDiv">
		<div class="jlbkDiv">
			<div class="clearfix padbottom">
				<span class="jlsszDiv" id="jlxm"></span> <span class="floatright">
					<span class="dyjlDiv"> <a href="#">打印简历</a>
				</span>
				</span>
			</div>
			<div>
				<div class="xxmkDiv">
					<span class="xxmkSpan">个人信息</span>
					<div class="xxmkXqDiv">
						<div class="infoDiv">
							<ul>
								<li><label>姓名:</label><span id="xsxm"></span> <label>性别:</label><span
									id="xsxb"></span></li>
								<li><label>邮箱:</label><span id="xsyx"></span> <label>手机号:</label><span
									id="xssjhm"></span></li>
								<li><label>政治面貌:</label><span id="xszzmm"></span> <label>所在高校:</label><span
									id="xsszxx"></span></li>
								<li><label>学历:</label><span id="xsxl"></span> <label>期望职业类型:</label><span
									id="xsqwcszy"></span></li>
								<li><label>期望工作地点:</label><span id="xsqwgzdd"></span> <label>期望月薪:</label><span
									id="xsqwyx"></span></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="xxmkDiv">
					<span class="xxmkSpan">获奖情况</span>
					<div class="xxmkXqDiv">
						<div class="infoDiv">
							<ul>
								<li id="xsshzs"></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="xxmkDiv">
					<span class="xxmkSpan">专业技能</span>
					<div class="xxmkXqDiv">
						<div class="infoDiv">
							<ul>
								<li id="xszyjn"></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="xxmkDiv">
					<span class="xxmkSpan">自我评价</span>
					<div class="xxmkXqDiv">
						<div class="infoDiv">
							<ul>
								<li id="xszwpj"></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="xxmkDiv">
					<span class="xxmkSpan">简历附件</span>
					<div class="xxmkXqDiv">
						<div class="infoDiv">
							<ul>
								<li><label id='xsjlxz' class="wdjlxz">简历下载</label></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">

    var xsxx;
	$(function() {
		
		$('#xsjlxz').click(function(){
			xsjlxz();
		});
		
		(function($) {
			$.getUrlParam = function(name) {
				var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
				var r = window.location.search.substr(1).match(reg);
				if (r != null)
					return unescape(r[2]);
				return null;
			}
		})(jQuery);
		getXsjbxx();
	})

	function getXsjbxx() {
		$.ajax({
			url : './getXsjbxxByxsid.do',
			type : 'post',
			data : {
				xsid : $.getUrlParam('xsid')
			},
			success : function(data) {
				xsxx = data;
				setXsjbxx(data);
			}
		})
	}
	function setXsjbxx(data) {
		
		$('#jlxm').text(data.xsxm + '的简历');
		$('#xsxm').text(data.xsxm);
		$('#xsxb').text(data.xsxb);
		$('#xsyx').text(data.xsyx);
		$('#xssjhm').text(data.xssjhm);
		$('#xszzmm').text(data.xszzmmmc);
		$('#xsszxx').text(data.school_name);
		$('#xsxl').text(data.xsxlmc);
		$('#xsqwcszy').text(data.gwlbmc);
		$('#xsqwgzdd').text(data.city);
		$('#xsqwyx').text(data.xsqwyxmc);
		$('#xsshzs').html(data.xsshzs);
		$('#xszyjn').html(data.xszyjn);
		$('#xszwpj').html(data.xszwpj);
	}
	
	function xsjlxz(){
		var form=$("<form>");//定义一个form表单
		form.attr("style","display:none");
		form.attr("method","post");
		form.attr("action","./download.do");
		var inputXsid=$("<input>");
		inputXsid.attr("type","hidden");
		inputXsid.attr("name","xsid");
		inputXsid.attr("value",$.getUrlParam('xsid'));
		
		var inputXsjlmc = $("<input>");
		inputXsjlmc.attr("type","hidden");
		inputXsjlmc.attr("name","xsjlmc");
		inputXsjlmc.attr("value",xsxx.xsjlmc);
		$("body").append(form);//将表单放置在web中
		form.append(inputXsid);
		form.append(inputXsjlmc);

		form.submit();//表单提交
	}
</script>
</html>