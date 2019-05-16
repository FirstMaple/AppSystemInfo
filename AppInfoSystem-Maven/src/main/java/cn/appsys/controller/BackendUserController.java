package cn.appsys.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.appsys.pojo.BackendUser;
import cn.appsys.service.BackendUserService;

@Controller
@RequestMapping(value="backendUser")
public class BackendUserController {

	@Autowired
	private BackendUserService backendUserService;
	
	/**
	 * 跳转到管理员登录页面
	 * @return
	 */
	@RequestMapping(value="/backendlogin.html")
	public String hotai(){
		return "backendlogin";
	}
	
	/**
	 * 验证是否有此管理员
	 * @param name
	 * @param pwd
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/getlogin.html",method=RequestMethod.POST)
	public ModelAndView gethotai(String name,String pwd,HttpSession session){
		ModelAndView model = new ModelAndView();
		BackendUser endUser = backendUserService.getAll(name,pwd);
		if(endUser!=null){
			session.setAttribute("devUser",endUser);
			model.setViewName("/backend/main");
		}else{
			model.addObject("error", "用户名或密码输入错误！"); 
			model.setViewName("backendlogin");
		}
		return model;
		
	}
	
	/**
	 * 注销登录
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/backendUserloginOut.html")
	public String loginOut(HttpSession session){
		session.setAttribute("backendUser",null);
		return "redirect:/index.jsp";
	}
	
}
