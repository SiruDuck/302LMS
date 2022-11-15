package com.yongmoon.lms;

import java.util.List;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cash.CashServiceImpl;
import cash.Cash_ingVO;

@Controller
public class CashController {
	@Autowired private CashServiceImpl service;
	
	@RequestMapping("/cash.ing")
	public String list(Model model /*,HttpSession session*/) {
		//session.setAttribute("", session);
		List<Cash_ingVO> list = service.cash_ing_list();
		model.addAttribute("list",list);
		return "cash/cashing";
	}
	
	
	
	
	
	

}
