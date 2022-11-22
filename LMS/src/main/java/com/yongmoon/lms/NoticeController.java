package com.yongmoon.lms;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import common.CommonUtility;
import notice.NoticeDAO;
import notice.NoticePageVO;
import notice.NoticeServiceImpl;
import notice.NoticeVO;

@Controller
public class NoticeController {
	@Autowired private NoticeServiceImpl service;
	@Autowired private NoticeDAO dao;
	@Autowired private CommonUtility common;
	
	
	
	
	//공지글상세화면 요청
	@RequestMapping("/info.no")
	public String info(Model model, String title,  HttpSession session) {
		
		NoticeVO vo = service.notice_info(title);
		
		model.addAttribute("vo", vo);
		
		
		
		return "notice/info";
	}
	
	
	
	@RequestMapping("/insert.no")
	public String insert(NoticeVO vo, MultipartFile file ,HttpServletRequest request) {
		
		if( ! file.isEmpty() ) {
			vo.setFilename( file.getOriginalFilename() );
			vo.setFilepath( common.fileUpload("notice", file, request) );
		}
		service.notice_insert(vo);

		return "redirect:list.no";
	}
	
	
	
	
	
	
	//공지글쓰기 화면 요청
	@RequestMapping("/new.no")
	public String notice() {
		return "notice/new";
	}
	
	
	
	
	
	@RequestMapping("/list.no")	
	public String list(Model model,  HttpSession session) {
		
		session.setAttribute("category", "no");
		
		List<NoticeVO> list = service.notice_list();
		
		model.addAttribute("list", list);
		
		return "notice/list";
	}
	
	@RequestMapping("/delete.no")
	public String delete(String title, HttpServletRequest request) throws Exception{
		NoticeVO vo = service.notice_info(title);
		
		return "redirect:list.no";
	}
	
	
	
	
}
