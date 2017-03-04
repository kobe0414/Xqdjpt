package stu.liangyf.bysj.service;

import java.util.List;

import stu.liangyf.bysj.entity.CityEntity;
import stu.liangyf.bysj.entity.GwlbwdEntity;
import stu.liangyf.bysj.entity.ProvinceEntity;
import stu.liangyf.bysj.entity.SchoolEntity;

public interface UtilsService {
	public List<ProvinceEntity> listProvince();

	public List<CityEntity> listCitiesByProvinceId(String provinceId);

	public List<SchoolEntity> listSchoolsByProvinceId(int provinceId);
	
	public List<GwlbwdEntity> listGwlbwd();
}
