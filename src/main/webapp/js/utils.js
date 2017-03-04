var provinceSchool;
function setSchoolProvince(selectId) {
	var $select = $('#' + selectId);
	if (provinceSchool) {

	} else {
		$.ajax({
			url : "./listProvince.do",
			success : function(data) {
				var optionHtml = '';
				$.each(data, function(i, v) {
					optionHtml += '<option value="' + v.id + '">' + v.province
							+ '</option>'
				});
				$select.html(optionHtml);
				$select.selectpicker('refresh');
				provinceSchool = data;
			}
		});
	}
}

function setSchool(provinceId, selectId) {
	var $select = $('#' + selectId);

	$.ajax({
		url : "./listSchools.do",
		data : {
			provinceId : provinceId
		},
		success : function(data) {
			var optionHtml = '';
			$.each(data, function(i, v) {
				optionHtml += '<option value="' + v.id + '">' + v.school_name
						+ '</option>'
			});
			$select.html(optionHtml);
			$select.selectpicker('refresh');
		}
	});

}

function setGwlbwd(selectId){
	var $select = $('#' + selectId);
	$.ajax({
		url : "./listGwlbwd.do",
		success : function(data) {
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

function setCityProvince(selectId){
	var $select = $('#' + selectId);
	var optionHtml = '';
	if (provinceSchool) {
		$.each(provinceSchool, function(i, v) {
			optionHtml += '<option value="' + v.provinceId + '">' + v.province
					+ '</option>'
		});
		$select.html(optionHtml);
		$select.selectpicker('refresh');
	} else {
		$.ajax({
			url : "./listProvince.do",
			success : function(data) {
				
				$.each(data, function(i, v) {
					optionHtml += '<option value="' + v.provinceId + '">' + v.province
							+ '</option>'
				});
				$select.html(optionHtml);
				$select.selectpicker('refresh');
				provinceSchool = data;
			}
		});
	}
}
function setCity(provinceId,selectId){
	var $select = $('#' + selectId);
	$.ajax({
		url : "./listCities.do",
		data : {
			provinceId : provinceId
		},
		success : function(data) {
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
