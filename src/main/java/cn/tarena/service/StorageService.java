package cn.tarena.service;

import java.util.List;

import cn.tarena.pojo.Storage;

public interface StorageService {

	public List<Storage> findStorage();

	public Storage findOne(String storageId);

	public void update(Storage storage);

	public void delete(String storageId);

	public void createRuku(Storage storage);

	public List<Storage> findruku(String number);
}
