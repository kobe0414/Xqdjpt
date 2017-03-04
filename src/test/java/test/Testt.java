package test;

import java.util.UUID;

import javax.annotation.Resource;

import org.junit.Test;

import stu.liangyf.bysj.dao.TestDao;
import stu.liangyf.bysj.entity.QyjbxxEntity;

public class Testt extends BaseJunitSpring{

	@Resource
	private TestDao testDao;
	
	@Test
	public void getTest(){
		QyjbxxEntity qyjbxxEntity = testDao.getQyjbxxByQyid("111");
		System.out.println(qyjbxxEntity.getQymc());
	}
	
	@Test
	public void test1() {
		System.out.println(UUID.randomUUID().toString().replaceAll("-", ""));
	}
}
