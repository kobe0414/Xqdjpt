package stu.liangyf.bysj.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;
import stu.liangyf.bysj.entity.GwjbxxEntity;
import stu.liangyf.bysj.entity.QyjbxxEntity;
import stu.liangyf.bysj.entity.XsypxxEntity;

public interface QyService {

	public QyjbxxEntity getQyjbxxByQyid(String qyid);
	
	public JSONObject listGwypxxByQyid(HttpServletRequest request);
	
	public JSONObject listGwypxsxxByGwid(HttpServletRequest request);
	
	public JSONObject insertGwjbxx(HttpServletRequest request);
	
	public int updateGwjbxx(HttpServletRequest request);
	
	public int updateQyjbxx(HttpServletRequest request);
	
	public int deleteQygw(HttpServletRequest request);
}
