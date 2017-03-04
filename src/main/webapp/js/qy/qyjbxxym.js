var qyjbxx ;

$(function(){
	CKEDITOR.replace('qyjsTextarea');
	$('#qyjbxxbjDiv').hide();
	setQyjbxx();
	
	$('#bjHuoBcSpan').click(function() {		
		if($('#qyjbxxbjDiv').is(":hidden")){
			$('#qyjbxxbcDiv').hide();
			$('#qyjbxxbjDiv').show();
			$(this).html('保存');
			getQyjbxx();
		}else{
			$('#qyjbxxbcDiv').show();
			$('#qyjbxxbjDiv').hide();
			$(this).html('编辑');
		}
	});
});

function getQyjbxx(){
	$('#qymcInput').val(qyjbxx.qymc);
	$('#qyyxInput').val(qyjbxx.qyyx);
	$('#qylxdhInput').val(qyjbxx.qylxdh);
	$('#qygmInput').val(qyjbxx.qygm);
	$('#qyxzInput').val(qyjbxx.qyxz);
	$('#qyhyInput').val(qyjbxx.qyhy);
	$('#qydzInput').val(qyjbxx.qydz);
	CKEDITOR.instances.qyjsTextarea.setData(qyjbxx.qyjs); 

}

function setQyjbxx(){
	$.ajax({
		url:'../getQyjbxxByQyid.do',
		data:{
			qyid:'q01'
		},
		success:function(data){
			qyjbxx = data;
			$('#qymc').text(data.qymc);
			$('#qyyx').text(data.qyyx);
			$('#qylxdh').text(data.qylxdh);
			$('#qygm').text(data.qygm);
			$('#qyxz').text(data.qyxz);
			$('#qyhy').text(data.qyhy);
			$('#qydz').text(data.qydz);
			$('#qyjs').html(data.qyjs);
		}
	});
	
}