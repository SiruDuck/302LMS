package com.yongmoon.lms;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import notice.NoticePageVO;
import notice.NoticeServiceImpl;
import notice.NoticeVO;

@Controller
public class NoticeController {
	@Autowired private NoticeServiceImpl service;
	
	
	@RequestMapping("list.no")	
	public String notice(Model model,  HttpSession session) {
		
		session.setAttribute("category", "no");
		
		List<NoticeVO> list = service.notice_list();

		model.addAttribute("list", list);
		
		return "notice/list";
	}
	
}
