package com.yongmoon.lms;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cash.CashServiceImpl;
import cash.Cash_FilterVO;
import cash.Cash_finalVO;
import department.DepartmentVO;
import member.MemberDAO;

@Controller
public class CashController {
	@Autowired private CashServiceImpl service;
	@Autowired private MemberDAO md;
	@RequestMapping("/cash.ing")
	public String list(Model model,  Cash_FilterVO filter ) {
		
		List<Cash_finalVO> list = null;
		if( filter.getCash_year()==-1 && filter.getCash_month()==-1 ) {
			list = service.cash_final_list();
		}else {
			list = service.cash_final_list(filter );
		}
		List<DepartmentVO> department_list = md.department_list();
		model.addAttribute("list",list);
		model.addAttribute("department_list",department_list);
		model.addAttribute("filter",filter);
		return "cash/cashing";
	}
	
	
	
	
	
	
	
	

}
