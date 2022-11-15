package com.yongmoon.lms;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import score.ScoreDAO;
import score.ScoreVO;

@Controller
public class ScoreController {
	@Autowired private ScoreDAO dao;
	
	
	//과목별 성적조회
	@RequestMapping("/list/grade")
	public String lookup_score_grade(Model model, @RequestParam(defaultValue = "-1") int lecture_num){
		
		List<String>  years;
		years = new ArrayList<String>() ;//dao.lookup_lectures();
		years.add( "2020" );
		years.add( "2021" );
		years.add( "2022" );
		years.add( "2023" );
		model.addAttribute("years", years);
		
		
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
		
		
		return "score/year/grade";
	}
	
	
	//과목별 성적조회
	@RequestMapping("/list.sc")
	public String lookup_score(Model model, @RequestParam(defaultValue = "-1") int lecture_num){
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
		return "score/list";
	}
}
