package cn.tarena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.Car;
import cn.tarena.pojo.Chuku;
import cn.tarena.pojo.Depot;
import cn.tarena.pojo.Qian;
import cn.tarena.service.CarService;
import cn.tarena.service.ChukuService;
import cn.tarena.service.DepotService;
import cn.tarena.service.QianService;

@Controller
public class ChukuController extends BaseController{

	@Autowired
	private ChukuService chukuService;
	@Autowired
	private QianService qianService;
	@Autowired
	private DepotService depotService;
	@Autowired
	private CarService carService;
	
	@RequestMapping("/chuku")
	public String findChuku(Model model){
		List<Chuku> chukuList = chukuService.findChuku();
		model.addAttribute("chukuList", chukuList);
		return "/admin/chuku/list";
	}
	
	@RequestMapping("/editchuku")
	public String editchuku(String chukuId,Model model){
		Chuku chuku = chukuService.findone(chukuId);
		model.addAttribute("chuku", chuku);
		return "/admin/chuku/modChuku";
	}
	
	@RequestMapping("/ModChukuAction")
	public String updatechuku(Chuku chuku){
		
		chukuService.updatechuku(chuku);
		return "redirect:/chuku";
	}
	
	@RequestMapping("/deletechuku")
	public String deletechuku(String chukuId){
		
		chukuService.deletechuku(chukuId);
		return "redirect:/chuku";
	}
	
	
	@RequestMapping("/chukulist.action")
	public String findChuku(Model model,String number){
		List<Chuku> chukuList = chukuService.findList(number);
		model.addAttribute("chukuList", chukuList);
		return "/admin/chuku/list";
	}
	
	@RequestMapping("/addChuku")
	public String JumpChuku(Chuku chuku,Model model){
		List<Qian> qianList = qianService.findAll();
		for (Qian qian : qianList) {
			System.out.println(qian.getDanhao());
		}
		List<Depot> depotList = depotService.findDepot();
		List<Car> carList = carService.findAll();
		model.addAttribute("qianList", qianList);
		model.addAttribute("carList", carList);
		model.addAttribute("depotList",depotList);
		return "/admin/chuku/addChuku";
	}
	@RequestMapping("/AddChuku")
	public String addChuku(Chuku chuku){
		
		chukuService.createChuku(chuku);
		return "redirect:/chuku";
	}
}
