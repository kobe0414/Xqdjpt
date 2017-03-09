$(function(){
	(function ($) {
        $.getUrlParam = function (name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]); return null;
        }
    })(jQuery);
	
	alert($.cookie('yhlx'));
	$('#qrxgButton').click(function(){
		updateYhdlmm();
	});
})

function updateYhdlmm(){
	
	$.ajax({
		url:'updateYhdlmm.do',
		type:'post',
		data:{
			yhxmm:$('#qrxmmInput').val(),
			yhzh:$.getUrlParam('yhzh'),
			yhdlmm:$('#dlmmInput').val(),
			yhlx:$.getUrlParam('yhlx')
		},
		success:function(data){
			if(data.status == '1'){
				$.confirm({
                    title: '修改密码成功',
                    content: '3秒后自动跳转...',
                    autoClose: 'cancelAction|3000',
                    escapeKey: 'cancelAction',
                    buttons: {
                        confirm: {
                            btnClass: 'btn-primary',
                            text: '确定',
                            action: function () {
                            	xgcg();
                            }
                        },
                        cancelAction: {
                            text: '取消',
                            action: function () {
                            	xgcg();
                            }
                        }
                    }
                });
			}else{
				$.alert({
                    content: '用户名或旧密码错误!',
                    title:'修改密码失败',
                    icon: 'fa fa-rocket',
                    animation: 'zoom',
                    closeAnimation: 'zoom',
                    buttons: {
                        okay: {
                            text: '确定',
                            btnClass: 'btn-primary'
                        }
                    }
                });
			}
		}
	});
}

function xgcg(){
	if($.getUrlParam('yhlx') == '1'){
		window.location.href='gwssym.jsp';
	}else if($.getUrlParam('yhlx') == '2'){
		window.location.href='qy/qygwlbym.jsp';
	}else if($.getUrlParam('yhlx') == '3'){
		window.location.href='xx/xxfxtjym.jsp';
	}
}