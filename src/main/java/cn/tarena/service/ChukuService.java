package cn.tarena.service;

import java.util.List;

import cn.tarena.pojo.Chuku;

public interface ChukuService {

	public List<Chuku> findChuku();

	public Chuku findone(String chukuId);

	public void updatechuku(Chuku chuku);

	public void deletechuku(String chukuId);

	public List<Chuku> findList(String number);

	public void createChuku(Chuku chuku);
}
