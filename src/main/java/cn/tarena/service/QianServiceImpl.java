package cn.tarena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.mapper.QianMapper;
import cn.tarena.pojo.Qian;
import cn.tarena.pojo.Yundan;

@Service
public class QianServiceImpl implements QianService {

	@Autowired
	private QianMapper qianMapper;
	@Override
	public List<Qian> findAll() {
		// TODO Auto-generated method stub
		return qianMapper.findAll();
	}
	@Override
	public Qian findOne(String id) {
		// TODO Auto-generated method stub
		return qianMapper.findOne(id);
	}
	
	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		qianMapper.delete(id);
	}
	
	@Override
	public void save(Qian qian) {
		// TODO Auto-generated method stub
		qianMapper.save(qian);
	}
	
	@Override
	public void update(Qian qian) {
		// TODO Auto-generated method stub
		qianMapper.update(qian);
	}
	@Override
	public Qian finddan(String danhao) {
		// TODO Auto-generated method stub
		return qianMapper.finddan(danhao);
	}
	@Override
	public List<Yundan> findYunid() {
		// TODO Auto-generated method stub
		return qianMapper.findYunid();
	}
	
	

}
