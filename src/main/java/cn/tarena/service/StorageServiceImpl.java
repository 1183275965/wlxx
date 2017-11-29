package cn.tarena.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.mapper.StorageMapper;
import cn.tarena.pojo.Storage;

@Service
public class StorageServiceImpl implements StorageService {

	@Autowired
	private StorageMapper mapper;
	
	@Override
	public List<Storage> findStorage() {
		// TODO Auto-generated method stub
		return  mapper.findStorage();

	}

	@Override
	public Storage findOne(String storageId) {
		// TODO Auto-generated method stub
		return mapper.findOne(storageId);
	}

	@Override
	public void update(Storage storage) {
		// TODO Auto-generated method stub
		 mapper.update(storage);
	}

	@Override
	public void delete(String storageId) {
		// TODO Auto-generated method stub
		mapper.delete(storageId);
	}

	@Override
	public void createRuku(Storage storage) {
		// TODO Auto-generated method stub
		storage.setStorageId(UUID.randomUUID().toString());
		mapper.createRuku(storage);
	}

	@Override
	public List<Storage> findruku(String number) {
		// TODO Auto-generated method stub
		return mapper.findruku(number);
	}
}
