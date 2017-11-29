package cn.tarena.service;

import java.util.List;

import cn.tarena.pojo.Car;


public interface CarService {

	List<Car> findAll();

	Car findone(String userName);

	Car findOne(String id);

	void update(Car user);

	void delete(String id);

	void add(Car user);

}
