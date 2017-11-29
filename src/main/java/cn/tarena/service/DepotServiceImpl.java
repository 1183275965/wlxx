package cn.tarena.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.mapper.DepotMapper;
import cn.tarena.pojo.Depot;

@Service
public class DepotServiceImpl implements DepotService {

	@Autowired
	private DepotMapper mapper;
	
	@Override
	public List<Depot> findDepot() {
		// TODO Auto-generated method stub
		return mapper.findDepot();
	}
	@Override
	public void update(Depot depot) {
		// TODO Auto-generated method stub
		mapper.update(depot);
	}
	
	
	@Override
	public void addKu(Depot depot) {
		// TODO Auto-generated method stub
		depot.setDepotId(UUID.randomUUID().toString());
		mapper.addKu(depot);
	}
	
	@Override
	public void delete(String depotId) {
		// TODO Auto-generated method stub
		mapper.delete(depotId);
	}
	@Override
	public Depot findone(String depotId) {
		// TODO Auto-generated method stub
		return mapper.findone(depotId);
	}
	@Override
	public List<Depot> findwd(String name) {
		// TODO Auto-generated method stub
		return mapper.findwd(name);
	}
	
	
}
