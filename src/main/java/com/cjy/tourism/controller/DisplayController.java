package com.cjy.tourism.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cjy.tourism.domain.Picture;
import com.cjy.tourism.service.IPictureService;


/**
 * 文件上传后台
 * @author 小新
 *
 */
//注解，标识控制器
@Controller
//注解，标识跳转路径
@RequestMapping("/display")
public class DisplayController {
	//pictureService层对象
	@Autowired
	private IPictureService pictureService;
		
	//添加图片文件上传
	@RequestMapping("/upload")
	public String upload(Picture p,MultipartFile fileImg,HttpServletRequest req) throws Exception{
		/*
		 * 需求：实现文件上传
		 * 实现步骤
		 * 1.获取文件，判断文件是否为空
		 * 2.判断文件类型是否是相关类型
		 * 3.给文件取新名字
		 * 		1.使用uuid随机数
		 * 4.保存存储路径到数据库
		 * 		1.存储文件到对应的目录
		 * 		2.文件相对于项目的路径存储到服务器中
		 * */
		//判断文件是否为空
		boolean empty = fileImg.isEmpty();
		//不为空则上传
		if (!empty) {
			//获取文件类型--方便判断
			String type = fileImg.getContentType();
			//判断文件类型
			if (type.startsWith("image/")) {
				//获取文件名
				String oldName = fileImg.getOriginalFilename();
				
				//取新名字
				String newName = UUID.randomUUID().toString()+"."+FilenameUtils.getExtension(oldName);
				
				//保存到对应的路径
				//获取上下文路径----项目
				ServletContext context = req.getServletContext();
				//截取路径
				String realPath = context.getRealPath("/upload");
				//保存到路径
				fileImg.transferTo(new File(realPath,newName));
				//存储到到类中
				p.setPicpath("/upload/"+newName);
				
				//保存到数据库中
				pictureService.add(p);
			}
		}
		/*try {
			
			
		} catch (Exception e) {
			//出现异常上传失败
			System.out.println("失败了！");
		}*/
		//响应页面
		return "forward:/display/getAll";
	}
	
	//前台展示的信息
	@RequestMapping("/show")
	public String findAll(HttpSession session)throws Exception{
		List<Picture> list = pictureService.list();
		//保存到session中
		session.setAttribute("pictureList",list);
		
		return "redirect:/index.jsp";
	} 
	
	@RequestMapping("/getAll")
	public String getFiles(Model m)throws Exception{
		//获取数据保存域对象
		 List<Picture> pageList = pictureService.list();
		//保存到域对象中
		m.addAttribute("pageList",pageList);
		return "spot";
	}
	
	//删除
	@RequestMapping("/delete")
	public String delete(Integer id) throws Exception{
		pictureService.delete(id);
		return "forward:/display/getAll";
	}
	
}
