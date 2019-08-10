package com.cjy.tourism.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjy.tourism.domain.User;
import com.cjy.tourism.service.IUserService;

@Controller
@RequestMapping("/user")
public class LoginController {

	@Autowired
	private IUserService userService;
	
	//登录
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request){
		HttpSession session = request.getSession();
		//
		if (user!=null) {
			//比较用户名
			String username = user.getUsername();
			User login = userService.login(username);
			if (login==null) {
				System.out.println("用户名不存在");
				
				return "redirect:/log.html";
			}else{
				if("admin".equals(login.getUsername())){
					
					if(user.getPassword().equals(login.getPassword())){
						
						session.setAttribute("admin", login);
						return "forward:/message/getAll";
					}else{
						return "redirect:/log.html";
					}
				}else {
					
					if(user.getPassword().equals(login.getPassword())){
						session.setAttribute("user", login);
						return "forward:/index.jsp";
					}else{
						return "redirect:/log.html";
					}
				}
				
			}
		}
		//响应网页	
		return "redirect:/log.html";
		
	}
	
	//注册
	@RequestMapping("/register")
	public String register(User user){
		
		userService.register(user);
		return "redirect:/log.html";
	}
	
	//查询单个
	@RequestMapping("/getOne")
	@ResponseBody
	public String getOne(){
		
		return "";
	}
	
	//退出
	@RequestMapping("/logout")
	public String logout(){
		
		return "redirect:/log.html";
	}
	
}
