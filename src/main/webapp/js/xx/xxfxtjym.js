$(function(){
	var gwxz = echarts.init(document.getElementById('gwxz'));
	gwxz.setOption(getGwxzChartsOption());
	
	var gwxzTop10 = echarts.init(document.getElementById('gwxzTop10'));
	gwxzTop10.setOption(getGwxzTop10Option());
})

function getGwxzChartsOption(){
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
		        data: ['2000以下/月','2000-3000/月','3000-4000/月','4000以上/月']
		    },
		    series : [
		        {
		            name: '薪资水平',
		            type: 'pie',
		            radius : '55%',
		            center: ['50%', '60%'],
		            data:[
		                {value:335, name:'2000以下/月'},
		                {value:310, name:'2000-3000/月'},
		                {value:234, name:'3000-4000/月'},
		                {value:135, name:'4000以上/月'}
		            ],
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

function getGwxzTop10Option(){
	var option = {
            title: {
                text: '岗位薪资Top5'
            },
            tooltip: {},
            legend: {
                data:['薪资']
            },
            xAxis: {
                data: ["软件/互联网开发/系统集成","互联网产品/运营管理","销售管理","物流/仓储","项目管理/项目协调"]
            },
            yAxis: {},
            series: [{
                name: '薪资',
                type: 'bar',
                data: [50, 45, 36, 25, 10]
            }]
        };
	return option;
}