package com.yongmoon.lms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.MemberServiceImpl;
import member.MemberVO;

@Controller
public class MemberController {
	@Autowired private MemberServiceImpl service;
	
	//학생, 교사, 교직원, 어드민 리스트 출력
	@RequestMapping("/member.list")
	public String memberlist(Model model) {
		List<MemberVO> list = service.member_list();
		model.addAttribute("list",list);
		return "member/member_list";
	}
	
}
