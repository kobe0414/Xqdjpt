package stu.liangyf.bysj.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;
import stu.liangyf.bysj.entity.GwjbxxEntity;
import stu.liangyf.bysj.entity.XsjbxxEntity;
import stu.liangyf.bysj.service.UserService;

@Controller
public class UserController {

	@Autowired
	public UserService userService;
	
	
	
	@RequestMapping(value = "getXsjbxxByxsid.do")
	@ResponseBody
	public XsjbxxEntity getXsjbxxByxsid(HttpServletRequest request){
		
		String xsid = request.getParameter("xsid");
		return userService.getXsjbxxByXsid(xsid);
	}
	
	@RequestMapping(value = "listGwjbxx.do")
	@ResponseBody
	public List<GwjbxxEntity> listGwjbxx(HttpServletRequest request){
		
		return userService.listGwjbxx(request);
	}
	
	@RequestMapping(value = "getGwjbxxByGwid.do")
	@ResponseBody
	public GwjbxxEntity getGwjbxxByGwid(HttpServletRequest request){
		String gwid = request.getParameter("gwid");
		return userService.getGwjbxxByGwid(gwid);
	}
	
	@RequestMapping(value = "insertXsypxx.do")
	@ResponseBody
	public JSONObject insertXsypxx(HttpServletRequest request){
		JSONObject resultJson = new JSONObject();
		int result = userService.insertXsypxx(request);	
		if(result > 0){
			resultJson.accumulate("status", 1);
		}else{
			resultJson.accumulate("status", 0);
		}
		return resultJson;
	}
	
	@RequestMapping(value = "listWdtdjlByXsid.do")
	@ResponseBody
	public JSONObject listWdtdjlByXsid(HttpServletRequest request){
		
		return userService.listWdtdjlByXsid(request);
	}
}
