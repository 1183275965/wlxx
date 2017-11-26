package cn.tarena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	//转向欢迎页面
	@RequestMapping("/adminlogin")
	public String adminlogin(){
		return "/admin/index";
	}
	

	//添加运单
	@RequestMapping("/addYundan")
	public String addYundan(){
		return "/admin/yundan/addYundan";
	}
	//主页
	@RequestMapping("/index")
	public String index(){
		return "index";
	}
	
	@RequestMapping("/news")
	public String news(){
		return "news";
	}
	
	@RequestMapping("/wd")
	public String wd(){
		return "wd";
	}
	
	@RequestMapping("/yundan")
	public String yundan(){
		return "yundan";
	}
	@RequestMapping("/yunfei")
	public String yunfei(){
		return "yunfei";
	}
	@RequestMapping("/message")
	public String message(){
		return "message";
	}
	
	
	
	//转向tilte标题栏页面
	@RequestMapping("/title")
	public String title(){
		return "/home/title";
	}
	
	//转向home的左侧页面
	@RequestMapping("/homeLeft")
	public String homeLeft(){
		return "/home/left";
	}
	
	//转向home的操作页面
	@RequestMapping("/homeMain")
	public String homeMain(){
		return "/home/main";
	}
	
	@RequestMapping("/sysadminLeft")
	public String sysadminLeft(){
		return "/sysadmin/left";
	}
	
	@RequestMapping("/sysadminMain")
	public String sysadminMain(){
		return "/sysadmin/main";
	}
}
