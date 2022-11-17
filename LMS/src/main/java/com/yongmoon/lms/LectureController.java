package com.yongmoon.lms;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import lecture.LectureDAO;
import lecture.LectureServiceImpl;
import lecture.LectureVO;

@Controller
public class LectureController {

	@Autowired private LectureDAO dao;
	@Autowired private LectureServiceImpl service;
	
	//강의 목록 조회
	@RequestMapping(value = "/list.lec", produces = "text/html;charset=utf-8")
	public String lecture_list(Model model, HttpSession session) {
		Gson gson = new Gson();
		session.setAttribute("category", "lec");
		List<LectureVO> list = service.lecture_list();
		model.addAttribute("vo", list);
		
		return "lecture/list";
	}
	
	//안드 강의목록 조회
	@ResponseBody @RequestMapping(value = "andlist.lec", produces = "text/html;charset=utf-8")
	public String AndLecture_list() {
		List<LectureVO> list = service.lecture_list();
		return new Gson().toJson(list);
	}
	
	//강의 상세보기
	@RequestMapping(value = "/detail.lec", produces = "text/html;charset=utf-8")
	public String lecture_info(String lecture_title, Model model, HttpSession session) {
		LectureVO vo = dao.lecture_info(lecture_title);
		model.addAttribute("vo", vo);
		
		return "lecture/detail" ;
	}
	
	//안드 강의 상세보기
	@ResponseBody @RequestMapping(value = "anddetail.lec", produces = "text/html;charset=utf-8")
	public String AndLecture_info(String lecture_title) {
		LectureVO vo = service.lecture_info(lecture_title);
		return new Gson().toJson(vo);
	}
	
	//강의 개설 화면 요청
	@RequestMapping(value = "/new.lec", produces = "text/html;charset=utf-8")
	public String lecture_new() {
		
		return "lecture/new";
	}
	
	//강의 개설 정보 저장 처리
	@RequestMapping(value=  "/insert.lec" , produces = "text/html;charset=utf-8")
	public String lecture_insert(LectureVO vo) {
		service.lecture_insert(vo);
		return "redirect:list.lec";
	}
	
	//강의 정보 수정 화면
	@RequestMapping(value= "/modify.lec" , produces = "text/html;charset=utf-8")
	public String lecture_modify(String lecture_title, Model model) {
		
		LectureVO vo = service.lecture_info(lecture_title);
		model.addAttribute("vo", vo);
		
		return "lecture/modify";
	}
	
	//강의 정보 수정 저장처리
	@RequestMapping(value= "/update.lec" , produces = "text/html;charset=utf-8")
	public String lecture_update(LectureVO vo) {
		System.out.println("dd");
		/* service.lecture_update(vo); */
		
		return "redirect:detail.lec?lecture_title="+ vo.getLecture_title();
	}
	
	
	
	
	
	
	
	
	
}
