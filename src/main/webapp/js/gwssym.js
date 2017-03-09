var searchCondition = {
	gzdd : 'all',
	yxfw : 'all',
	fbsj : 'all',
	zylx : 'all',
	gwgjz: 'all',
	xsid : '',
	limit: 5,
	offset:0
}

var offset = 0;
var flag = true;

$(document).ready(function() {
	
	$('span[value=all]').css('color', 'red');
	$('span[isMore=isMore]').hide();
	$('div[isMore=isMore]').hide();
	setProvince();
	setCity($('#provinceSelect').val());
	setGwjbxx();
	$('span[value!=more]').click(function() {
		var searchType = $(this).attr('searchType');
		$('span[searchType=' + searchType + ']').css('color', 'black');
		$(this).css('color', 'red');
		searchCondition[searchType] = $(this).attr('value');
		if(searchType == 'gzdd'){
			setProvince();
			$('#citySelect').html('<option value="all">所有市</option>');
		}
		offset = 0;
		setGwjbxx();
	});

	$('#zylxMore').click(function() {
		$(this).hide();
		$('span[isMore=isMore]').show();
		$('div[isMore=isMore]').show();

	});
	$('#zylxSq').click(function() {
		$('#zylxMore').show();
		$('span[isMore=isMore]').hide();
		$('div[isMore=isMore]').hide();
	});

	$('#provinceSelect').change(function() {
		setCity($(this).val());
		if ($(this).val() == 'all') {
			$('#gzddAll').css('color', 'red');
		} else {
			$('#gzddAll').css('color', 'black');
		}
		
	});

	$('#citySelect').change(function() {
		searchCondition.gzdd = $(this).val();
		offset = 0;
		setGwjbxx();
	});
	
	$(window).scroll(function() {
		
		var scrollTop = $(this).scrollTop();
		
		var scrollHeight = $(document).height();
		var windowHeight = $(this).height();
		
		if(scrollTop + windowHeight + 1 >= scrollHeight) {
			
			if(flag){
				flag = false;
				setGwjbxx();
			}
		}
	});


});

function setGwjbxx(){
	if(offset == 0){
		$('#gwlbDiv').html('<div id="lodingDiv" style="text-align: center;"><img alt="" src="images/loding.gif">正在加载...</div>');
	}
	searchCondition.offset = offset;
	searchCondition.xsid = $.cookie('yhid');
	searchCondition.gwgjz = $('#gwgjzInput').val();
	$.ajax({
		url:'./listGwjbxx.do',
		data:searchCondition,
		type:'post',
		contentType: "application/x-www-form-urlencoded; charset=utf-8", 
		success:function(data){
			if(data.length == 0){
				$('#lodingDiv').html('没有更多了...');
			}else{
				var totalHtml = '';
				$.each(data,function(i,v){
					var html = '<div id="gwlbDiv' + v.gwid + '" class="panel panel-default"><div class="panel-heading"><div class=".container"><div class="row"><div class="col-md-10">' +
								'<button type="button" class="btn btn-link" onclick="gwxq(this)" gwid="'+ v.gwid +'">'+ v.gwmc + '</button>' +
							'</div><div class="col-md-2">' +
								'<button type="button" class="btn btn-default" onclick="sqzw(this)" gwid="'+ v.gwid +'">申请职位</button>' +
							'</div></div></div></div><div class="panel-body"><div>'+
						'<h4>'+ v.qymc +'</h4>' +
					'</div><div>' +
						'<span>地点: '+ v.city +' </span> <span>学历: 本科</span> <span>月薪:' +
							''+ v.gwyxmc +'</span> <span>发布日期:'+ v.gwfbrq +'</span>' +
					'</div></div></div>';
					totalHtml += html;
				});
				$('#lodingDiv').before(totalHtml);
				offset += searchCondition.limit;
				flag = true;
				if(!sfyGdt()){
					$('#lodingDiv').html('没有更多了...');
				}
			}
			
		}
	});
}

function sqzw(btn){
	$('#gwlbDiv' + $(btn).attr('gwid')).hide();
	$.ajax({
		url:'./insertXsypxx.do',
		data:{
			gwid:$(btn).attr('gwid'),
			xsid:$.cookie('yhid')
		},
		success:function(data){
			if(data.status == '1'){
				$.confirm({
                    title: '申请成功',
                    content: '您的简历已经发生给该公司',
                    autoClose: 'cancelAction|3000',
                    escapeKey: 'cancelAction',
                    buttons: {
                        confirm: {
                            btnClass: 'btn-primary',
                            text: '确定',
                            action: function () {
                            	
                            }
                        },
                        cancelAction: {
                            text: '取消',
                            action: function () {
                            	
                            }
                        }
                    }
                });
			}else{
				$.alert('申请失败');
			}
		}
	});
}

function gwxq(btn){
	window.open('gwxqym.jsp?gwid=' + $(btn).attr('gwid'));
}

function setProvince() {
	$.ajax({
		url : "./listProvince.do",
		success : function(data) {
			var optionHtml = '<option value="all">所有省</option>';
			$.each(data, function(i, v) {
				optionHtml += '<option value="' + v.provinceId + '">'
						+ v.province + '</option>'
			});
			$('#provinceSelect').html(optionHtml);
			// $select.selectpicker('refresh');
			// provinceSchool = data;
		}
	});
}

function setCity(provinceId) {
	var optionHtml = '<option value="all">所有市</option>';
	if (provinceId != 'all') {
		optionHtml = '';
	}
	$.ajax({
		url : "./listCities.do",
		data : {
			provinceId : provinceId
		},
		success : function(data) {

			$.each(data, function(i, v) {
				optionHtml += '<option value="' + v.cityId + '">' + v.city
						+ '</option>'
			});
			$('#citySelect').html(optionHtml);
			searchCondition.gzdd = $('#citySelect').val();
			offset = 0;
			setGwjbxx();
		}
	});
}
function sfyGdt(){
	var scrollHeight = $(document).height();
	var windowHeight = $(this).height();
	
	if(scrollHeight > windowHeight){
		return true;
	}else {
		return false;
	}

}
