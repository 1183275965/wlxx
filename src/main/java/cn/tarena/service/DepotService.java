package cn.tarena.service;

import java.util.List;

import cn.tarena.pojo.Depot;

public interface DepotService {

	public List<Depot> findDepot();

	public void update(Depot depot);

	public void delete(String depotId);

	public void addKu(Depot depot);

	public Depot findone(String depotId);

	public List<Depot> findwd(String name);

	

	
}
