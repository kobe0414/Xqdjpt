$(function(){
	
	$('#gwmcH4').html(decodeURI($.getUrlParam('gwmc')));
	
	//1.初始化hhhh
    var oTable = new TableInit();
    oTable.Init();
    
});

var TableInit = function () {
    var oTableInit = new Object();
    //初始化Table
    oTableInit.Init = function () {
        $('#tb_departments').bootstrapTable({
            url: '../listGwypxsxxByGwid.do',         //请求后台的URL（*）
            method: 'get',                      //请求方式（*）
            toolbar: '#toolbar',                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: false,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            queryParams: oTableInit.queryParams,//传递参数（*）
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber:1,                       //初始化加载第一页，默认第一页
            pageSize: 10,                       //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            columns: [{
                checkbox: false
            }, {
                field: 'xsxm',
                title: '姓名',
                align:'center'
            }, {
                field: 'school_name',
                title: '学校',
                align:'center'
            }, {
                field: 'xsxlmc',
                title: '学历',
                align:'center'
            },{
                field: 'tdjlsj',
                title: '投递简历时间',
                align:'center'
            }, {
                field:'ckjl',
            	title: '查看简历',
                align:'center',
                formatter:function (value, row, index){
                	return "查看简历";
                },
                cellStyle:function (value,row,index,field){
                	return {css: {
                        "color":'blue',
                        "cursor":'pointer'}
                	}
                }
            }, {
                field: 'dqzt',
                title: '当前状态',
                align:'center',
                formatter:function (value, row, index){
                	if(value == '1'){
                		return "邀面试?";
                	}else if(value == "2"){
                		return "面试通过?";
                	}else if(value == "3"){
                		return "简历不通过";
                	}else if(value == "4"){
                		return "被录用";
                	}else if(value == "5"){
                		return "面试失败";
                	}
                	return "";
                },
                cellStyle:function (value,row,index,field){
                	if(value == "1" || value == "2"){
                		return {css: {
                            "color":'blue',
                            "cursor":'pointer'}
                    	}
                	}else {
                		return {css: {
                            "color":'black'}
                    	}
                	}
                	
                }
            }
            ],
            onClickCell:function(field, value, row){
            	if(field == 'ckjl'){
            		window.open('../xsjlym.jsp?xsid=' + row.xsid);
            	}else if(field == 'dqzt'){
            		if(value == '1'){
            			dqzt('1',row.xsid);
            		}else if(value == '2'){
            			dqzt('2',row.xsid);
            		}
            	}
            },
            
        });
    };

    //得到查询的参数
    oTableInit.queryParams = function (params) {
        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,   //页面大小
            offset: params.offset,  //页码
            gwid:$.getUrlParam('gwid')
        };
        return temp;
    };
    return oTableInit;
};

function dqzt(value,xsid){
	var title = '';
	var content = '';
	var gbhztYes = '';
	var gbhztNo = '';
	if(value == '1'){
		title = '邀面试?';
		content = '该学生简历是否符合面试要求?';
		gbhztYes = '2';
		gbhztNo = '3';
	}else if(value == '2'){
		title = '录用?';
		content = '是否录用该学生?';
		gbhztYes = '4';
		gbhztNo = '5';
	}
	$.confirm({
        title: title,
        content: content,
        icon: 'fa fa-question-circle',
        animation: 'scale',
        closeAnimation: 'scale',
        opacity: 0.5,
        buttons: {
            'confirm': {
                text: '是',
                btnClass: 'btn-info',
                action: function () {
                	gbdqzt(gbhztYes,xsid);
                }
            },
            cancel: {
                text: '否',
                btnClass: 'btn-info',
                action: function () {
                	gbdqzt(gbhztNo,xsid);
                }
            },
            moreButtons: {
                text: '取消'
            },
        }
    });
}

function gbdqzt(value,xsid){
	$.ajax({
		url:'../updateXsypzt.do',
		type:'post',
		data:{
			gwid:$.getUrlParam('gwid'),
			xsid:xsid,
			dqzt:value
		},
		success:function(data){
			if(data.status == '1'){
				$('#tb_departments').bootstrapTable('refresh');
			}
		}
	});
}