package com.cjy.tourism.service;

import java.util.List;

import com.cjy.tourism.domain.Message;

public interface IMessageService {
	//添加留言
	void add(Message message);
	//留言列表
	List<Message> list();
	
	//删除
	void delete(Integer id);
}
