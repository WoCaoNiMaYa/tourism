package com.cjy.tourism.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cjy.tourism.dao.Iuser;
import com.cjy.tourism.domain.User;

@Repository
public class UserDaoImpl implements Iuser {
	
	@Autowired
	private JdbcTemplate temp;
	//登录
	@Override
	public User login(String username) {
		
		if (username==null) {
			return null;
		}
		
		String sql = "select * from tb_user where username = ?";
		return temp.queryForObject(sql, new BeanPropertyRowMapper<>(User.class),username);
	}
	//注册
	@Override
	public void register(User user) {
		String sql = "insert into tb_user(username,password,tellphone,nickname) values(?,?,?,?)";
		temp.update(sql, user.getUsername(),user.getPassword(),user.getTellphone(),user.getNickname());		
	}
	//查询
	@Override
	public User getOne(Integer id) {
		String sql = "select * from tb_user where id = ?";
		return temp.queryForObject(sql, new BeanPropertyRowMapper<>(User.class),id);
	}
	

	
	
}
