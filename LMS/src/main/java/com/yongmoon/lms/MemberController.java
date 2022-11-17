package com.yongmoon.lms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import department.DepartmentVO;
import member.MemberServiceImpl;
import member.MemberVO;

@Controller
public class MemberController {
	@Autowired private MemberServiceImpl service;
	
	//학생, 교사, 교직원, 어드민 리스트 출력
	@RequestMapping("/member.list")
	public String memberlist(Model model) {
		List<MemberVO> list = service.member_list(); //총 멤버 리스트
		List<DepartmentVO> department_list = service.department_list();	//과 리스트
		List<MemberVO> info_list = service.info_list();	//info 정보
		
		model.addAttribute("list",list);
		model.addAttribute("department_list",department_list);
		model.addAttribute("info_list",info_list);
		return "member/member_list";
	}
	
	@RequestMapping("search_name")
	public String search_name_list(String name, Model model) {
		List<MemberVO> list = service.search_name_list(name);
		model.addAttribute("list",list);
		
		
		return "member/search/search_list";
	}
	
	@RequestMapping("search_id")
	public String search_id_list(String id , Model model) {
		List<MemberVO> list = service.search_id_list(id);
		model.addAttribute("list",list);
		return "member/search/search_list";
	}
	
}
