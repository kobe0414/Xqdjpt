package stu.liangyf.bysj.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;
import stu.liangyf.bysj.entity.GwjbxxEntity;
import stu.liangyf.bysj.entity.QyjbxxEntity;
import stu.liangyf.bysj.entity.XsjbxxEntity;
import stu.liangyf.bysj.entity.XsypxxEntity;

public interface UserService {

    public XsjbxxEntity getXsjbxx(String xssjhm,String xsyx,String xsdlmm);
	
	public QyjbxxEntity getQyjbxx(String qylxdh,String qyyx,String qydlmm);
	
	public XsjbxxEntity getXsjbxxByXsid(String xsid);
	
	public List<GwjbxxEntity> listGwjbxx(HttpServletRequest request);
	
	public GwjbxxEntity getGwjbxxByGwid(String gwid);
	
	public int insertXsypxx(HttpServletRequest request);
	
	public JSONObject listWdtdjlByXsid(HttpServletRequest request);
	
	
}
