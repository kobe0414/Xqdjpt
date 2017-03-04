package stu.liangyf.bysj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;
import stu.liangyf.bysj.entity.QyjbxxEntity;
import stu.liangyf.bysj.service.QyService;

@Controller
public class QyController {

	@Autowired
	private QyService qyService;
	
	
	@RequestMapping(value = "getQyjbxxByQyid.do")
	@ResponseBody
	public QyjbxxEntity getQyjbxxByQyid(HttpServletRequest request){
		String qyid = request.getParameter("qyid");
		
		return qyService.getQyjbxxByQyid(qyid);
	}
	
	@RequestMapping(value = "listGwypxxByQyid.do")
	@ResponseBody
	public JSONObject listGwypxxByQyid(HttpServletRequest request){
		return qyService.listGwypxxByQyid(request);
	}
	
	@RequestMapping(value = "listGwypxsxxByGwid.do")
	@ResponseBody
	public JSONObject listGwypxsxxByGwid(HttpServletRequest request){
		return qyService.listGwypxsxxByGwid(request);
	}
	
	@RequestMapping(value = "insertGwjbxx.do")
	@ResponseBody
	public JSONObject insertGwjbxx(HttpServletRequest request){
		
		return qyService.insertGwjbxx(request);
	}
}
