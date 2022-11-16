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

import member.MemberDAO;
import member.MemberService;
import member.MemberServiceImpl;
import member.MemberVO;

@Controller
public class LoginController{
	@Autowired private MemberServiceImpl service;
	
	//로그인 처리
	@RequestMapping(value="/login")
	public String Login(String id, String pw, HttpSession session) throws Exception{
		
		MemberVO vo = service.login_login(id, pw);
		
		session.setAttribute("loginInfo", vo);
		if(vo == null)
			return "mainlogin";
		else
			return "index";
	}	
	
	//로그아웃 처리
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		MemberVO login = (MemberVO)session.getAttribute("loginInfo");
		if( login == null ) return "mainlogin";
		session.removeAttribute("loginInfo");
		
		return "mainlogin";
	}
	

}
