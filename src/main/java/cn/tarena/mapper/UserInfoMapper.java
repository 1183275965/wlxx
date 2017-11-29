package cn.tarena.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.tarena.pojo.UserInfo;

public interface UserInfoMapper {

	void saveUserInfo(UserInfo userinfo);

	UserInfo findUserInfoByName(UserInfo userInfo);

	@Select("select * from userinfo")
	public List<UserInfo> findAll();
	
	@Delete("delete from userinfo where id=#{id}")
	public void delete(String id);
	
	@Insert("insert into userinfo (id,name,pwd,rname,sex,age,tel,email) values (#{id},#{name},#{pwd},#{rname},#{sex},#{age},#{tel},#{email})")
	public void save(UserInfo userinfo);
	
	@Select("select * from userinfo where id=#{id}")
	public UserInfo findOne(String id);
	
	@Update("update userinfo set name=#{name},pwd=#{pwd},rname=#{rname},sex=#{sex},age=#{age},tel=#{tel},email=#{email} where id=#{id}")
	public void update(UserInfo userinfo);
	


	//UserInfo findUserInfoByName(UserInfo userInfo);


	UserInfo findUserInfoByName(String username);
	UserInfo findOneByUsername(String username);

}

