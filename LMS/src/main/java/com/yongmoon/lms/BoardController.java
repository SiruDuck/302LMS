package com.yongmoon.lms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("/list.br")	
	public String notice() {
		
		return "board/list";
	}
	
	@RequestMapping("/new.br")
	public String board() {
		
		return "board/new";
	}
	
	@RequestMapping("/info.br")
	public String info() {
		return "board/info";
	}
	
	
	
}
