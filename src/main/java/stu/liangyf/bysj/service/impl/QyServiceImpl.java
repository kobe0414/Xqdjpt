package stu.liangyf.bysj.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.sf.json.JSONObject;
import stu.liangyf.bysj.dao.QyDao;
import stu.liangyf.bysj.entity.GwjbxxEntity;
import stu.liangyf.bysj.entity.QyjbxxEntity;
import stu.liangyf.bysj.entity.XsypxxEntity;
import stu.liangyf.bysj.service.QyService;

@Service
public class QyServiceImpl implements QyService{

	@Autowired
	private QyDao qyDao;
	
	@Override
	public QyjbxxEntity getQyjbxxByQyid(String qyid) {
		
		return qyDao.getQyjbxxByQyid(qyid);
	}

	@Override
	public JSONObject listGwypxxByQyid(HttpServletRequest request) {
		JSONObject resultJson = new JSONObject();
		Map<String, Object> params = new HashMap<String, Object>();
		String qyid = request.getParameter("qyid");
		int limit = Integer.valueOf(request.getParameter("limit"));
		int offset = Integer.valueOf(request.getParameter("offset"));
		params.put("qyid",qyid);
		params.put("limit",limit);
		params.put("offset",offset);
		int total = qyDao.countGwypxxByQyid(params);
		List<GwjbxxEntity> result = qyDao.listGwypxxByQyid(params);
		
		resultJson.accumulate("total", total);
		resultJson.put("rows", result);
		return resultJson;
	}

	@Override
	public JSONObject listGwypxsxxByGwid(HttpServletRequest request) {
		JSONObject resultJSON = new JSONObject();
		Map<String, Object> params = new HashMap<String, Object>();
		String gwid = request.getParameter("gwid");
		int limit = Integer.valueOf(request.getParameter("limit"));
		int offset = Integer.valueOf(request.getParameter("offset"));
		params.put("gwid",gwid);
		params.put("limit",limit);
		params.put("offset",offset);
		List<XsypxxEntity> result = qyDao.listGwypxsxxByGwid(params);
		int total = qyDao.countGwypxsxxByGwid(params);
		resultJSON.accumulate("total", total);
		resultJSON.put("rows", result);
		return resultJSON;
	}

	@Override
	public JSONObject insertGwjbxx(HttpServletRequest request) {
		GwjbxxEntity gwjbxxEntity = new GwjbxxEntity();
		
		gwjbxxEntity.setGwdy(request.getParameter("gwdy"));
		gwjbxxEntity.setGwfbqyid(request.getParameter("qyid"));
		gwjbxxEntity.setGwgzdd(request.getParameter("gwgzdd"));
		gwjbxxEntity.setGwid(UUID.randomUUID().toString().replaceAll("-", ""));
		gwjbxxEntity.setGwmc(request.getParameter("gwmc"));
		gwjbxxEntity.setGwms(request.getParameter("gwms"));
		gwjbxxEntity.setGwyx(Integer.valueOf(request.getParameter("gwyx")));
		gwjbxxEntity.setGwzprs(Integer.valueOf(request.getParameter("gwzprs")));
		gwjbxxEntity.setGwlbid(request.getParameter("gwlbid"));
		int result = qyDao.insertGwjbxx(gwjbxxEntity);
		JSONObject resultJSON = new JSONObject();
		if(result > 0){
			resultJSON.accumulate("status", 1);
		}else {
			resultJSON.accumulate("status", 0);
		}
		return resultJSON;
	}

	@Override
	public int updateGwjbxx(HttpServletRequest request) {
		GwjbxxEntity gwjbxxEntity = new GwjbxxEntity();
		gwjbxxEntity.setGwdy(request.getParameter("gwdy"));
		gwjbxxEntity.setGwgzdd(request.getParameter("gwgzdd"));
		gwjbxxEntity.setGwid(request.getParameter("gwid"));
		gwjbxxEntity.setGwmc(request.getParameter("gwmc"));
		gwjbxxEntity.setGwms(request.getParameter("gwms"));
		gwjbxxEntity.setGwyx(Integer.valueOf(request.getParameter("gwyx")));
		gwjbxxEntity.setGwzprs(Integer.valueOf(request.getParameter("gwzprs")));
		gwjbxxEntity.setGwlbid(request.getParameter("gwlbid"));
		
		return qyDao.updateGwjbxx(gwjbxxEntity);
	}

	@Override
	public int updateQyjbxx(HttpServletRequest request) {
		QyjbxxEntity qyjbxxEntity = new QyjbxxEntity();
		qyjbxxEntity.setQyid(request.getParameter("qyid"));
		qyjbxxEntity.setQyjs(request.getParameter("qyjs"));
		qyjbxxEntity.setQydz(request.getParameter("qydz"));
		qyjbxxEntity.setQyhy(request.getParameter("qyhy"));
		qyjbxxEntity.setQygm(request.getParameter("qygm"));
		qyjbxxEntity.setQylxdh(request.getParameter("qylxdh"));
		qyjbxxEntity.setQyyx(request.getParameter("qyyx"));
		qyjbxxEntity.setQymc(request.getParameter("qymc"));
		return qyDao.updateQyjbxx(qyjbxxEntity);
	}

	@Override
	public int deleteQygw(HttpServletRequest request) {
		String gwid = request.getParameter("gwid");
		return qyDao.deleteQygw(gwid);
	}

	@Override
	public int updateXsypzt(HttpServletRequest request) {
		Map<String, Object> params = new HashMap<String, Object>();
		String dqzt = request.getParameter("dqzt");
		String gwid = request.getParameter("gwid");
		String xsid = request.getParameter("xsid");
		params.put("dqzt", dqzt);
		params.put("gwid", gwid);
		params.put("xsid", xsid);
		
		return qyDao.updateXsypzt(params);
	}

}
