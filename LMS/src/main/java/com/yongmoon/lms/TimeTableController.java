package com.yongmoon.lms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TimeTableController {
	
	@RequestMapping("/main.ti")
	public String studenthome() {
		return "time/timeTable";
	}
	

}
