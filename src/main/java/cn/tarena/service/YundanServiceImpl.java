package cn.tarena.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.mapper.YundanMapper;
import cn.tarena.pojo.Yundan;

@Service
public class YundanServiceImpl implements YundanService {

	@Autowired
	private YundanMapper yundanMapper;

	@Override
	public void addyundan(Yundan y) {
		// TODO Auto-generated method stub
		System.out.println("0000000000000000000000000");
		yundanMapper.add1(y);
		System.out.println("0000000000000000000000000");
	}
	


}
