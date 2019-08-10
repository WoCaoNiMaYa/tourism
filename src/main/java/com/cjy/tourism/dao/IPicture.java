package com.cjy.tourism.dao;

import java.util.List;

import com.cjy.tourism.domain.Picture;

public interface IPicture {
	
	//
	void add(Picture picture);
	//
	List<Picture> list();
	
	//删除
	public void delete(Integer id)throws Exception;

	
}
