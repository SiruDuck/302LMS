package com.yongmoon.lms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TimeTableController {
	
	@RequestMapping("/main.ti")
	public String timeTableHome() {
		return "time/timeTable";
	}// 시간표 보기
	
	@RequestMapping("/detail.ti")
	public String timeTableDetail() {
		return "time/timeTableDetail";
	}
	

}
