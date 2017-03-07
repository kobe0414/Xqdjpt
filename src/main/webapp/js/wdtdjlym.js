$(function() {

	// 1.初始化Table
	var oTable = new TableInit();
	oTable.Init();

	$('#dqztSelect').change(function(){
		$('#wdtdjlTable').bootstrapTable('refresh');
	});
	
	$('#tdsjsxSelect').change(function(){
		$('#wdtdjlTable').bootstrapTable('refresh');
	});
});

var TableInit = function() {
	var oTableInit = new Object();
	// 初始化Table
	oTableInit.Init = function() {
		$('#wdtdjlTable').bootstrapTable({
			url : './listWdtdjlByXsid.do', // 请求后台的URL（*）
			method : 'get', // 请求方式（*）
			toolbar : '#toolbar', // 工具按钮用哪个容器
			striped : true, // 是否显示行间隔色
			cache : false, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
			pagination : true, // 是否显示分页（*）
			sortable : false, // 是否启用排序
			sortOrder : "asc", // 排序方式
			queryParams : oTableInit.queryParams,// 传递参数（*）
			sidePagination : "server", // 分页方式：client客户端分页，server服务端分页（*）
			pageNumber : 1, // 初始化加载第一页，默认第一页
			pageSize : 10, // 每页的记录行数（*）
			pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
			columns : [ {
				checkbox : false
			}, {
				field : 'qymc',
				title : '公司',
				formatter : function(value, row, index) {
					return row.qymc;
				}
			}, {
				field : 'gwmc',
				title : '职位',
				cellStyle : function(value, row, index, field) {
					return {
						css : {
							"color" : 'blue',
							"cursor" : 'pointer'
						}
					}
				}
			}, {
				field : 'tdjlsj',
				title : '投递时间'
			}, {
				field : 'dqzt',
				title : '当前状态',
				formatter : function(value, row, index) {
					if (value == '1') {
						return "简历已投递";
					} else if (value == "2") {
						return "简历通过等待面试";
					} else if (value == "3") {
						return "简历不通过";
					} else if (value == "4") {
						return "被录用";
					} else if (value == "5") {
						return "面试失败";
					}
					return "";
				}
			}, ],
			onClickCell : function(field, value, row) {
				if (field == 'gwmc') {
					window.open('gwxqym.jsp?from=wdtdjl&gwid=' + row.gwid);
				}

			}
		});
	};

	// 得到查询的参数
	oTableInit.queryParams = function(params) {
		var temp = { // 这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			limit : params.limit, // 页面大小
			offset : params.offset, // 页码
			xsid : $.cookie('yhid'),
			dqzt : $('#dqztSelect').val(),
			tdsjsx:$('#tdsjsxSelect').val()
		};
		return temp;
	};
	return oTableInit;
};
