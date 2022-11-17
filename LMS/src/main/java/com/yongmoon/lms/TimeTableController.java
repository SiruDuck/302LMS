package com.yongmoon.lms;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import timetable.TimeTableService;
import timetable.TimeTableVO;

@Controller
public class TimeTableController {
	@Autowired private TimeTableService service;
	
	@RequestMapping("/spare.tt")
	public String spareTimeTable() {
		return "time/spareTimeTable";
	}// 시간표 장바구니 보기
	
	@RequestMapping("/main.tt")
	public String timeTableHome() {
		return "time/timeTable";
	}// 시간표 보기
	
	@RequestMapping("/detail.tt")
	public String timeTableDetail(Model model, int lecture_num) {
		TimeTableVO vo = service.timeTableDetail(lecture_num);
		model.addAttribute("vo", vo);
		return "time/timeTableDetail";
	}// 시간표 상세 보기
	
	@RequestMapping("/regist.tt")
	public String regist(Model model, HttpSession session) {
		List<TimeTableVO> vo = service.timeTableRegist();
		
		model.addAttribute("vo", vo);
		
		return "time/regist";
	}// 강의 신청 목록
	
	

}
