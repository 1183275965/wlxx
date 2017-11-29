package cn.tarena.controller;


import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.UserInfo;
import cn.tarena.service.UserInfoService;
import cn.tarena.tool.Md5Utils;


//前台登陆页面
@Controller
public class LoginController {

	@Autowired
	private UserInfoService userInfoService;
	
	@RequestMapping("/beforelogin")
	public String index(){
		return "beforelogin";
	}
	
/*	@RequestMapping("Userlogin")
	public String login(UserInfo userInfo,Model model,HttpSession session ){
		if(userInfo != null) {
			UserInfo info = userInfoService.findUserInfoByName(userInfo);
			
			if(info == null ) {
				model.addAttribute("msg", "用户名或密码错误");
				return "index";
			}
			session.setAttribute("user", info);
//			System.out.println(info);
			return "index";
		}
		model.addAttribute("msg", "用户名或密码不能为空");
		return "index";
		
	}*/	
	@RequestMapping("Userlogin")
	public String login(UserInfo userInfo,Model model,HttpSession session){
		
		//代表当前用户
		 Subject subject = SecurityUtils.getSubject();
		
		 UsernamePasswordToken token = new UsernamePasswordToken(userInfo.getName(), userInfo.getPwd());
		 
		 
		 try {
			 subject.login(token);
			 
			 //得到登录成功的user
			 UserInfo user = (UserInfo) subject.getPrincipal();
			 
			session.setAttribute("user",user);
			 
			 return "redirect:/index";
		} catch (AuthenticationException e) {
			e.printStackTrace();
			
			 model.addAttribute("msg","用户名或密码不正确！");
 			return "beforelogin";
		}
	}
	
	/*@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		return "index";*/

	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.removeAttribute("user");
//		通知shiro框架 退出登录
		Subject subject = SecurityUtils.getSubject();
		//判断是否是登录状态 如果是则退出
		if (subject.isAuthenticated()) {
			subject.logout();
		}
		return "redirect:/index";
	}

}
