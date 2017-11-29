package cn.tarena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.Car;
import cn.tarena.pojo.Depot;
import cn.tarena.pojo.Qian;
import cn.tarena.pojo.Storage;
import cn.tarena.service.CarService;
import cn.tarena.service.DepotService;
import cn.tarena.service.QianService;
import cn.tarena.service.StorageService;

@Controller
public class StorageController extends BaseController{

	@Autowired
	private StorageService storageService;
	@Autowired
	private QianService qianService;
	@Autowired
	private CarService carService;
	@Autowired
	private DepotService depotService;
	
	@RequestMapping("/ruku")
	public String  findStorage(Model model){
		List<Storage> storageList = storageService.findStorage();
		model.addAttribute("storageList", storageList);
		return "/admin/ruku/list";
	}
	
	@RequestMapping("/editruku")
	public String eidtList(String storageId,Model model){
		
		Storage storage = storageService.findOne(storageId);
		model.addAttribute("storage", storage);
		return "/admin/ruku/modRuku";
	}
	
	@RequestMapping("/ModRukuAction")
	public String update(Storage storage){
		
		storageService.update(storage);
		return "redirect:/ruku";
	}
	
	@RequestMapping("deleteruku")
	public String delete(String storageId){
		storageService.delete(storageId);
		
		return "redirect:/ruku";
	}
	
	@RequestMapping("/addRuku")
	public String addruku(Qian qian,Car car,Depot depot,Model model){
		List<Qian> qianList = qianService.findAll();
		List<Car> carList = carService.findAll();
		List<Depot> depotList = depotService.findDepot();
		model.addAttribute("carList", carList);
		model.addAttribute("qianList", qianList);
		model.addAttribute("depotList", depotList);
		for (Depot depot2 : depotList) {
			depot2.getDepotName();
		}
		
		
		return "/admin/ruku/addRuku";
	}
	
	@RequestMapping("rukulist")
	public String findruku(Model model, String number){
		List<Storage> storageList = storageService.findruku(number);

		model.addAttribute("storageList", storageList);
		return "/admin/ruku/list";
	}
 @RequestMapping("/AddRuku02")
 	public String createwd(Storage storage){
	 	
	 	storageService.createRuku(storage);
	 
	 return  "redirect:/ruku";
 }

}
