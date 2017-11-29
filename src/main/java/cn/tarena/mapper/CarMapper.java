package cn.tarena.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.tarena.pojo.Car;

public interface CarMapper {

	@Select("select * from car")
	List<Car> findAll();

	@Select("select * from car where pai=#{pai}")
	Car findone(String pai);

	@Select("select * from car where id=#{id}")
	Car findOne(String id);

	@Update("update car set pai=#{pai},size=#{size},type=#{type},state=#{state},info=#{info} where id=#{id}")
	void update(Car car);

	@Delete("delete from car where id=#{id}")
	void delete(String id);

	@Insert("insert into car (pai,size,type,state,info) values (#{pai},#{size},#{type},#{state},#{info})")
	void add(Car car);

	
}
