package stu.liangyf.bysj.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;
import stu.liangyf.bysj.entity.CityEntity;
import stu.liangyf.bysj.entity.GwlbwdEntity;
import stu.liangyf.bysj.entity.ProvinceEntity;
import stu.liangyf.bysj.entity.SchoolEntity;
import stu.liangyf.bysj.service.UserService;
import stu.liangyf.bysj.service.UtilsService;
import stu.liangyf.bysj.service.XxService;

@Controller
public class UtilsController {

	@Autowired
	private UtilsService utilsService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private XxService xxService;
	
	@RequestMapping(value = "yhdl.do")
	@ResponseBody
	public JSONObject yhdl(HttpServletRequest request){
		JSONObject resultJson = new JSONObject();
		String yhlx = request.getParameter("yhlx");
		String yhzh = request.getParameter("yhzh");
		String yhmm = request.getParameter("yhmm");
		Object object = null;
		//学生登录
		if("1".equals(yhlx)){
			object = userService.getXsjbxx(yhzh, yhzh, yhmm);
		}else if("2".equals(yhlx)){ //企业登录
			object = userService.getQyjbxx(yhzh, yhzh, yhmm);
		}else if("3".equals(yhlx)) {
			object = xxService.getXxjbxx(yhzh, yhmm);
		}
		HttpSession session = request.getSession();
		if(object == null){ //用户名或密码错误 返回状态 0
			resultJson.accumulate("status", "0");
		}else {
			resultJson.accumulate("status", "1");
			resultJson.put("data", object);
			session.setAttribute(yhzh,"login");
		}
		
		return resultJson;
	}
	
	@RequestMapping(value = "listProvince.do")
	@ResponseBody
	public List<ProvinceEntity> listProvince(){		
		return utilsService.listProvince();
	}
	
	@RequestMapping(value = "listCities.do")
	@ResponseBody
	public List<CityEntity> listCities(HttpServletRequest request) {
		
		String provinceId = request.getParameter("provinceId");
		return utilsService.listCitiesByProvinceId(provinceId);
	}
	
	@RequestMapping(value = "listSchools.do")
	@ResponseBody
	public List<SchoolEntity> listSchools(HttpServletRequest request){
		int provinceId = Integer.valueOf(request.getParameter("provinceId"));
		return utilsService.listSchoolsByProvinceId(provinceId);
	}
	
	@RequestMapping(value = "listGwlbwd.do")
	@ResponseBody
	public List<GwlbwdEntity> listGwlbwd(){
		return utilsService.listGwlbwd();
	}
}
