package com.cjy.tourism.service;

import java.util.List;

import com.cjy.tourism.domain.Message;
import com.cjy.tourism.domain.Picture;

public interface IPictureService {
	//
	void add(Picture picture);
	//
	List<Picture> list();
	
	//删除
	public void delete(Integer id)throws Exception;

}
