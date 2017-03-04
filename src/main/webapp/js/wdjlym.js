var wdjl ;

$(function() {
	$('#wdjlbjDiv').hide();
	getWdjl();
	setSchoolProvince('provinceSchoolSelect');
	setGwlbwd('xsqwcszySelect');
	setCityProvince('provinceCitySelect');
	
	$('#datetimepicker1').datetimepicker({
		format: 'YYYY-MM-DD',//日期格式化，只显示日期
        locale: 'zh-CN',
        showClear: true,
        viewMode: 'years'
	});
	
	$("#input-1").fileinput({
        language: 'zh', //设置语言
        uploadUrl: "/manage/upload", //上传的地址
        uploadAsync: false,
        allowedFileExtensions: ['jpg','txt'],//接收的文件后缀
        showUpload: true, //是否显示上传按钮
        showCaption: false,//是否显示标题
        browseClass: "btn btn-primary", //按钮样式
        dropZoneEnabled: false,//是否显示拖拽区域
        maxFileCount: 1, //表示允许同时上传的最大文件个数
        enctype: 'multipart/form-data',
        validateInitialCount: true,
        allowedPreviewTypes: ['image', 'video'],
        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
        msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
    });
	
	
	$('#bjHuoBcSpan').click(function() {		
		if($('#wdjlbjDiv').is(":hidden")){
			$('#wdjlckDiv').hide();
			$('#wdjlbjDiv').show();
			$(this).html('保存');			
			bjGexx();
			
		}else{
			$('#wdjlckDiv').show();
			$('#wdjlbjDiv').hide();
			$(this).html('编辑');
		}
	});
	
	$('#provinceSchoolSelect').change(function(){
		setSchool($(this).val(), 'schoolSelect');
	});
	
	$('#provinceCitySelect').change(function(){
		setCity($(this).val(), 'citySelect');
	});
});

function bjGexx(){
	var xsxm = $('#xsxm').text();
	var xsxb = $('#xsxb').text();
	var xscsrq = $('#xscsrq').text();
	var xsyx = $('#xsyx').text();
	var xssjhm = $('#xssjhm').text();
	var xsxl = $('#xsxl').attr('value');
	var xszzmm = $('#xszzmm').attr('value');
	var xsszxxid = $('#xsszxx').attr('value');
	var xsqwcszy = $('#xsqwcszy').attr('value');
	var xsqwgzdd = $('#xsqwgzdd').attr('value');
	var xsqwyx = $('#xsqwyxmin').attr('value');

	var xsshzs = $('#xsshzs').text();
	var xszyjn = $('#xszyjn').text();
	var xszwpj = $('#xszwpj').text();
	var school_pro_id = $('#xsszxx').attr('schoolproid');;
	var provinceId = $('#xsqwgzdd').attr('proid');;
	
	$('#xsxmInput').val(xsxm);
	if(xsxb == '男'){
		$("input[name='sex']").get(0).checked=true; 
	}else{
		$("input[name='sex']").get(1).checked=true; 
	}
	$('#xscsrqInput').val(xscsrq);
	$('#xsyxInput').val(xsyx);
	$('#xssjhmInput').val(xssjhm);	
	$('#xsxlSelect').selectpicker('val',xsxl);
	
	$('#xszzmmSelect').selectpicker('val',xszzmm);
	$('#provinceSchoolSelect').selectpicker('val',school_pro_id);
	$('#schoolSelect').selectpicker('val',xsszxxid);
	
	$('#xsqwcszySelect').selectpicker('val',xsqwcszy);

	$('#provinceCitySelect').selectpicker('val',provinceId);
	$('#citySelect').selectpicker('val',xsqwgzdd);
	
	$('#gwyxSelect').selectpicker('val',xsqwyx);

	$('#xsshzsTextarea').val(xsshzs);
	$('#xszyjnTextarea').val(xszyjn);
	$('#xszwpjTextarea').val(xszwpj);
	setSchool($('#provinceSchoolSelect').val(), 'schoolSelect');
	setCity($('#provinceCitySelect').val(), 'citySelect');
}

function getWdjl(){
	$.ajax({
		url:'./getXsjbxxByxsid.do',
		data:{
			xsid:$.cookie('yhid')
		},
		success:function(data){
			wdjl = data;
			setWdjl();
		}
	});
}

function setWdjl(){
	
	$('#xsxm').text(wdjl.xsxm);
	$('#xsxb').text(wdjl.xszzmm);
	$('#xscsrq').text(wdjl.xscsrq);
	$('#xsyx').text(wdjl.xsyx);
	$('#xssjhm').text(wdjl.xssjhm);
	
	$('#xsxl').text(wdjl.xsxlmc);
	$('#xsxl').attr('value',wdjl.xsxl);
	
	$('#xszzmm').text(wdjl.xszzmmmc);
	$('#xszzmm').attr('value',wdjl.xszzmm)
	
	$('#xsszxx').text(wdjl.school_name);
	$('#xsszxx').attr('value',wdjl.xsszxxid);
	$('#xsszxx').attr('schoolproid',wdjl.school_pro_id);
	
	$('#xsqwcszy').text(wdjl.gwlbmc);
	$('#xsqwcszy').attr('value',wdjl.xsqwcszy);
	
	$('#xsqwgzdd').text(wdjl.province + '-' + wdjl.city);
	$('#xsqwgzdd').attr('value',wdjl.xsqwgzdd);
	$('#xsqwgzdd').attr('pro',wdjl.province);
	$('#xsqwgzdd').attr('proid',wdjl.provinceId);
	
	$('#xsqwyx').text(wdjl.xsqwyxmc);
	$('#xsqwyx').attr('value',wdjl.xsqwyx);
	
	$('#xsshzs').text(wdjl.xsshzs);
	$('#xszyjn').text(wdjl.xszyjn);
	$('#xszwpj').text(wdjl.xszwpj);
}


