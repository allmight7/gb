package com.itwill.giga_box.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.giga_box.movie.Movie;
import com.itwill.giga_box.seen_movie.Seen_movieService;

@Controller
public class Seen_movieController {

	@Autowired
	private Seen_movieService seen_movieService;
	
	@RequestMapping("seen_movie")
	public String selectSeen_movieById(@RequestParam String m_id, Model model){
		
		List<Movie> seenListById = seen_movieService.selectByMemberId("mo");
		model.addAttribute("seenListById", seenListById);
		return "seen_movie_view";
		
	}
	
}
