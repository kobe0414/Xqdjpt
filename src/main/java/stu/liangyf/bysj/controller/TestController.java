package stu.liangyf.bysj.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;
import stu.liangyf.bysj.entity.QyjbxxEntity;
import stu.liangyf.bysj.service.TestService;

import javax.servlet.http.HttpServletRequest;

@Controller
public class TestController {
	
	@Autowired
	private TestService testService;

	@RequestMapping("/{id}/restful.do")
	public String restful(@PathVariable("id") int id, HttpServletRequest request){

		System.out.println(request.getMethod());
		System.out.println("id === " + id);

		return "123";
	}
	
	@RequestMapping(value = "testJson.do")
	@ResponseBody
	public QyjbxxEntity testJson(){
		QyjbxxEntity qyjbxxEntity = testService.getQyjbxxByQyid("111");
		System.out.println(qyjbxxEntity.getQymc());
		return qyjbxxEntity;
	}
	
	@RequestMapping(value = "bootstrapTable.do")
	@ResponseBody
	public JSONObject bootstrapTable(){
		JSONObject object = new JSONObject();
		object.accumulate("total",100);
		Map<String,String> map = new HashMap<String, String>();
		map.put("qymc", "ABC有限公司");
		map.put("gwmc", "Java工程师");
		map.put("tdsj", "2017-01-12");
		map.put("dqzt", "已面试");
		Map<String,String> map1 = new HashMap<String, String>();
		map1.put("qymc", "123有限公司");
		map1.put("gwmc", "Java工程师");
		map1.put("tdsj", "2017-06-12");
		map1.put("dqzt", "已面试");
		Map<String,String> map2 = new HashMap<String, String>();
		map2.put("qymc", "千古有限公司");
		map2.put("gwmc", "IOS工程师");
		map2.put("tdsj", "2017-03-22");
		map2.put("dqzt", "已面试");
		List<Map<String,String>> list = new ArrayList<Map<String,String>>();
		list.add(map);
		list.add(map1);
		list.add(map2);
		object.put("rows",list);
		return object;
	}
	
	
	@RequestMapping(value = "bootstrapTableQygwlb.do")
	@ResponseBody
	public JSONObject bootstrapTableQygwlb(){
		JSONObject object = new JSONObject();
		object.accumulate("total",100);
		Map<String,String> map = new HashMap<String, String>();
		map.put("zprs", "12");
		map.put("gwmc", "Java工程师");
		map.put("tdjlrs", "2");
		map.put("dqzt", "已面试");
		Map<String,String> map1 = new HashMap<String, String>();
		map1.put("zprs", "22");
		map1.put("gwmc", "Java工程师");
		map1.put("tdjlrs", "4");
		map1.put("dqzt", "已面试");
		Map<String,String> map2 = new HashMap<String, String>();
		map2.put("zprs", "24");
		map2.put("gwmc", "IOS工程师");
		map2.put("tdjlrs", "6");
		map2.put("dqzt", "已面试");
		List<Map<String,String>> list = new ArrayList<Map<String,String>>();
		list.add(map);
		list.add(map1);
		list.add(map2);
		object.put("rows",list);
		return object;
	}
	
	@RequestMapping(value = "bootstrapTableYpxs.do")
	@ResponseBody
	public JSONObject bootstrapTableYpxs(){
		JSONObject object = new JSONObject();
		object.accumulate("total",100);
		Map<String,String> map = new HashMap<String, String>();
		map.put("xsxm", "科比");
		map.put("xsxx", "杭州师范大学");
		map.put("xsxl", "高中");
		map.put("dqzt", "已面试");
		Map<String,String> map1 = new HashMap<String, String>();
		map1.put("xsxm", "詹姆斯");
		map1.put("xsxx", "浙江大学");
		map1.put("xsxl", "本科");
		map1.put("dqzt", "已面试");
		Map<String,String> map2 = new HashMap<String, String>();
		map2.put("xsxm", "乔丹");
		map2.put("xsxx", "浙江理工大学");
		map2.put("xsxl", "博士");
		map2.put("dqzt", "已面试");
		List<Map<String,String>> list = new ArrayList<Map<String,String>>();
		list.add(map);
		list.add(map1);
		list.add(map2);
		object.put("rows",list);
		return object;
	}
	
	
	

}
