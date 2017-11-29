package cn.tarena.mapper;

import java.util.List;

import org.apache.commons.collections.bag.SynchronizedSortedBag;
import org.apache.ibatis.annotations.Select;

import cn.tarena.pojo.Yundan;

public interface YundanMapper {
	Yundan finddh(String dh);

	List<Yundan> findAll();

	void delete(Integer id);

	void toupdate(Yundan yundan);

	void addYundan(Yundan yundan);

	Yundan findOneByname(Yundan yundan);

	List<Yundan> findAllYundan(String userName);




	

	

	

}
