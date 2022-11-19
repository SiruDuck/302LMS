package com.yongmoon.lms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("list.fr")	
	public String notice() {
		
		return "board/list";
	}
	
}
