package com.yongmoon.lms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import score.ScoreDAO;
import score.ScoreVO;

@Controller
public class ScoreController {
	@Autowired private ScoreDAO dao;
	
	@RequestMapping("/list/subject")
	public String list_subject() {
		
		return "score/list";
	}
	
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
