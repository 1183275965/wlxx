package cn.tarena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.mapper.AdminMapper;
import cn.tarena.pojo.Admin;

@Service
public class AdminLoginServiceImpl implements AdminLoginService{

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public Admin findAdminByName(Admin admin) {

		return adminMapper.findAdminByName(admin);
		
		
	}
	 
	
	@Override
	public List<Admin> findAll() {
		// TODO Auto-generated method stub
		return adminMapper.findAll();
	}

	@Override
	public Admin findOne(String id) {
		// TODO Auto-generated method stub
	    return adminMapper.findOne(id);
	}

	@Override
	public void update(Admin user) {
		// TODO Auto-generated method stub
		adminMapper.update(user);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		adminMapper.delete(id);
	}

	@Override
	public void add(Admin user) {
		// TODO Auto-generated method stub
		adminMapper.add(user);
	}

	@Override
	public Admin findone(String username) {
		// TODO Auto-generated method stub
		
		System.out.println("0000000000");
		return adminMapper.findone(username);
	}

/*	@Override
	public Admin login(String userName, String userPw) {
		// TODO Auto-generated method stub
		return adminMapper.login(userName,userPw);
	}*/

	

}
