$(function(){
	//1.初始化Table
    var oTable = new TableInit();
    oTable.Init();
    

    $('#fbxgwSpan').click(function(){
    	window.open('qyfbgwym.jsp');
    });
});

var TableInit = function () {
    var oTableInit = new Object();
    //初始化Table
    oTableInit.Init = function () {
        $('#tb_departments').bootstrapTable({
            url: '../listGwypxxByQyid.do',         //请求后台的URL（*）
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
                field: 'gwmc',
                title: '岗位名称',
                align:'center'
            }, {
                field: 'gwzprs',
                title: '招聘人数',
                align:'center'
            }, {
                field: 'yprs',
                title: '投递简历人数',
                align:'center',
                cellStyle:function (value,row,index,field){
                	if(value != 0){
                		return {css: {
                            "color":'blue',
                            "cursor":'pointer'}
                    	}
                	}else{
                		return {css: {
                            "color":'black'}
                    	}
                	}
                	
                }
            }, {
                title: '操作',
                align:'center',
                field:'sc',
                formatter:function (value, row, index){
                	return "删除";
                },
                cellStyle:function (value,row,index,field){
                	return {css: {
                        "color":'red',
                        "cursor":'pointer'}
                	}
                }
            }
            ],
            onClickCell:function(field,value,row){
            	if(field == 'yprs'){
            		if(value != 0){
            			var gwmc = encodeURI(row.gwmc);
                		gwmc = encodeURI(gwmc);
                		window.open('gwypxsym.jsp?gwid=' + row.gwid+ '&gwmc=' + gwmc);
            		}
            		
            	}else if(field == 'sc'){
            		deleteQygw(row.gwid);
            	}
            },
            
        });
    };

    //得到查询的参数
    oTableInit.queryParams = function (params) {
        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,   //页面大小
            offset: params.offset,  //页码
            qyid:$.cookie('yhid')
        };
        return temp;
    };
    return oTableInit;
};


function deleteQygw(gwid){
	
	$.confirm({
        title: '删除?',
        content: '您确定要删除该岗位信息吗?',
        icon: 'fa fa-question-circle',
        animation: 'scale',
        closeAnimation: 'scale',
        opacity: 0.5,
        buttons: {
            'confirm': {
                text: '确定',
                btnClass: 'btn-info',
                action: function () {
                	$.ajax({
                		url:'../deleteQygw.do',
                		type:'post',
                		data:{
                			gwid:gwid
                		},
                		success:function(data){
                			if(data.status == '1'){
                				$.confirm({
                                    title: '删除成功',
                                    content: '3秒后自动刷新...',
                                    autoClose: 'cancelAction|3000',
                                    escapeKey: 'cancelAction',
                                    buttons: {
                                        confirm: {
                                            btnClass: 'btn-primary',
                                            text: '确定',
                                            action: function () {
                                            	window.location.reload(); 
                                            }
                                        },
                                        cancelAction: {
                                            text: '取消',
                                            action: function () {
                                            	window.location.reload(); 
                                            }
                                        }
                                    }
                                });
                			}
                		}
                	});
                }
            },
            cancel: {
                text:'取消'
            }
        }
    });
	
	
	
	
}