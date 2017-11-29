package cn.tarena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.Qian;
import cn.tarena.pojo.UserInfo;
import cn.tarena.service.UserInfoService;

@Controller
public class UserInfoController {

	@Autowired
	private UserInfoService userInfoService;

	//显示主页面
	@RequestMapping("/admin/user/list")
	public String userInfolist(Model model){
		
		List<UserInfo> userinfo = userInfoService.findAll();
		
		model.addAttribute("userinfo",userinfo);
		return "admin/user/list";
	}
//	查询单个
	@RequestMapping("/admin/user/findOne")
	public String qianone(String id,Model model){
		
		UserInfo userinfo = userInfoService.findOne(id);
		model.addAttribute("userinfo",userinfo);
		return "/admin/user/listone";
	}
	
//	删除
	@RequestMapping("/admin/user/delete")
	public String delete(String id){
		
		userInfoService.delete(id);
		
		return "redirect:/admin/user/list";
		
	}
//	新增页面
	@RequestMapping("admin/user/tocreate")
	public String tocreate(){
		
		return "/admin/user/addUserInfo";	
	}

	@RequestMapping("/admin/user/create")
	public String toview(UserInfo userinfo){
		
		userInfoService.save(userinfo);
		return "redirect:/admin/user/list";
	}
	@RequestMapping("admin/user/tosave")
	public String toSave(UserInfo userinfo){
		userInfoService.save(userinfo);
		return "redirect:/admin/user/list";
	}
	
	// 增加修改页面
		@RequestMapping("admin/user/toupdate")
		public String toUpdate(String id,Model model){
			
			UserInfo userinfo = userInfoService.findOne(id);
			model.addAttribute("userinfo",userinfo);
			return "/admin/user/modQianInfo";
		}
		
//		修改页面
		@RequestMapping("/admin/user/view")
		public String view(UserInfo userinfo){
			
			userInfoService.update(userinfo);
			return "redirect:/admin/user/list";
		}
	
	
	
	
}
