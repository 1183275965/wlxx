package cn.tarena.service;

import java.util.List;

import cn.tarena.pojo.News;

public interface NewsService {

	public List<News> findAll();

	public News findOne(int id);

	public void tocreate(News news);

	 public void todelete(int newsId);

	public void toupdate(News news);

	
	
}