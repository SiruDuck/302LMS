package com.yongmoon.lms;


import java.text.DecimalFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cash.CashServiceImpl;
import cash.Cash_finalVO;
import department.DepartmentVO;
import member.MemberDAO;
import member.MemberVO;

@Controller
public class CashController {
	@Autowired private CashServiceImpl service;
	@Autowired private MemberDAO md;
	@RequestMapping("/cash.ing")
	public String list(Model model ) {
		List<Cash_finalVO> list = service.cash_final_list();
		List<DepartmentVO> department_list = md.department_list();
		model.addAttribute("list",list);
		model.addAttribute("department_list",department_list);
		return "cash/cashing";
	}
	
	
	
	
	
	
	
	

}
