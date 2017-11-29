package cn.tarena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.Depot;
import cn.tarena.service.DepotService;

@Controller
public class DepotController {
	
	@Autowired
	private DepotService depotService;
	
	@RequestMapping("/list")
	public String findDepot(Model model){
		
		List<Depot> depotList = depotService.findDepot();
		model.addAttribute("depotList",depotList);
		
		for (Depot depot : depotList) {
			System.out.println(depot.toString());
		}
		return "/admin/ku/list";
	}
	
	@RequestMapping("/edit")
	public String toupdate(String depotId,Model model){
		Depot depot = depotService.findone(depotId);
//		System.out.println(depot.toString());
		model.addAttribute("depot",depot);
		return "/admin/ku/modKu";
	}
	
	@RequestMapping("/ModKuAction")
	public String update(Depot depot){
//		System.out.println(depot.getDepotId());
		depotService.update(depot);
		
		return "redirect:/list";
	}
	
	@RequestMapping("/delete")
	public String delete(String depotId){
		
		depotService.delete(depotId);
		return "redirect:/list";
	}
	
	@RequestMapping("/addwd")
	public String add(Depot depot){
		
		return "/admin/ku/addKu";
	}
	
	@RequestMapping("AddKuAction")
	public String create(Depot depot){
		
		depotService.addKu(depot);
		
		return "redirect:/list";
	}
	
	
	@RequestMapping("/wdlist")
	public String findwd(Model model, String name){
		
		List<Depot> depotList = depotService.findwd(name);
		model.addAttribute("depotList",depotList);
		
		return "/admin/ku/list";
	
	}
	
}
