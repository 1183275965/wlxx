package cn.tarena.controller;

import java.util.List;

import javax.swing.plaf.synth.SynthStyle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.News;
import cn.tarena.service.NewsService;

@Controller
public class NewsController extends BaseController{
	@Autowired
	private NewsService newsService;
	@RequestMapping("/qiannews")
	public String qiannews(int id,Model model){
		System.out.println(id);
		News news=newsService.findOne(id);
		model.addAttribute("news",news);
		System.out.println(news.getNewsId());
		return "/news_detail";
	}
	@RequestMapping("/listnews")
	public String listnews(Model model,int id){
		News news=newsService.findOne(id);
		model.addAttribute("news",news);
		return "admin/news/listNews";
	}
	
	@RequestMapping("/addNews")
	public String addNews(){
		
		return "admin/news/addNews";
	}
	@RequestMapping("/findAll")
	public String findAll(Model model){
		System.out.println("0000000000000");
		
		List<News> news=newsService.findAll();
		model.addAttribute("list",news);
		return "admin/news/list";
	}
	@RequestMapping("/index")
	public String findAllqian(Model model){
		System.out.println("0000000000000");
		
		List<News> news=newsService.findAll();
		model.addAttribute("list",news);
		return "index1";
	}
	@RequestMapping("/findOne")
	public String findOne(Model model,int id){
		News news=newsService.findOne(id);
		model.addAttribute("list2",news);
		return "";
	}
	//添加新闻
	@RequestMapping("/tocreateNews")
	public String tocreate(News news){
		newsService.tocreate(news);
		return "redirect:/findAll";
	}
	@RequestMapping("/todelete")
	public String todelete(int newsId){
		newsService.todelete(newsId);
		
		return "redirect:/findAll";
	}
	@RequestMapping("modNews")
	public String listNews(int id,Model model){
		System.out.println(id);
		News news=newsService.findOne(id);
		
		model.addAttribute("list2",news);
		return "admin/news/modNews";
		
	}

	@RequestMapping("toupdate")
	public String toupdate(News news){
		newsService.toupdate(news);
		
		return "redirect:/findAll";
		
	}


}
