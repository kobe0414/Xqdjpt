package stu.liangyf.bysj.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import stu.liangyf.bysj.dao.TestDao;
import stu.liangyf.bysj.entity.QyjbxxEntity;
import stu.liangyf.bysj.service.TestService;

@Service
public class TestServiceImpl implements TestService{

	@Autowired
	private TestDao testDao;
	
	@Override
	public QyjbxxEntity getQyjbxxByQyid(String qyid) {
		// TODO Auto-generated method stub
		return testDao.getQyjbxxByQyid(qyid);
	}

}
