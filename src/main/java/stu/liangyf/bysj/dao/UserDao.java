package stu.liangyf.bysj.dao;

import java.util.List;
import java.util.Map;

import stu.liangyf.bysj.entity.GwjbxxEntity;
import stu.liangyf.bysj.entity.QyjbxxEntity;
import stu.liangyf.bysj.entity.XsjbxxEntity;
import stu.liangyf.bysj.entity.XsypxxEntity;

public interface UserDao {

	public XsjbxxEntity getXsjbxx(String xssjhm,String xsyx,String xsdlmm);
	
	public QyjbxxEntity getQyjbxx(String qylxdh,String qyyx,String qydlmm);
	
	public XsjbxxEntity getXsjbxxByXsid(String xsid);
	
	public List<GwjbxxEntity> listGwjbxx(Map<String,Object> params);
	
	public GwjbxxEntity getGwjbxxByGwid(String gwid);
	
	public int insertXsypxx(String gwid,String xsid,String dqzt);
	
	public List<XsypxxEntity> listWdtdjlByXsid(Map<String, Object> params);
	
	public int countWdtdjlByXsid(Map<String, Object> params);
	
	public int updateXsjlmc(String xsid,String xsjlmc);
	
	public int updateXsjbxx(XsjbxxEntity xsjbxxEntity);
}
