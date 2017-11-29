package cn.tarena.service;

import java.util.List;

import com.fasterxml.jackson.databind.Module;

import cn.tarena.pojo.UserInfo;

public interface UserInfoService {

    //UserInfo login(String username, String password);

	public void saveUserInfo(UserInfo userinfo);
	
	public UserInfo findUserInfoByName(UserInfo userInfo);

	public List<UserInfo> findAll();

	public UserInfo findOne(String id);
	
	public void delete(String id);

	public void save(UserInfo userinfo);

	public void update(UserInfo userinfo);
    //UserInfo login(String username, String password);

	
	//public UserInfo findUserInfoByName(UserInfo userInfo);

	public UserInfo findUserInfoByName(String username);
	public UserInfo findOneByUsername(String username);

	//public List<String> findModuleNamesBy(Integer id);
	

	
}
