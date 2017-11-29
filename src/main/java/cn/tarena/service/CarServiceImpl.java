package cn.tarena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.mapper.CarMapper;
import cn.tarena.pojo.Car;

@Service
public class CarServiceImpl implements CarService {

	@Autowired
	private CarMapper carMapper;
	
	@Override
	public List<Car> findAll() {
		// TODO Auto-generated method stub
		return carMapper.findAll();
	}

	@Override
	public Car findone(String userName) {
		// TODO Auto-generated method stub
		return carMapper.findone(userName);
	}

	@Override
	public Car findOne(String id) {
		// TODO Auto-generated method stub
		return carMapper.findOne(id);
	}

	@Override
	public void update(Car car) {
		// TODO Auto-generated method stub
		carMapper.update(car);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		carMapper.delete(id);
	}

	@Override
	public void add(Car car) {
		// TODO Auto-generated method stub
		carMapper.add(car);
	}

	
}
