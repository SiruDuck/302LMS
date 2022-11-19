package com.yongmoon.lms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CourseController {

	@RequestMapping("review.co")	
	public String notice() {
		
		return "course/review";
	}
	
	
}
