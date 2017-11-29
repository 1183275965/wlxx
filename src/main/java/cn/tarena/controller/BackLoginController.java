package cn.tarena.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.Admin;
import cn.tarena.pojo.UserInfo;
import cn.tarena.service.AdminLoginService;

@Controller
public class BackLoginController {

	@Autowired
	private AdminLoginService adminLoginService;
	
	//转到后台登陆页面
	@RequestMapping("/login")
	public String tologin(){
		return "login";
	}

	
	//通过登陆页面登陆后台管理系统
	@RequestMapping("/Backlogin")
	public String backlogin(Admin admin,Model model,HttpSession session ){
		if(admin != null) {
			
			Admin admins = adminLoginService.findAdminByName(admin);
			
			if(admins == null ) {
				model.addAttribute("msg", "用户名或密码错误");
				return "login";
			}
			session.setAttribute("admin", admins);
			
			return "admin/index";
		}
		model.addAttribute("msg", "用户名或密码不能为空");
		return "login";
		
	}		
	
	
	  @RequestMapping("/backloginout")
	  public String logout(HttpSession session){
		session.removeAttribute("admin");
		return "/login";
		
	}
	
	
}
