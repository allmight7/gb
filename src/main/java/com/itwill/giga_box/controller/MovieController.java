package com.itwill.giga_box.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.giga_box.movie.Movie;
import com.itwill.giga_box.movie.MovieService;
import com.itwill.giga_box.multiplex.MultiplexService;
import com.itwill.giga_box.review.Review;
import com.itwill.giga_box.review.ReviewService;
import com.itwill.giga_box.stillcut.Stillcut;
import com.itwill.giga_box.stillcut.StillcutService;

@Controller
public class MovieController {
	@Autowired
	public MovieService movieService;
	@Autowired
	public ReviewService ReviewService;
	@Autowired
	public StillcutService stillcutService;
	
	
	
	@RequestMapping(value="/movie_list")
	public String movieList(Model model){
		List<Movie> movieList = movieService.selectAll();
		model.addAttribute("movieList", movieList);
		System.out.println("movieList: "+movieList);
		return "movie/movie_list";
	}
	
	@RequestMapping("/movie_view")
	public String movieView(@RequestParam int movie_no,Model model){
		Movie movie = movieService.selectByNo(movie_no);
		List<Review> reviewList = ReviewService.selectReviewByMovieNo(movie_no);
		
		model.addAttribute("movie", movie);
		model.addAttribute("reviewList", reviewList);
		return "movie/movie_view";
	}
	
	@RequestMapping("/movie_view_book")
	public String movieViewBook(@RequestParam int movie_no,Model model){
		Movie stillcut = movieService.selectByNo(movie_no);
		
		Movie movie = movieService.selectMSMPByNo(movie_no);
		model.addAttribute("movie", movie);
		model.addAttribute("stillcut", stillcut);
		
		return "movie/movie_view_book";
	}
	
}
