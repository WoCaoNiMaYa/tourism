package com.cjy.tourism.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjy.tourism.dao.IMessage;
import com.cjy.tourism.domain.Message;
import com.cjy.tourism.service.IMessageService;

@Service
public class MessageServiceImpl implements IMessageService {
	
	@Autowired
	private IMessage messageDao;
	
	//添加
	@Override
	public void add(Message message) {
		
		messageDao.add(message);
	}
	
	//列表
	@Override
	public List<Message> list() {
		
		return messageDao.list();
	}
	
	//dshnchu
	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		messageDao.delete(id);
	}

}
