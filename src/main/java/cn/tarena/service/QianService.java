package cn.tarena.service;

import java.util.List;

import cn.tarena.pojo.Qian;
import cn.tarena.pojo.Yundan;

public interface QianService {
	
	public List<Qian> findAll();

	public Qian findOne(String id);
	
	public void delete(String id);

	public void save(Qian qian);

	public void update(Qian qian);

	public Qian finddan(String danhao);

	public List<Yundan> findYunid();


}
