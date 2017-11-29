package cn.tarena.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Update;

import cn.tarena.pojo.Message;

public interface MessageMapper {

	public void dalete(int id);


	public List<Message> findAll();




	public void insert(Message message);


	public void updateReply(Message message);

}
