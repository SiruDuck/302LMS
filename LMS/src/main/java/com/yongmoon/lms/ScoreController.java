package com.yongmoon.lms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import score.ScoreDAO;
import score.ScoreVO;

@Controller
public class ScoreController {
	@Autowired private ScoreDAO dao;
	
	
	
	//년도별 성적조회
	@RequestMapping("/list/grade")
	public String lookup_score_grade(Model model, @RequestParam(defaultValue = "-1") int lecture_num,
			@RequestParam(defaultValue = "-1") int grade_num){
		System.out.println(lecture_num + "과목");//
		List<ScoreVO>  list;
		List<ScoreVO>  year_list;
		
		
		List<ScoreVO>  years;	
		years = dao.lookup_years();
		
		if(grade_num == -1) {
			years = dao.lookup_years();
			year_list = dao.lookup_list();
		}else {
			years = dao.lookup_years(grade_num);
			year_list =  dao.lookup_years(grade_num);
		}

		System.out.println("years : " + years.size());
		model.addAttribute("years", years);
		System.out.println("grade_num : " + grade_num);
		List<ScoreVO> lectures = dao.lookup_lectures();
		

		if(lecture_num == -1) {
			list = dao.lookup_list();
		}else {
			list = dao.lookup_list(lecture_num);
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
			@RequestParam(defaultValue = "-1") int grade_num){
		System.out.println(lecture_num + "과목");//
		List<ScoreVO>  list;
		List<ScoreVO>  year_list;
		
		
		List<ScoreVO>  years;	
		years = dao.lookup_years();
		
		if(grade_num == -1) {
			years = dao.lookup_years();
			year_list = dao.lookup_list();
		}else {
			years = dao.lookup_years(grade_num);
			year_list =  dao.lookup_years(grade_num);
		}

		System.out.println("years : " + years.size());
		model.addAttribute("years", years);
		System.out.println("grade_num : " + grade_num);
		List<ScoreVO> lectures = dao.lookup_lectures();
		

		if(lecture_num == -1) {
			list = dao.lookup_list();
		}else {
			list = dao.lookup_list(lecture_num);
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
	public String lookup_score(Model model, @RequestParam(defaultValue = "-1") int lecture_num ,@RequestParam(defaultValue = "1") int category){
		List<ScoreVO>  list;
		List<ScoreVO> lectures = dao.lookup_lectures();
		
		System.out.println(lecture_num);
		if(lecture_num == -1) {
			list = dao.lookup_list();
		}else {
			list = dao.lookup_list(lecture_num);
		}
		System.out.println("리스트 사이즈 : "+list.size());
		model.addAttribute("lecture_num", lecture_num);
		model.addAttribute("list", list);
		model.addAttribute("lectures", lectures);
		model.addAttribute("category", category);
		return "score/list";
	}
}
