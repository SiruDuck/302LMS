package com.yongmoon.lms;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import member.MemberServiceImpl;
import member.MemberVO;

@Controller
public class MemberController {
	@Autowired private MemberServiceImpl service;
	
	
	
	@RequestMapping(value = "/login")
	public String Login(String id, String pw, HttpSession session) throws Exception {

		MemberVO vo = service.login_login(id, pw);

		session.setAttribute("loginInfo", vo);
		if (vo == null)
			return "mainlogin";
		else
			return "redirect:/index";
	}

	
	//회원가입처리 요청
		@ResponseBody @RequestMapping(value="/join", produces="text/html; charset=utf-8")
		public String join(MemberVO vo, MultipartFile file, HttpServletRequest request) {
			StringBuffer msg = new StringBuffer("<script>");
			if( service.member_join(vo) == 1) {
				msg.append("alert('회원가입을 축하합니다^^'); location='")
						 .append( request.getContextPath() ).append("'");		
				request.getSession().setAttribute("loginInfo", vo);
			}else {
				msg.append("alert('회원가입에 실패했습니다ㅠㅠ'); history.go(-1);");
			}
				msg.append("</script>");
			
			//응답화면연결
			return msg.toString();
		}
	
		//회원가입화면 요청
		@RequestMapping("/member")
		public String member(HttpSession session) {
			session.setAttribute("category", "join");
			//응답화면연결
			return "member/join";
		}
		
		
		//아이디 중복확인처리 요청
		@ResponseBody @RequestMapping("/id_check")
		public boolean id_check(String id) {
			//아이디가 DB에 존재하는지 확인한 후: 1:사용불가(false), 0:사용가능(true)
			//true/false 로 반환
			return service.member_id_check(id)==1 ? false : true;
		}
		
		
		
		

}
