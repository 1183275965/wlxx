package cn.tarena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.Car;
import cn.tarena.pojo.User;
import cn.tarena.service.CarService;

@Controller
@RequestMapping("admin/car")
public class CarController extends BaseController{

	@Autowired
	private CarService carService;

	
	//跳转主界面
    @RequestMapping("/list")
    public String findAll(Model model){
    	
    	List<Car> cars=carService.findAll();
    	model.addAttribute("car",cars);
    	
    	return "admin/car/list";
    }

    @RequestMapping("/tofind")
    public String tofind(String pai,Model model){
    
    	Car car=carService.findone(pai);
    	if(car==null){
    		return "redirect:/admin/car/list";
    	}
    	
    	model.addAttribute("car", car);
    	
    	return "admin/car/info";
    }
    //跳转修改界面
    @RequestMapping("/toupdate")
    public String toupdate(String id,Model model){
    	Car car=carService.findOne(id);
    	model.addAttribute("car", car);
    	return "/admin/car/modCar";
    }
    //修改员工 返回主界面
    @RequestMapping("/update")
    public String update(Car car){
    	carService.update(car);
    	return "redirect:/admin/car/list";
    }

    //删除员工
    @RequestMapping("/todelete")
    public String todelete(String id){
    	
    	carService.delete(id);
    	return "redirect:/admin/car/list";
    }
    //跳转到添加员工界面
    @RequestMapping("/tocreate")
    public String toinsert(){
    	
    	return "admin/car/addCar";
    }
    //返回主界面并在数据库中添加员工
    
    @RequestMapping("/toadd")
    public String toadd(Car car){
    	carService.add(car);
    	return "redirect:/admin/car/list";
    }
}
