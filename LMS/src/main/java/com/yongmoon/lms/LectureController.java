package com.yongmoon.lms;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lecture.LectureDAO;
import lecture.LectureServiceImpl;
import lecture.LectureVO;

@Controller
public class LectureController {
	@Autowired private LectureServiceImpl service;
	
	//강의 목록 조회
	@RequestMapping ("/list.lec")
	public String list(Model model, HttpSession session) {
		
		session.setAttribute("category", "lec");
		List<LectureVO> list = service.lecture_list();
		model.addAttribute("vo", list);
		
		
		
		
		return "lecture/list";
	}
	
}
