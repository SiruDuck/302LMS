package com.yongmoon.lms;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import notice.NoticeDAO;
import notice.NoticePageVO;
import notice.NoticeServiceImpl;
import notice.NoticeVO;

@Controller
public class NoticeController {
	@Autowired private NoticeServiceImpl service;
	@Autowired private NoticeDAO dao;
	
	
	
	
	
	//공지글상세화면 요청
	@RequestMapping("/info.no")
	public String info() {
		
		return "notice/info";
	}
	
	
	
	
	
	
	
	
	//공지글쓰기 화면 요청
	@RequestMapping("/new.no")
	public String notice() {
		return "notice/new";
	}
	
	
	
	
	
	@RequestMapping("/list.no")	
	public String list(Model model,  HttpSession session) {
		
		session.setAttribute("category", "no");
		
		System.out.println(service.notice_list());
		
		List<NoticeVO> list = service.notice_list();
		System.out.println(list);
		
		model.addAttribute("list", list);
		
		return "notice/list";
	}
	
	
	
	
}
