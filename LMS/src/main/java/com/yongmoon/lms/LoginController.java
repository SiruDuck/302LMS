package com.yongmoon.lms;

import java.lang.System.Logger;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import login.LoginDAO;
import login.LoginService;
import login.LoginServiceImpl;
import login.LoginVO;

@Controller
public class LoginController{
	@Autowired private LoginServiceImpl service;
	
	
	@RequestMapping(value="/login")
	public String Login(String id, String pw, HttpSession session) throws Exception{
		
		LoginVO vo = service.login_login(id, pw);
		
		session.setAttribute("loginInfo", vo);
		if(vo == null)
			return "mainlogin";
		else
			return "redirect:/index";
	}
	
	@RequestMapping("/index")
	public String chart(String id, String pw) {
		
		return "index";
	}
	

}
