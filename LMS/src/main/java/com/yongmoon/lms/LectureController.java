package com.yongmoon.lms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lecture.LectureDAO;
import lecture.LectureVO;

@Controller
public class LectureController {
	@Autowired private LectureDAO dao;
	
	@RequestMapping ("/list.lec")
	public String list(Model model) {
		
		List<LectureVO> list = dao.lecture_list();
		model.addAttribute("vo", list);
		
		
		return "lecture/list";
	}
	
}
