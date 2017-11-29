package cn.tarena.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.tarena.pojo.User;

public interface UserMapper {

	@Select("select * from admin")
	List<User> findAll();

	@Select("select * from admin where id=#{id}")
	User findOne(String id);

	@Update("update admin set userName=#{userName},userPw=#{userPw},rname=#{rname},zhi=#{zhi},tel=#{tel},age=#{age} where id=#{id}")
	void update(User user);

	@Delete("delete from admin where id=#{id}")
	void delete(String id);

	@Insert("insert into admin (userName,userPw,rname,job,tel,age) values (#{userName},#{userPw},#{rname},#{job},#{tel},#{age})")
	void add(User user);


	User findone(String userName);

	
	User login(@Param("userName")String userName,@Param("userPw") String userPw);

	
}
