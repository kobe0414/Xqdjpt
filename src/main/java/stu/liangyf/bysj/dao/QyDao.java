package stu.liangyf.bysj.dao;

import java.util.List;
import java.util.Map;

import stu.liangyf.bysj.entity.GwjbxxEntity;
import stu.liangyf.bysj.entity.QyjbxxEntity;
import stu.liangyf.bysj.entity.XsypxxEntity;

public interface QyDao {
	
	public QyjbxxEntity getQyjbxxByQyid(String qyid);
	
	public List<GwjbxxEntity> listGwypxxByQyid(Map<String, Object> params);
	
	public int countGwypxxByQyid(Map<String, Object> params);
	
	public List<XsypxxEntity> listGwypxsxxByGwid(Map<String, Object> params);
	
	public int countGwypxsxxByGwid(Map<String, Object> params);
	
	public int insertGwjbxx(GwjbxxEntity gwjbxxEntity);
	
	public int updateGwjbxx(GwjbxxEntity gwjbxxEntity);
	
	public int updateQyjbxx(QyjbxxEntity qyjbxxEntity);

	public int deleteQygw(String gwid);
	
	public int updateXsypzt(Map<String,Object> params);
	
	public int updateQydlmm(String xmm,String qyyx,String qydlmm);
}
