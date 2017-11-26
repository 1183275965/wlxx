package cn.tarena.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.Yundan;
import cn.tarena.service.YundanService;

@Controller
public class YundanController extends BaseController {
	@Autowired
	private YundanService yundanService;
	
	@RequestMapping("/addYundan")
	public void add(){
		System.out.println("000000000000000");
		Yundan y= new Yundan();
		y.setId(5);
		yundanService.addyundan(y);
		
	}
	
	
}
