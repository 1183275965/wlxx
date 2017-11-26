package cn.tarena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.Yundan;
import cn.tarena.service.YundanService;

@Controller
public class YundanController extends BaseController {
	@Autowired
	private YundanService yundanService;
	
	@RequestMapping("/yundanSelect")
	public String findOne(String dh,Model model){
		
		Yundan yundan= yundanService.finone(dh);
		model.addAttribute("yundan",yundan);
		
		return "yundanq";
		
	}
	@RequestMapping("/YundanList")
	public String findAll(Model model){
		
		List<Yundan> list= yundanService.findAll();
		model.addAttribute("list",list);
		
		return "admin/yundan/list";
		
	}
	//删除订单
	@RequestMapping("/DelYundan")
	public String delYun(Integer id){
		yundanService.delete(id);
		return "redirect:/YundanList";
	}
	//修改订单
	@RequestMapping("/modYundan")
	public String modYun(String danHao,Model model){
		Yundan yundan= yundanService.finone(danHao);
		model.addAttribute("yundan",yundan);
		return "/admin/yundan/modYundan";
	}
	@RequestMapping("/updateYundan")
	public String updateYundan(Yundan yundan){
		yundanService.toupdate(yundan);
		return "redirect:/YundanList";
	}

	
	
	
	
}
