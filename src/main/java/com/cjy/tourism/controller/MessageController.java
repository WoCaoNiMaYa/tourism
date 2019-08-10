package com.cjy.tourism.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cjy.tourism.domain.Message;
import com.cjy.tourism.service.IMessageService;

@Controller
@RequestMapping("/message")
public class MessageController {

	//
	@Autowired
	private IMessageService messageService;
	
	//添加留言
	@RequestMapping("/add")
	public String add(Message message){
		
		try {
			messageService.add(message);
			return "redirect:/message/getList";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/message/getList";
		}
	}
	
	//留言列表
	@RequestMapping("/getAll")
	public String list(Model model){
		
		model.addAttribute("messageList",messageService.list());
		
		return "list";
	}
	
	//shanchu
	@RequestMapping("/delete")
	public String delete(Integer id){
		
		messageService.delete(id);
		
		return "forward:/message/getAll";
	}
	
	//留言列表
	@RequestMapping("/getList")
	public String all(Model model){
		
		model.addAttribute("messageList",messageService.list());
		
		return "forward:/template/leave.jsp";
	}
}
