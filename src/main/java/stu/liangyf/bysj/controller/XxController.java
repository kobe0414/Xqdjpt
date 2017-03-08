package stu.liangyf.bysj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;
import stu.liangyf.bysj.entity.GwyprsTop5Entity;
import stu.liangyf.bysj.entity.XzfbqkEntity;
import stu.liangyf.bysj.service.XxService;

@Controller
public class XxController {

	@Autowired
	private XxService xxService;
	
	@RequestMapping(value = "countXxxstjlsByXxid.do")
	@ResponseBody
	public JSONObject countXxxstjlsByXxid(HttpServletRequest request){
		JSONObject resultJSON = new JSONObject();
		String xxid = request.getParameter("xxid");
		resultJSON.accumulate("data", xxService.countXxxstjlsByXxid(xxid));
		return resultJSON;
	}
	
	@RequestMapping(value = "countXxssbymssByXxid.do")
	@ResponseBody
	public JSONObject countXxssbymssByXxid(HttpServletRequest request){
		JSONObject resultJSON = new JSONObject();
		String xxid = request.getParameter("xxid");
		resultJSON.accumulate("data", xxService.countXxssbymssByXxid(xxid));
		return resultJSON;
	}
	
	@RequestMapping(value = "countXxxsblysByXxid.do")
	@ResponseBody
	public JSONObject countXxxsblysByXxid(HttpServletRequest request){
		JSONObject resultJSON = new JSONObject();
		String xxid = request.getParameter("xxid");
		resultJSON.accumulate("data", xxService.countXxxsblysByXxid(xxid));
		return resultJSON;
	}
	
	@RequestMapping(value = "countGwyprsTop5.do")
	@ResponseBody
	public List<GwyprsTop5Entity> countGwyprsTop5(){
		
		return xxService.countGwyprsTop5();
	}
	
	@RequestMapping(value = "countXzfbqk.do")
	@ResponseBody
	public List<XzfbqkEntity> countXzfbqk(){
		
		return xxService.countXzfbqk();
	}
}
