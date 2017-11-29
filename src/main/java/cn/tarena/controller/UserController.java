package cn.tarena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.Admin;
import cn.tarena.service.AdminLoginService;

@Controller
@RequestMapping("admin/admin")
public class UserController extends BaseController {

	@Autowired
	private AdminLoginService userService;

	// 跳转主界面
	@RequestMapping("/list")
	public String findAll(Model model) {

		List<Admin> users = userService.findAll();
		model.addAttribute("user", users);

		return "admin/admin/list";
	}

	@RequestMapping("/tofind")
	public String tofind(String userName, Model model) {

		Admin user = userService.findone(userName);
		if (user == null) {
			return "redirect:/admin/admin/list";
		} else {
			model.addAttribute("user", user);

			return "admin/admin/info";
		}
	}

	// 跳转修改界面
	@RequestMapping("/toupdate")
	public String toupdate(String id, Model model) {
		Admin user = userService.findOne(id);
		model.addAttribute("userList", user);
		return "/admin/admin/modAdmin";
	}

	// 修改员工 返回主界面
	@RequestMapping("/update")
	public String update(Admin user) {
		userService.update(user);
		return "redirect:/admin/admin/list";
	}

	// 删除员工
	@RequestMapping("/todelete")
	public String todelete(String id) {

		userService.delete(id);
		return "redirect:/admin/admin/list";
	}

	// 跳转到添加员工界面
	@RequestMapping("/toinsert")
	public String toinsert() {

		return "admin/admin/addAdmin";
	}
	// 返回主界面并在数据库中添加员工

	@RequestMapping("/toadd")
	public String toadd(Admin user) {
		userService.add(user);
		return "redirect:/admin/admin/list";
	}
}
