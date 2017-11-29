package cn.tarena.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.mapper.MessageMapper;
import cn.tarena.pojo.Message;

@Service
public class MessageServiceImpl implements MessageService{
	@Autowired
	private MessageMapper messageMapper;
	@Override
	public void dalete(int id) {
		// TODO Auto-generated method stub
		messageMapper.dalete(id);
	}
	
	@Override
	public List<Message> findAll() {
		// TODO Auto-generated method stub
		return messageMapper.findAll();
	}

	@Override
	public void insert(Message message) {
		// TODO Auto-generated method stub
		Date date =new Date();
		message.setMessageDate(date);
		
		messageMapper.insert(message);
	}

	@Override
	public void addreply(Message message) {
		// TODO Auto-generated method stub
		messageMapper.updateReply(message);
	}

	

	

}
