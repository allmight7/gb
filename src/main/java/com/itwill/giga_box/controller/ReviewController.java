package com.itwill.giga_box.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.giga_box.rating.Rating;
import com.itwill.giga_box.review.Review;
import com.itwill.giga_box.review.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/review/review_list")
	public String listReview(@RequestParam int movie_no,Model model){
		
		return "review/review_list";
	}
	
	@RequestMapping("/review_write")
	public String writeReview(
			@RequestParam int movie_no,
			@RequestParam String m_id,
			@RequestParam String review_content,
			@RequestParam int rating_score,
			Model model){
		
		Review review = new Review();
		review.setReview_content(review_content);
		review.setRating(new Rating(-1, rating_score, m_id, movie_no));
		
		boolean result = reviewService.writeReview(review);
		model.addAttribute("result", result);
		
		return "review/review_write";
	}
}
