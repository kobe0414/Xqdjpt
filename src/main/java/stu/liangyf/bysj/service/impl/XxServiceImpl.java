package stu.liangyf.bysj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import stu.liangyf.bysj.dao.XxDao;
import stu.liangyf.bysj.entity.GwyprsTop5Entity;
import stu.liangyf.bysj.entity.XxjbxxEntity;
import stu.liangyf.bysj.entity.XzfbqkEntity;
import stu.liangyf.bysj.service.XxService;

@Service
public class XxServiceImpl implements XxService{

	@Autowired
	private XxDao xxDao;
	
	@Override
	public int countXxxstjlsByXxid(String xxid) {
		
		return xxDao.countXxxstjlsByXxid(xxid);
	}

	@Override
	public int countXxssbymssByXxid(String xxid) {
		
		return xxDao.countXxssbymssByXxid(xxid);
	}

	@Override
	public int countXxxsblysByXxid(String xxid) {
		
		return xxDao.countXxxsblysByXxid(xxid);
	}

	@Override
	public List<XzfbqkEntity> countXzfbqk() {
		
		return xxDao.countXzfbqk();
	}

	@Override
	public List<GwyprsTop5Entity> countGwyprsTop5() {
		
		return xxDao.countGwyprsTop5();
	}

	@Override
	public XxjbxxEntity getXxjbxx(String xxzh, String xxdlmm) {
		
		return xxDao.getXxjbxx(xxzh, xxdlmm);
	}

}
