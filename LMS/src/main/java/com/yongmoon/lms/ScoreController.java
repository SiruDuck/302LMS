package com.yongmoon.lms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import score.ScoreDAO;
import score.ScoreVO;

@Controller
public class ScoreController {
	@Autowired private ScoreDAO dao;
	
	//특정과목 성적조회
	@ResponseBody
	@RequestMapping("/list/subject")
	public List<ScoreVO> list_subject(int lecture_num, Model model) {
		System.out.println(lecture_num);
		List<ScoreVO> list =  dao.lookup_list(lecture_num);
		model.addAttribute("sub_list", list);
		return list;
	}
	
	//과목별 성적조회
	@RequestMapping("/list.sc")
	public String lookup_score(Model model){
		List<ScoreVO>  sub_list = dao.lookup_list();
		List<ScoreVO> lectures = dao.lookup_lectures();
		
		System.out.println(sub_list.size());
		model.addAttribute("sub_list", sub_list);
		model.addAttribute("lectures", lectures);
		return "score/list";
	}
}
