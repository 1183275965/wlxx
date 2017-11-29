package cn.tarena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.Message;
import cn.tarena.pojo.News;
import cn.tarena.service.MessageService;

@Controller
public class MessageController {
	@Autowired
	private MessageService messageService;
	
	@RequestMapping("/delMsg")
	public String dalete(int id){
		messageService.dalete(id);
		return "redirect:/msglist";
	}
	
	@RequestMapping("/addMsg")
	public String addReply(Integer messageId,Model model){
		model.addAttribute("msgid",messageId);
		//messageService.addreply(messageId);
		return "/admin/msg/addMsg";
	}
	@RequestMapping("/addMsg1")
	public String addReply1(Message message){
		
		messageService.addreply(message);
		return "redirect:/msglist";
	}
	@RequestMapping("/toinsertMessage")
	public String toinsert(Message message,Model model){
		messageService.insert(message);
		return "redirect:/messagefindAll";
	}

	@RequestMapping("/messagefindAll")
	public String findAll(Model model){
		List<Message> messages=messageService.findAll();
		System.out.println(messages);
		model.addAttribute("message",messages);
		
		return "/message1";
	}
	@RequestMapping("/msglist")
	public String findAllmsg(Model model){
		List<Message> messages=messageService.findAll();
		System.out.println(messages);
		model.addAttribute("message",messages);
		
		return "/admin/msg/list";
	}

}
