package stu.liangyf.bysj.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import net.sf.json.JSONObject;
import stu.liangyf.bysj.entity.GwjbxxEntity;
import stu.liangyf.bysj.entity.XsjbxxEntity;
import stu.liangyf.bysj.service.UserService;

@Controller
public class UserController {

	private static Logger logger = Logger.getLogger(UserController.class);
	@Autowired
	public UserService userService;
	
//	public static String filePath = "C:/uploadFile";
	
	public static String filePath = "/root/xqdjpt/xsjl";
	
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
	
	@RequestMapping(value = "updateXsjbxx.do")
	@ResponseBody
	public JSONObject updateXsjbxx(HttpServletRequest request){
		JSONObject resultJSON = new JSONObject();
		if(userService.updateXsjbxx(request) == 1){
			resultJSON.accumulate("status",1);
		}else {
			resultJSON.accumulate("status",0);
		}
		return resultJSON;
	}
	
	
	
	@RequestMapping(value = "/uploadFile.do", method = RequestMethod.POST, produces = "application/json;charset=utf8")
    @ResponseBody
    public JSONObject uploadFileHandler(@RequestParam("file") MultipartFile file,HttpServletRequest request) throws IOException {
		String xsid = request.getParameter("xsid");
        if (!file.isEmpty()) {
            InputStream in = null;
            OutputStream out = null;
            try {
                File dir = new File(filePath+ File.separator + xsid);
                if (!dir.exists()){
                	dir.mkdirs();
                }
                File serverFile = new File(dir.getAbsolutePath() + File.separator + file.getOriginalFilename());
                in = file.getInputStream();
                out = new FileOutputStream(serverFile);
                byte[] b = new byte[1024];
                int len = 0;
                while ((len = in.read(b)) > 0) {
                    out.write(b, 0, len);
                }
                out.close();
                in.close();
                userService.updateXsjlmc(xsid, file.getOriginalFilename());
                JSONObject resultJSON = new JSONObject();
                resultJSON.accumulate("status","1");
                return resultJSON;
            } catch (Exception e) {
            	JSONObject resultJSON = new JSONObject();
                resultJSON.accumulate("status","0");
                return resultJSON;
            } finally {
                if (out != null) {
                    out.close();
                    out = null;
                }

                if (in != null) {
                    in.close();
                    in = null;
                }
            }
        } else {
        	JSONObject resultJSON = new JSONObject();
            resultJSON.accumulate("status","0");
            resultJSON.accumulate("msg", "File is empty");
            
            return resultJSON;
        }
    }
	
	@RequestMapping("download.do")    
    public ResponseEntity<byte[]> download(HttpServletRequest request) throws IOException {
    	String xsid = request.getParameter("xsid");
    	String xsjlmc = request.getParameter("xsjlmc");
        String path=filePath + File.separator + xsid + File.separator + xsjlmc;  
        File file=new File(path);  
        HttpHeaders headers = new HttpHeaders();    
        String fileName=new String(xsjlmc.getBytes("UTF-8"),"iso-8859-1");//为了解决中文名称乱码问题  
        headers.setContentDispositionFormData("attachment", fileName);   
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);   
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
                                          headers, HttpStatus.CREATED);    
    }   
}
