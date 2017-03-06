$(function(){
	$('#yhdlButton').click(function(){
		yhdl();
	});
});

function yhdl(){
	var yhlx = $('input:radio[name="yhlx"]:checked').val();
	$.ajax({
		url:'yhdl.do',
		data:{
			yhzh:$('#yhzhInput').val(),
			yhmm:$('#yhmmInput').val(),
			yhlx:yhlx
		},
		success:function(data){
			if(data.status == '0'){
				$.alert({
                    content: '用户名或密码错误!',
                    title:'登录失败',
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
			}else{
				if(yhlx == '1'){
					$.cookie('yhid',data.data.xsid,{ expires: 1 });
					window.location.href='gwssym.jsp';
				}else if(yhlx == '2'){
					$.cookie('yhid',data.data.qyid,{ expires: 1,path:'/Xqdjpt/qy'});
					window.location.href='qy/qygwlbym.jsp';
				}else if(yhlx == ''){
					
				}
				
			}
		}
	});
}