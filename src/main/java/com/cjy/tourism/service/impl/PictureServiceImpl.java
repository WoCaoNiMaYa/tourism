package com.cjy.tourism.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjy.tourism.dao.IMessage;
import com.cjy.tourism.dao.IPicture;
import com.cjy.tourism.domain.Message;
import com.cjy.tourism.domain.Picture;
import com.cjy.tourism.service.IMessageService;
import com.cjy.tourism.service.IPictureService;

@Service
public class PictureServiceImpl implements IPictureService {

	@Autowired
	private IPicture pictureDao;
	
	@Override
	public void add(Picture picture) {
		// TODO Auto-generated method stub
		pictureDao.add(picture);
	}

	@Override
	public List<Picture> list() {
		// TODO Auto-generated method stub
		return pictureDao.list();
	}

	@Override
	public void delete(Integer id) throws Exception {
		// TODO Auto-generated method stub
		pictureDao.delete(id);
	}
	
	
}
