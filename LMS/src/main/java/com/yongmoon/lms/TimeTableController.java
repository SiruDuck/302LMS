package com.yongmoon.lms;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import timetable.TimeTableService;
import timetable.TimeTableVO;

@Controller
public class TimeTableController {
	@Autowired private TimeTableService service;
	
	@RequestMapping("/spare.tt")
	public String spareTimeTable() {
		return "time/spareTimeTable";
	}
	
	@RequestMapping("/main.tt")
	public String timeTableHome() {
		return "time/timeTable";
	}// 시간표 보기
	
	@RequestMapping("/detail.tt")
	public String timeTableDetail() {
		return "time/timeTableDetail";
	}// 시간표 상세 보기
	
	@RequestMapping("/regist.tt")
	public String regist(Model model, HttpSession session) {
		List<TimeTableVO> vo = service.timeTableRegist();
		model.addAttribute("vo", vo);
		return "time/regist";
	}// 시간표 등록
	

}
