package stu.liangyf.bysj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import stu.liangyf.bysj.dao.UserDao;
import stu.liangyf.bysj.dao.UtilsDao;
import stu.liangyf.bysj.entity.CityEntity;
import stu.liangyf.bysj.entity.GwlbwdEntity;
import stu.liangyf.bysj.entity.ProvinceEntity;
import stu.liangyf.bysj.entity.SchoolEntity;
import stu.liangyf.bysj.service.UtilsService;

@Service
public class UtilsServinceImpl implements UtilsService{

	@Autowired
	private UtilsDao utilsDao;
	
	@Override
	public List<ProvinceEntity> listProvince() {
		
		return utilsDao.listProvince();
	}

	@Override
	public List<CityEntity> listCitiesByProvinceId(String provinceId) {
		
		return utilsDao.listCitiesByProvinceId(provinceId);
	}

	@Override
	public List<SchoolEntity> listSchoolsByProvinceId(int provinceId) {
		
		return utilsDao.listSchoolsByProvinceId(provinceId);
	}

	@Override
	public List<GwlbwdEntity> listGwlbwd() {
		
		return utilsDao.listGwlbwd();
	}

}
