package com.itwill.giga_box.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.giga_box.wish_movie.Wish_movie;
import com.itwill.giga_box.wish_movie.Wish_movieService;

@Controller
public class Wish_movieController {

	@Autowired
	private Wish_movieService wish_movieService;
	
	@RequestMapping("wish_movie")
	public String selectWish(@RequestParam String movie_name, @RequestParam String m_id, Model model){
		
		//Wish_movie wm= wish_movieService.selectByMovieNameAndMemberId("공조", "sc");
		//model.addAttribute("wm", wm);  
		
		ArrayList<Wish_movie> wm2= wish_movieService.selectAllWM("sh");
		model.addAttribute("wm2", wm2);
		return "wish_movie_view";    
		
	}
	
	
}
