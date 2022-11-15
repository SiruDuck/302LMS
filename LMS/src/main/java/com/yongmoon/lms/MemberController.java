package com.yongmoon.lms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("join")	
	public String join() {
		
		return "member/join";
	}
	
}
