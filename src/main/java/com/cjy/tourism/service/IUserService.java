package com.cjy.tourism.service;

import com.cjy.tourism.domain.User;

public interface IUserService {
	//登录
	User login(String username);
	
	//注册
	void register(User user);
	
	//查询信息
	User getOne(Integer id);
}
