$(function(){
	CKEDITOR.replace('gwmsTextarea');
	setGwlbSelect();
	setProvince();
	
	$('#provinceSelect').change(function(){
		setCity($(this).val());
	});
	
	//HelloWorld
	$('#fbHuoBcSpan').click(function(){
		fbgwjbxx();
	});
	
	
});


function fbgwjbxx(){
	$.ajax({
		url:"../insertGwjbxx.do",
		type:'post',
		data:{
			gwlbid:$('#gwlbSelect').val(),
			gwmc:$('#gwmcInput').val(),
			gwyx:$('#gwyxSelect').val(),
			gwzprs:$('#gwzprsInput').val(),
			gwdy:$('#gwdyInput').val(),
			gwgzdd:$('#citySelect').val(),
			gwms:CKEDITOR.instances.gwmsTextarea.getData(),
			qyid:$.cookie('yhid')
		},
		success:function(data){
			if(data.status == '1'){
				$.confirm({
                    title: '发布成功',
                    content: '3秒后自动跳转...',
                    autoClose: 'cancelAction|3000',
                    escapeKey: 'cancelAction',
                    buttons: {
                        confirm: {
                            btnClass: 'btn-primary',
                            text: '确定',
                            action: function () {
                            	window.location.href='qygwlbym.jsp';
                            }
                        },
                        cancelAction: {
                            text: '取消',
                            action: function () {
                            	window.location.href='qygwlbym.jsp';
                            }
                        }
                    }
                });
			}else{
				$.alert('发布失败');
			}
		}
	});
}

function setGwlbSelect(){
	var $select = $('#gwlbSelect');
	$.ajax({
		url:'../listGwlbwd.do',
		success:function(data){
			var optionHtml = '';
			$.each(data, function(i, v) {
				optionHtml += '<option value="' + v.gwlbid + '">' + v.gwlbmc
						+ '</option>'
			});
			$select.html(optionHtml);
			$select.selectpicker('refresh');
		}
	});
}

function setProvince() {
	var $select = $('#provinceSelect');
	$.ajax({
		url:'../listProvince.do',
		success:function(data){
			var optionHtml = '';
			$.each(data, function(i, v) {
				optionHtml += '<option value="' + v.provinceId + '">' + v.province
						+ '</option>'
			});
			$select.html(optionHtml);
			$select.selectpicker('refresh');
			setCity($select.val());
		}
	});
}

function setCity(provinceId){
	var $select = $('#citySelect');
	$.ajax({
		url:'../listCities.do',
		data:{
			provinceId:provinceId
		},
		success:function(data){
			var optionHtml = '';
			$.each(data, function(i, v) {
				optionHtml += '<option value="' + v.cityId + '">' + v.city
						+ '</option>'
			});
			$select.html(optionHtml);
			$select.selectpicker('refresh');
		}
	});
}
