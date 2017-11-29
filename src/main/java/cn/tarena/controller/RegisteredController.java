package cn.tarena.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.UserInfo;
import cn.tarena.service.UserInfoService;
import cn.tarena.tool.Md5Utils;



//注册
@Controller
public class RegisteredController {

	@Autowired
	UserInfoService userInfoService;
	
	
	
/*	
	@RequestMapping("/registsubmit")
	public String saveUserInfo(UserInfo userinfo){
		userInfoService.saveUserInfo(userinfo);
		return "/index";
	}*/
	
	@RequestMapping("/registsubmit")
	public String saveUserInfo(UserInfo userinfo,Model modle){
		String password = userinfo.getPwd();
		password = Md5Utils.getMd5(password,userinfo.getName());
		userinfo.setPwd(password);
		userInfoService.saveUserInfo(userinfo);
		modle.addAttribute("msg", "恭喜您注册成功！");
		return "/index1";
	}
	@RequestMapping("/register")
	public String register(){
		
		return "register";
	}
	
	
}
