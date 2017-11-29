package cn.tarena.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.mapper.UserInfoMapper;
import cn.tarena.pojo.UserInfo;

@Service
public class UserInfoServiceImpl implements UserInfoService {
	@Autowired
	private UserInfoMapper userInfoMapper;

	

	@Override
	public UserInfo findUserInfoByName(UserInfo userInfo) {
		return userInfoMapper.findUserInfoByName(userInfo);
	}

	
	@Override
	public List<UserInfo> findAll() {
		// TODO Auto-generated method stub
		return userInfoMapper.findAll();
	}
	
	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
		userInfoMapper.delete(id);
	}
	
	@Override
	public void save(UserInfo userinfo) {
		// TODO Auto-generated method stub
		userInfoMapper.save(userinfo);
	}
	
	@Override
	public UserInfo findOne(String id) {
		// TODO Auto-generated method stub
		return userInfoMapper.findOne(id);
	}
	
	@Override
	public void update(UserInfo userinfo) {
		// TODO Auto-generated method stub
		userInfoMapper.update(userinfo);
	}

	
/******************/
	@Override
	public void saveUserInfo(UserInfo userinfo) {
		// TODO Auto-generated method stub
		
		userInfoMapper.saveUserInfo(userinfo);
	}

	/*@Override
	public UserInfo findUserInfoByName(UserInfo userInfo) {
		return userInfoMapper.findUserInfoByName(userInfo);
	}
*/
	@Override
	public UserInfo findUserInfoByName(String username) {
		// TODO Auto-generated method stub
		return userInfoMapper.findUserInfoByName(username);
	}

/*	@Override
	public List<String> findModuleNamesBy(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}*/

	@Override
	public UserInfo findOneByUsername(String username) {
		// TODO Auto-generated method stub
		return userInfoMapper.findOneByUsername(username);
	}

	
	
}
