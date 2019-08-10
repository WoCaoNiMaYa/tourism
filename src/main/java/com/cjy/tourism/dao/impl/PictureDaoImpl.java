package com.cjy.tourism.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cjy.tourism.dao.IPicture;
import com.cjy.tourism.domain.Picture;

/*留言*/
@Repository
public class PictureDaoImpl implements IPicture {

	@Autowired
	private JdbcTemplate temp;
	
	
	@Override
	public void add(Picture picture) {
		//实现文件上传
		String sql = "insert into tb_picture(picpath,spot_name,spot_intro) values(?,?,?)";
		temp.update(sql, picture.getPicpath(),picture.getSpotName(),picture.getSpotIntro());
	}
	
	//查询所有的数据
	@Override
	public List<Picture> list() {
		//返回查询的所有的数据
		String sql = "select * from tb_picture ";
		return temp.query(sql, new BeanPropertyRowMapper<>(Picture.class));
	}
	
	//删除
	@Override
	public void delete(Integer id) throws Exception {
		String sql="delete from tb_picture where id=?";		
		temp.update(sql,id);
	}
}
