package cn.tarena.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.mapper.PayMapper;

@Service
public class PayServiceImpl implements PayService{
	
	@Autowired
	private PayMapper payMapper;
	@Override
	public void changePaystate(String r6_Order, int i) {
		payMapper.changePaystate(r6_Order,i);
		
	}


}
