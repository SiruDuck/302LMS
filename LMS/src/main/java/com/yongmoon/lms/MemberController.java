package com.yongmoon.lms;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import department.DepartmentVO;
import equipment.EquipmentDAO;
import equipment.EquipmentVO;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import member.MemberServiceImpl;
import member.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private MemberServiceImpl service;
	@Autowired
	private EquipmentDAO vo;
	@Autowired
	SqlSession sql;

	// 학생, 교사, 교직원, 어드민 리스트 출력
	@RequestMapping("/member.list")
	public String memberlist(Model model, @RequestParam(defaultValue = "-1") int info_cd, int department_id) {
		List<MemberVO> list = service.member_list(); // 총 멤버 리스트
		List<DepartmentVO> department_list = service.department_list();

		List<MemberVO> info_list;
		if (info_cd == -1)
			info_list = service.member_list();
		else
			info_list = service.member_list(info_cd);

		model.addAttribute("list", list);
		model.addAttribute("department_list", department_list);
		model.addAttribute("info_list", info_list);
		return "member/member_list";
	}

	@RequestMapping("search_name")
	public String search_name_list(String name, Model model) {
		List<MemberVO> list = service.search_name_list(name);
		model.addAttribute("list", list);

		return "member/search/search_list";
	}

	@RequestMapping("search_id")
	public String search_id_list(String id, Model model) {
		List<MemberVO> list = service.search_id_list(id);
		model.addAttribute("list", list);
		return "member/search/search_list";
	}

	// 로그인 처리
	@RequestMapping(value = "/login")
	public String Login(String id, String pw, HttpSession session) throws Exception {

		MemberVO vo = service.login_login(id, pw);

		session.setAttribute("loginInfo", vo);
		if (vo == null)
			return "mainlogin";
		else
			return "redirect:/";
	}

	// 로그아웃 처리
	@RequestMapping("/logout")
	public String logout(HttpSession session) {

		MemberVO login = (MemberVO) session.getAttribute("loginInfo");
		if (login == null)
			return "mainlogin";
		session.removeAttribute("loginInfo");

		return "mainlogin";
	}

	// 회원가입처리 요청
	@ResponseBody
	@RequestMapping(value = "/join", produces = "text/html; charset=utf-8")
	public String join(MemberVO vo, MultipartFile file, HttpServletRequest request) {
		StringBuffer msg = new StringBuffer("<script>");
		if (service.member_join(vo) == 1) {
			msg.append("alert('회원가입을 축하합니다^^'); location='").append(request.getContextPath()).append("'");
			request.getSession().setAttribute("loginInfo", vo);
		} else {
			msg.append("alert('회원가입에 실패했습니다ㅠㅠ'); history.go(-1);");
		}
		msg.append("</script>");

		// 응답화면연결
		return msg.toString();
	}

	// 회원가입화면 요청
	@RequestMapping("/member")
	public String member(HttpSession session) {
		session.setAttribute("category", "join");
		// 응답화면연결
		return "member/join";
	}

	// 아이디 중복확인처리 요청
	@ResponseBody
	@RequestMapping("/id_check")
	public boolean id_check(String id) {
		// 아이디가 DB에 존재하는지 확인한 후: 1:사용불가(false), 0:사용가능(true)
		// true/false 로 반환
		return service.member_id_check(id) == 1 ? false : true;
	}

	// 비품 리스트
	@RequestMapping("/eqlist")
	public String equipment_list(Model model) {
		List<EquipmentVO> list = vo.list();
		model.addAttribute("list", list);
		return "equipment/equipment_list";
	}

	// 비품 이름으로 검색 리스트
	@RequestMapping("/eqnamelist")
	public String equipment_search_name_list(Model model, String name) {
		List<EquipmentVO> list = vo.search_name_list(name);
		model.addAttribute("list", list);
		return "equipment/search/search_list";
	}

	// 비품 추가 화면 요청
	@RequestMapping("/eqadd")
	public String equipment_add() {
		return "equipment/equiment_add";
	}

	// 비품 추가
	@RequestMapping("/eqinsert")
	public String eqinsert(EquipmentVO eqvo, HttpServletRequest req) {
		vo.eqinsert(eqvo);
		return "redirect:eqlist";
	}

	//////////////////////////// 안드로이드///////////////////////////////////////
	
	/*
	 * @RequestMapping("/andLogin") public String login(String id, String pw) {
	 * MemberVO vo = null; System.out.println(sql.selectOne("member.andlogin")+"");
	 * if(id!=null && pw!=null && id.equals("id") && pw.equals("pw") ) { vo = new
	 * MemberVO(); } return new Gson().toJson(vo);
	 * 
	 * 
	 * }
	 */

}
