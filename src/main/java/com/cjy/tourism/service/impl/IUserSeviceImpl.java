package com.cjy.tourism.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjy.tourism.dao.Iuser;
import com.cjy.tourism.domain.User;
import com.cjy.tourism.service.IUserService;

@Service
public class IUserSeviceImpl implements IUserService {

	@Autowired
	private Iuser userDao;
	
	@Override
	public User login(String username) {
		// TODO Auto-generated method stub
		return userDao.login(username);
	}

	@Override
	public void register(User user) {
		// TODO Auto-generated method stub
		userDao.register(user);
	}

	@Override
	public User getOne(Integer id) {
		// TODO Auto-generated method stub
		return userDao.getOne(id);
	}

	

}
