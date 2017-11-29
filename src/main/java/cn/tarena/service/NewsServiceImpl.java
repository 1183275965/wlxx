package cn.tarena.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.mapper.NewsMapper;
import cn.tarena.pojo.News;
@Service
public class NewsServiceImpl implements NewsService{
	@Autowired
	private NewsMapper newsMapper;

	@Override
	public List<News> findAll() {
		// TODO Auto-generated method stub
		return newsMapper.findAll();
	}

	@Override
	public News findOne(int id) {
		// TODO Auto-generated method stub
		return newsMapper.findOne(id);
	}

	@Override
	public void tocreate(News news) {
		// TODO Auto-generated method stub
		Date date=new Date();
		news.setNewsDate(date);
		
		newsMapper.tocreate(news);
	}

	@Override
	public void todelete(int newsId) {
		// TODO Auto-generated method stub
		newsMapper.todelete(newsId);
	}


	@Override
	public void toupdate(News news) {
		// TODO Auto-generated method stub
		newsMapper.toupdate(news);
	}

}
