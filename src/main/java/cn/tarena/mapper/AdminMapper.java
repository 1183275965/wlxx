package cn.tarena.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.tarena.pojo.Admin;

public interface AdminMapper {

	//
	public Admin findAdminByName(Admin admin);


	@Select("select * from admin")
	List<Admin> findAll();

	@Select("select * from admin where id=#{id}")
	Admin findOne(String id);

	@Update("update admin set userName=#{userName},userPw=#{userPw},rname=#{rname},job=#{job},tel=#{tel},age=#{age} where id=#{id}")
	void update(Admin user);

	@Delete("delete from admin where id=#{id}")
	void delete(String id);

	@Insert("insert into admin (userName,userPw,rname,job,tel,age) values (#{userName},#{userPw},#{rname},#{job},#{tel},#{age})")
	void add(Admin user);


	Admin findone(String userName);

	
    //Admin login(@Param("userName")String userName,@Param("userPw") String userPw);

	
}
