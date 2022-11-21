package com.yongmoon.lms;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import lecture.LectureVO;
import member.MemberVO;
import score.ScoreDAO;
import score.ScoreVO;

@Controller
public class ScoreController {
	@Autowired private ScoreDAO dao;
	
	//성적입력 처리
	@RequestMapping("/insert.sc")
	public String insert_score() {
		
		return "redirect:list.sc";
	}
	
	//성적입력시 데이터 중복 확인
	@ResponseBody
	@RequestMapping("/insert_data_check")
	public boolean insert_data_check(int num, String id) {
		//사용가능 0 (true), 사용불가 1(false)
		return dao.data_check(id, num) == 1 ? false : true;
	}
	
	//교수창에서 학생 이름 && 년도 조회
	@RequestMapping("/search_student_name")
	public String search_name(@RequestParam(defaultValue = "-1")String student, HttpSession session, Model model, 
			@RequestParam(defaultValue = "-1")	int year) {
		MemberVO vo =(MemberVO) session.getAttribute("loginInfo");
		String name = vo.getName();
		String id = vo.getId();	
		List<ScoreVO>  list;
		System.out.println("학생 이름 : " + student);
		System.out.println("년도 : " + year);
		
		
		if(year == -1 && student.equals("-1")) {
			//둘다 조회 x
			list = dao.lookup_list_for_teacher(id);
		}else if(year == -1 && !student.equals("-1")) {
			//이름만 조회
			list = dao.search_name(student, id);
		}else if (year != -1 && student.equals("-1")) {
			//년도만 조회
			list = dao.search_name(id, year);
		}else {
			//이름 년도 둘다 조회
			list = dao.search_name(student,id,year);
		}
		
		//콘솔 출력
		System.out.println("이름 : "+name);
		System.out.println("학생명 : "+student);
		System.out.println("리스트 사이즈 : " + list.size());
		
		
		//model전송
		model.addAttribute("list", list);
		
		return "score/student/student_list";
	}
	
	
	//성적입력 
	@RequestMapping("/new.sc")
	public String insert_score(Model model, HttpSession session ) {
		//로그인 vo
		MemberVO vo =(MemberVO) session.getAttribute("loginInfo");
		String id  = vo.getId();
		
		List<ScoreVO> student = dao.search_student(id);
		List<ScoreVO> lectureList = dao.lookup_teacher_lectures(id);
		
		model.addAttribute("student", student);
		model.addAttribute("lectureList", lectureList);
		return "score/insert";
	}

	
	//년도별 성적조회
	@RequestMapping("/list/grade")
	public String lookup_score_grade(Model model, @RequestParam(defaultValue = "-1") int lecture_num,
			@RequestParam(defaultValue = "-1") int grade_num, HttpSession session){
		System.out.println(lecture_num + "과목");//
		List<ScoreVO>  list;
		List<ScoreVO>  year_list;
		
		//로그인 vo
		MemberVO vo =(MemberVO) session.getAttribute("loginInfo");
		String id = vo.getId();	
		
		List<ScoreVO>  years;	
		years = dao.lookup_years(id);
		
		if(grade_num == -1) {
			years = dao.lookup_years(id);
			year_list = dao.lookup_list(id);
		}else {
			years = dao.lookup_years(id,grade_num);
			year_list =  dao.lookup_years(id,grade_num);
		}

		System.out.println("years : " + years.size());
		model.addAttribute("years", years);
		System.out.println("grade_num : " + grade_num);
		List<ScoreVO> lectures = dao.lookup_lectures(id);
		

		if(lecture_num == -1) {
			list = dao.lookup_list(id);
		}else {
			list = dao.lookup_list(id,lecture_num);
		}
		System.out.println("리스트 사이즈 : "+list.size());
		model.addAttribute("lecture_num", lecture_num);
		
		if(year_list.size() != 0 ) {
			model.addAttribute("list", year_list);
		}else {
			model.addAttribute("list", list);
		}
		//model.addAttribute("year_list", year_list);
		model.addAttribute("lectures", lectures);
		
		
		return "score/year/grade";
	}
	
	@ResponseBody
	@RequestMapping(value ="/list/gradedata", produces = "text/html;charset=utf-8")
	public String gradedata(Model model, @RequestParam(defaultValue = "-1") int lecture_num,
			@RequestParam(defaultValue = "-1") int grade_num, HttpSession session ){
		System.out.println(lecture_num + "과목");//
		List<ScoreVO>  list;
		List<ScoreVO>  year_list;
		
		//로그인 vo
		MemberVO vo =(MemberVO) session.getAttribute("loginInfo");
		String id = vo.getId();	
		
		
		
		List<ScoreVO>  years;	
		years = dao.lookup_years(id);
		
		if(grade_num == -1) {
			years = dao.lookup_years(id);
			year_list = dao.lookup_list(id);
		}else {
			years = dao.lookup_years(id,grade_num);
			year_list =  dao.lookup_years(id,grade_num);
		}

		System.out.println("years : " + years.size());
		model.addAttribute("years", years);
		System.out.println("grade_num : " + grade_num);
		List<ScoreVO> lectures = dao.lookup_lectures(id);
		

		if(lecture_num == -1) {
			list = dao.lookup_list(id);
		}else {
			list = dao.lookup_list(id,lecture_num);
		}
		System.out.println("리스트 사이즈 : "+list.size());
		model.addAttribute("lecture_num", lecture_num);
		
		if(year_list.size() != 0 ) {
			list = year_list;
		}else {
			year_list = list;
		}
		//model.addAttribute("year_list", year_list);
		model.addAttribute("lectures", lectures);
		
		
		return new Gson().toJson(list);
	}
	
	
	//과목별 성적조회
	@RequestMapping("/list.sc")
	public String lookup_score(Model model, @RequestParam(defaultValue = "-1") int lecture_num 
			,@RequestParam(defaultValue = "1") int category, HttpSession session, String student){
		List<ScoreVO>  list;
		//로그인 vo
		MemberVO vo =(MemberVO) session.getAttribute("loginInfo");
		String id = vo.getId();	
		int info_cd = vo.getInfo_cd();
		List<ScoreVO> lectures = dao.lookup_lectures(id);


		
		System.out.println(lecture_num);
		if(lecture_num == -1) {
			list = dao.lookup_list(id);
		}else {
			list = dao.lookup_list(id,lecture_num);
		}
		
		
		if(info_cd == 3) {
			list = dao.lookup_list_for_teacher(id);
			List<ScoreVO> teacher_years = dao.lookup_teacher_years(id);
			model.addAttribute("teacher_years", teacher_years);
			
		}
		
		System.out.println("리스트 사이즈 : "+list.size());
		model.addAttribute("lecture_num", lecture_num);
		model.addAttribute("list", list);
		model.addAttribute("lectures", lectures);
		model.addAttribute("category", category);
		if(info_cd ==1) {
			return "score/list";
		}else {
			return "score/list_for_th";
		}
	}
}
