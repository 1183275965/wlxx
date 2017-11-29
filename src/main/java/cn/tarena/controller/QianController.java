package cn.tarena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.Car;
import cn.tarena.pojo.Qian;
import cn.tarena.pojo.Yundan;
import cn.tarena.service.QianService;
@Controller
public class QianController {
	
	@Autowired
	private QianService qianService;
	
//	查询跳转到主页面
	@RequestMapping("/admin/qian/list")
	public String qian(Model model){
		
		List<Qian> qian = qianService.findAll();
		model.addAttribute("qian",qian);
		return "/admin/qian/list";
	}
	
//	查询单个
	@RequestMapping("/admin/qian/findOne")
	public String qianone(String danhao,Model model){
		
		Qian qian = qianService.finddan(danhao);
		if(qian==null){
			return "redirect:/admin/qian/list";
		}
		model.addAttribute("qian",qian);
		return "/admin/qian/listone";
	}
	
//	删除
	@RequestMapping("admin/qian/delete")
	public String delete(String id){
		
		qianService.delete(id);
		
		return "redirect:/admin/qian/list";
	}
	
//	新增签收单页面
	@RequestMapping("admin/qian/tocreate")
	public String toCreate(Model model){
		
		List<Qian> qian=qianService.findAll();
		List<Yundan> yunid =qianService.findYunid(); 
		 model.addAttribute("qian", qian);
		 model.addAttribute("yunid",yunid);
		return "/admin/qian/addQian";
	}
	
	@RequestMapping("/admin/qian/create")
	public String toview(Qian qian){
		qianService.save(qian);
		return "redirect:/admin/qian/list";
	}
//	添加签收单
	@RequestMapping("admin/qian/tosave")
	public String toSave(Qian qian){
		qianService.save(qian);
		return "redirect:/admin/qian/list";
	}
	
// 增加修改页面
	@RequestMapping("admin/qian/toupdate")
	public String toUpdate(String id,Model model){
		
		Qian qian = qianService.findOne(id);
		model.addAttribute("qian",qian);
		return "/admin/qian/modQian";
	}
//	修改页面
	@RequestMapping("/admin/qian/view")
	public String view(Qian qian){
		
		qianService.update(qian);
		return "redirect:/admin/qian/list";
	}
	


	
}
