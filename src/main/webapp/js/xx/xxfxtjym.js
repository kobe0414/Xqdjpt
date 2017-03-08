var gwxz;
var gwxzTop5;
$(function(){
	gwxz = echarts.init(document.getElementById('gwxz'));
	gwxzTop5 = echarts.init(document.getElementById('gwxzTop10'));
	
	getXxtdjlrs();
	getXxssbymss();
	getXxxsblys();
	setGwxzChartsOption();
	setGwxzTop5Option();
})

function setGwxzChartsOption(){
	$.ajax({
		url:'../countXzfbqk.do',
		type:'post',
		data:{
			xxid:$.cookie('yhid')
		},
		success:function(data){			
			gwxz.setOption(getGwxzChartsOption(data));
		}
	});
}

function setGwxzTop5Option(){
	$.ajax({
		url:'../countGwyprsTop5.do',
		type:'post',
		data:{
			xxid:$.cookie('yhid')
		},
		success:function(data){			
			gwxzTop5.setOption(getGwxzTop5Option(data));
		}
	});
}

function getGwxzChartsOption(data){
	var legendData = [];
	var seriesData = [];
	$.each(data,function(i,v){
		legendData[i] = v.gwyxmc;
		var nameAndValue = {
				name:v.gwyxmc,
				value:v.gwsl
		}
		seriesData[i] = nameAndValue;
	});
	option = {
		    title : {
		        text: '岗位薪资分布情况',
		        x:'center'
		    },
		    tooltip : {
		        trigger: 'item',
		        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    },
		    legend: {
		        orient: 'vertical',
		        left: 'left',
		        data: legendData
		    },
		    series : [
		        {
		            name: '薪资水平',
		            type: 'pie',
		            radius : '55%',
		            center: ['50%', '60%'],
		            data:seriesData,
		            itemStyle: {
		                emphasis: {
		                    shadowBlur: 10,
		                    shadowOffsetX: 0,
		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
		                }
		            }
		        }
		    ]
		};
	
	return option;
}

function getGwxzTop5Option(data){
	var xAxisData = [];
	var seriesData = [];
	$.each(data,function(i,v){
		xAxisData[i] = v.gwlbmc;
		seriesData[i] = v.yprs;
	});
	var option = {
            title: {
                text: '岗位类型应聘人数Top5'
            },
            tooltip: {},
            legend: {
                data:['应聘人数']
            },
            xAxis: {
                data: xAxisData
            },
            yAxis: {},
            series: [{
                name: '应聘人数',
                type: 'bar',
                data: seriesData
            }]
        };
	return option;
}


function getXxtdjlrs(){
	$.ajax({
		url:'../countXxxstjlsByXxid.do',
		type:'post',
		data:{
			xxid:$.cookie('yhid')
		},
		success:function(data){
			$('#bxtdjlrsDiv').html(data.data);
		}
	});
}

function getXxssbymss(){
	$.ajax({
		url:'../countXxssbymssByXxid.do',
		type:'post',
		data:{
			xxid:$.cookie('yhid')
		},
		success:function(data){
			$('#bxbymsrsDiv').html(data.data);
		}
	});
}

function getXxxsblys(){
	$.ajax({
		url:'../countXxxsblysByXxid.do',
		type:'post',
		data:{
			xxid:$.cookie('yhid')
		},
		success:function(data){
			$('#mstgblyrsDiv').html(data.data);
		}
	});
}