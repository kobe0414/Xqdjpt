$(function(){
	if($.getUrlParam('from') != 'wdtdjl'){
		$('#sqgwBtnDiv').append('<button id="sqgwBtn" type="button" class="btn btn-default">立即申请</button>');
		
	}
	getGwjbxx();
	
	$('#sqgwBtn').click(function(){
		$(this).hide();
		sqzw();
	});
})

function getGwjbxx(){
	$.ajax({
		url:'./getGwjbxxByGwid.do',
		data:{
			gwid:$.getUrlParam('gwid')
		},
		success:function(data){
			$('#gwmcDiv').html(data.gwmc);
			$('#qymcDiv').html(data.qymc);
			var gwdy = data.gwdy;
			var split = ',';
			if(gwdy.indexOf(',') == -1){
				split = '，';
			}
			var spanHtml = '';
			$.each(gwdy.split(split),function(i,v){
				spanHtml += '<span class="label label-info">'+ v +'</span> ';
			});
			$('#gwdyDiv').append(spanHtml);
			$('#gwyxSpan').html(data.gwyxmc);
			$('#gwgzddSpan').html(data.city);
			$('#gwfbrqSpan').html(data.gwfbrq);
			$('#gwzprsSpan').html(data.gwzprs);
			$('#gwlbmcDiv').html(data.gwlbmc);
			$('#gwmsDiv').html(data.gwms);
			$('#qyjsDiv').html(data.qyjs);
		}
	});
}

function sqzw(){
	$.ajax({
		url:'./insertXsypxx.do',
		data:{
			gwid:$.getUrlParam('gwid'),
			xsid:$.cookie('yhid')
		},
		success:function(data){
			if(data.status == '1'){
				alert('申请成功');
			}else{
				
			}
		}
	});
}