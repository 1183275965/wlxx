package cn.tarena.service;

import java.util.List;

import cn.tarena.pojo.Yundan;

public interface YundanService {


	Yundan finone(String dh);

	List<Yundan> findAll();

	void delete(Integer id);

	void toupdate(Yundan yundan);

	void addYundan(Yundan yundan);

	Yundan findOneByname(Yundan yundan);

	List<Yundan> findAllYundan(String userName);





	
}
