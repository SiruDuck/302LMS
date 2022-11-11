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
	
	@RequestMapping("/list.sc")
	public String lookup_score(Model model){
		List<ScoreVO>  list = dao.lookup_list();
		
		System.out.println(list.size());
		model.addAttribute("vo", list);
		return "score/list";
	}
}
