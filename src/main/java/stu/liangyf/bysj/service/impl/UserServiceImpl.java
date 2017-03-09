package stu.liangyf.bysj.service.impl;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.druid.sql.dialect.oracle.ast.stmt.OracleIfStatement.Else;

import net.sf.json.JSONObject;
import stu.liangyf.bysj.dao.UserDao;
import stu.liangyf.bysj.entity.GwjbxxEntity;
import stu.liangyf.bysj.entity.QyjbxxEntity;
import stu.liangyf.bysj.entity.XsjbxxEntity;
import stu.liangyf.bysj.entity.XsypxxEntity;
import stu.liangyf.bysj.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	@Override
	public XsjbxxEntity getXsjbxx(String xssjhm, String xsyx, String xsdlmm) {
		
		return userDao.getXsjbxx(xssjhm, xsyx, xsdlmm);
	}

	@Override
	public QyjbxxEntity getQyjbxx(String qylxdh, String qyyx, String qydlmm) {
		
		return userDao.getQyjbxx(qylxdh, qyyx, qydlmm);
	}

	@Override
	public XsjbxxEntity getXsjbxxByXsid(String xsid) {
		
		return userDao.getXsjbxxByXsid(xsid);
	}

	@Override
	public List<GwjbxxEntity> listGwjbxx(HttpServletRequest request) {
		Map<String, Object> params = new HashMap<String, Object>();
		String gwgzdd = request.getParameter("gzdd");
		String gwlbid = request.getParameter("zylx");
		String gwyx = request.getParameter("yxfw");
		String gwfbrq = request.getParameter("fbsj");
		String gwgjz = request.getParameter("gwgjz");
		System.out.println("gwgjz = " + gwgjz);
		String xsid = request.getParameter("xsid");
		int limit = Integer.valueOf(request.getParameter("limit"));
		int offset = Integer.valueOf(request.getParameter("offset"));
		params.put("limit", limit);
		params.put("offset", offset);
		params.put("xsid", xsid);
		if(gwgzdd != null && !"all".equals(gwgzdd)){
			params.put("gwgzdd", gwgzdd);
		}
		if(gwlbid != null &&!"all".equals(gwlbid)){
			params.put("gwlbid", gwlbid);
		}
		if(gwyx != null &&!"all".equals(gwyx)){
			params.put("gwyx", Integer.valueOf(gwyx));
		}
		if(gwfbrq != null && !"all".equals(gwfbrq)){
			params.put("gwfbrq", Integer.valueOf(gwfbrq));
		}
		if(gwgjz != null && !"all".equals(gwgjz) && !"".equals(gwgjz)){
			params.put("gwgjz", gwgjz);
		}
		return userDao.listGwjbxx(params);
	}

	@Override
	public GwjbxxEntity getGwjbxxByGwid(String gwid) {
		
		return userDao.getGwjbxxByGwid(gwid);
	}

	@Override
	public int insertXsypxx(HttpServletRequest request) {
		String gwid = request.getParameter("gwid");
		String xsid = request.getParameter("xsid");
//		String dqzt = request.getParameter("dqzt");
		
		return userDao.insertXsypxx(gwid, xsid, "1");
	}

	@Override
	public JSONObject listWdtdjlByXsid(HttpServletRequest request) {
		Map<String, Object> params = new HashMap<String, Object>();
		String xsid = request.getParameter("xsid");
		String dqzt = request.getParameter("dqzt");
		String tdsjsx = request.getParameter("tdsjsx");
		int limit = Integer.valueOf(request.getParameter("limit"));
		int offset = Integer.valueOf(request.getParameter("offset"));
		if(dqzt != null && !"all".equals(dqzt)){
			params.put("dqzt",dqzt);
		}
		params.put("tdsjsx", tdsjsx);
		params.put("xsid",xsid);
		params.put("limit", limit);
		params.put("offset", offset);
		List<XsypxxEntity> results = userDao.listWdtdjlByXsid(params);
		int count = userDao.countWdtdjlByXsid(params);
		JSONObject resultJson = new JSONObject();
		resultJson.put("rows", results);
		resultJson.accumulate("total", count);
		return resultJson;
	}

	@Override
	public int updateXsjlmc(String xsid, String xsjlmc) {
		
		return userDao.updateXsjlmc(xsid, xsjlmc);
	}

	@Override
	public int updateXsjbxx(HttpServletRequest request) {
		XsjbxxEntity xsjbxxEntity = new XsjbxxEntity();
		xsjbxxEntity.setXsid(request.getParameter("xsid"));
		xsjbxxEntity.setXszwpj(request.getParameter("xszwpj"));
		xsjbxxEntity.setXszyjn(request.getParameter("xszyjn"));
		xsjbxxEntity.setXsshzs(request.getParameter("xsshzs"));
		xsjbxxEntity.setXsqwyx(Integer.valueOf(request.getParameter("xsqwyx")));
		xsjbxxEntity.setXsqwgzdd(request.getParameter("xsqwgzdd"));
		xsjbxxEntity.setXsqwcszy(request.getParameter("xsqwcszy"));
		xsjbxxEntity.setXsszxxid(request.getParameter("xsszxxid"));
		xsjbxxEntity.setXszzmm(request.getParameter("xszzmm"));
		xsjbxxEntity.setXsxl(request.getParameter("xsxl"));
		xsjbxxEntity.setXssjhm(request.getParameter("xssjhm"));
		xsjbxxEntity.setXsyx(request.getParameter("xsyx"));
		xsjbxxEntity.setXscsrq(request.getParameter("xscsrq"));
		
		return userDao.updateXsjbxx(xsjbxxEntity);
	}

	@Override
	public int updateXsdlmm(String xmm, String xxzh, String xsdlmm) {
		
		return userDao.updateXsdlmm(xmm, xxzh, xsdlmm);
	}

	

}
