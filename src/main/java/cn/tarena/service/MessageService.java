package cn.tarena.service;

import java.util.List;

import cn.tarena.pojo.Message;
import cn.tarena.pojo.News;

public interface MessageService {

	public void dalete(int id);

	public void insert(Message message);

	public List<Message> findAll();

	public void addreply(Message message);
	

}
