package com.yongmoon.lms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TimeTableController {
	
	@RequestMapping("/main.ti")
	public String timeTableHome() {
		return "time/timeTable";
	}// �ð�ǥ ����
	
	@RequestMapping("/detail.ti")
	public String timeTableDetail() {
		return "time/timeTableDetail";
	}
	

}
