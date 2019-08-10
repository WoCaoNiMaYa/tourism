package com.cjy.tourism.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cjy.tourism.dao.IMessage;
import com.cjy.tourism.domain.Message;

/*留言*/
@Repository
public class MessageDaoImpl implements IMessage {

	@Autowired
	private JdbcTemplate temp;
	
	//添加留言
	@Override
	public void add(Message message) {
		String sql = "insert into tb_message(txt_name,txt_tell,sex,message,input_time) values(?,?,?,?,?)";
		temp.update(sql, message.getTxtName(),message.getTxtTell(),message.getSex(),message.getMessage(),message.getInputTime());
	}

	//留言列表
	@Override
	public List<Message> list() {
		String sql="select * from tb_message";
		return temp.query(sql, new BeanPropertyRowMapper<>(Message.class));
	}
	//删除
	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		String sql = "delete from tb_message where id=?";
		temp.update(sql, id);
	}

}
