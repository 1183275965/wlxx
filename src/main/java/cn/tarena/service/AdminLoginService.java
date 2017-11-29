package cn.tarena.service;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.tarena.pojo.Admin;

@Service
public interface AdminLoginService {

	Admin findAdminByName(Admin admin);

	List<Admin> findAll();

	Admin findOne(String id);

	void update(Admin user);

	void delete(String id);

	void add(Admin user);

	Admin findone(String username);

	//Admin login(String userName, String userPw);
	

}
