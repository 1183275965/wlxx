package cn.tarena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.tool.DanHaoUtiles;

@Controller
public class HomeController {

	//转向欢迎页面
	@RequestMapping("/adminlogin")
	public String adminlogin(){
		return "/admin/index";
	}
	//后台欢迎页面
	@RequestMapping("/sysPro")
	public String sysPro(){
		return "/admin/sysPro";
	}
	//转向运费查询
	@RequestMapping("/lookyunfei")
	public String lookyunfei(){
		
		return "yunfei";
		
	}
	//在线下单
		@RequestMapping("/downorder")
		public String downorder(Model model){
			model.addAttribute("danhao",DanHaoUtiles.getHao());
			return "newdan2";
		}

	//添加运单
	@RequestMapping("/addYundan")
	public String addYundan(){
		return "/admin/yundan/addYundan";
	}
	
	@RequestMapping("/Yunfei")
	public String Yunfei(){
		return "yunfei1";
	}
	
	
	
	/*//主页
	@RequestMapping("/index")
	public String index(){
		
		return "index1";
	}
	*/
	
	
}
