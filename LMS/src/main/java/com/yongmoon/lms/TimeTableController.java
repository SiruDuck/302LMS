package com.yongmoon.lms;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import member.MemberVO;
import timetable.DepartmentVO;
import timetable.TimeTableService;
import timetable.TimeTableVO;

@Controller
public class TimeTableController {
	@Autowired private TimeTableService service;
	
	@RequestMapping("/info.tt")
	public String myInfoView() {
		return "myInfo";
	}
	
	@RequestMapping("/spare.tt")
	public String spareTimeTable() {
		return "time/spareTimeTable";
	}// 시간표 장바구니 보기
	
	@RequestMapping("/main.tt")
	public String timeTableHome(Model model) {
		return "time/timeTable";
	}// 시간표 보기
	
	@RequestMapping("/detail.tt")
	public String timeTableDetail(Model model, int lecture_num) {
		TimeTableVO vo = service.timeTableDetail(lecture_num);
		model.addAttribute("vo", vo);
		return "time/timeTableDetail";
	}// 시간표 상세 보기
	
	@RequestMapping("/regist.tt")
	public String regist(String lecture_title, String state ,Model model, HttpSession session) {
		List<TimeTableVO> vo = service.timeTableRegist( lecture_title);
		
		model.addAttribute("vo", vo);
		
		return"time/regist";
	}// 강의 신청 목록
	
	@RequestMapping("lecture_list")
	public String lecture_title_list(Model model, String name) {
		List<TimeTableVO> list = service.lecture_title_search(name);
		
		model.addAttribute("list", list);
		
		return "time/search/list";
	}// 과목명으로 검색
	
	

}
