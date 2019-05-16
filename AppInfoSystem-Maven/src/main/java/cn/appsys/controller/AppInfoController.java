package cn.appsys.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.org.apache.xpath.internal.operations.And;

import cn.appsys.pojo.BackendUser;
import cn.appsys.pojo.Info;
import cn.appsys.service.AppInfoService;
import cn.appsys.service.AppVersionService;

@Controller
@RequestMapping(value="/appInfo")
public class AppInfoController {

	@Autowired
	private AppVersionService appVersionService;
	
	@Autowired
	private AppInfoService appInfoService;
	
	private Info appinfo;
	/**
	 * app列表页面的跳转以及数据传递
	 * @param appInfo
	 * @return
	 */
	@RequestMapping(value="/applist.html")
	public ModelAndView addlist(@RequestParam(value="pn",required=false,defaultValue="1")Integer pn,Info appInfo,String flag,HttpSession session,String count){
		session.setAttribute("info",appInfo);

		ModelAndView model=new ModelAndView();
		PageInfo pageInfo=null;
		List<Info> list;
		//判断是否再次查询
		if(flag!=null){
			session.setAttribute("info",appinfo);
			PageHelper.startPage(pn, 4);
			//获取appinfo所有信息
			list=appInfoService.selectAll(appinfo);
			pageInfo=new PageInfo(list);
		}else{
			appinfo=appInfo;
			PageHelper.startPage(pn, 4);
			//获取appinfo所有信息
			list=appInfoService.selectAll(appInfo);
			pageInfo=new PageInfo(list);
		}
		
		//传入值并带到页面中
		model.addObject("pageinfo", pageInfo);
		model.setViewName("backend/applist");
		
		return model;
	}
	/**
	 * 跳转至新增信息页面
	 * @return
	 */
	@RequestMapping(value="/appadd.html",method=RequestMethod.GET)
	public String appAdd(){
		return "developer/appinfoadd";
	}
	
	/**
	 * 新增app信息
	 * @return
	 */
	@RequestMapping(value="/appadd.html",method=RequestMethod.POST)
	public String appInfoAdd(HttpServletRequest request,HttpSession session,String name,String content,String zhaiyao,String zuozhe,String baogao,@RequestParam(value="file")MultipartFile file){
		String fileName;
		String path;
		Info appInfo=new Info();
		//保存信息
		BackendUser user=(BackendUser) session.getAttribute("devUser");
		appInfo.setCreateDate(new Date());
		appInfo.setName(name);
		appInfo.setContent(content);
		appInfo.setBaogao(baogao);
		appInfo.setZhaiyao(zhaiyao);
		appInfo.setZuozhe(zuozhe);
		if (!file.isEmpty()) {
            try {
                BufferedOutputStream out = new BufferedOutputStream(
                        new FileOutputStream(new File("c://upload//img//"+name+".jpg")));//保存图片到目录下
                out.write(file.getBytes());
                out.flush();
                out.close();
                String filename=name+".jpg";
                appInfo.setFile(filename);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return "上传失败," + e.getMessage();
            } catch (IOException e) {
                e.printStackTrace();
                return "上传失败," + e.getMessage();
            }
        } else {
            return "上传失败，因为文件是空的.";
        }
		int flag=appInfoService.insert(appInfo);
		if(flag>0){
			return "redirect:/appInfo/applist.html";
		}
		return "developer/appinfoadd";
	}
	
	@RequestMapping("select.html")
	public String selectById(Model model ,Integer id){
		Info info = appInfoService.selectById(id);
		
		
		model.addAttribute("info", info);
		return "developer/appinfoview";
	}
	
}
