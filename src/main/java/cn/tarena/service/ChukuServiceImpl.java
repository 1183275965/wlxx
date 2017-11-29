package cn.tarena.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.mapper.ChukuMapper;
import cn.tarena.pojo.Chuku;

@Service
public class ChukuServiceImpl implements ChukuService {

	@Autowired
	private ChukuMapper mapper;
	@Override
	public List<Chuku> findChuku() {
		// TODO Auto-generated method stub
		return mapper.findChuku();
	}
	@Override
	public Chuku findone(String chukuId) {
		// TODO Auto-generated method stub
		return mapper.findone(chukuId);
	}
	@Override
	public void updatechuku(Chuku chuku) {
		// TODO Auto-generated method stub
		mapper.updatechuku(chuku);
	}
	@Override
	public void deletechuku(String chukuId) {
		// TODO Auto-generated method stub
		mapper.deletechuku(chukuId);
	}
	@Override
	public List<Chuku> findList(String number) {
		// TODO Auto-generated method stub
		return mapper.findList(number);
	}
	@Override
	public void createChuku(Chuku chuku) {
		// TODO Auto-generated method stub
		chuku.setChukuId(UUID.randomUUID().toString());
		mapper.createChuku(chuku);
	}

	
}
