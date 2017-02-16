package com.itwill.giga_box.review;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.giga_box.rating.Rating;


public class ReviewServiceTest {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		ReviewService reviewService = (ReviewService) context.getBean("reviewServiceImpl");
		
		System.out.println(reviewService);
		//System.out.println(reviewService.selectReviewByMovieNo(1));
		
		/*
		Review insertReview = new Review();
		insertReview.setReview_no(4);
		insertReview.setReview_content("짱잼");
		insertReview.setReview_hit(1);
		insertReview.setRating(new Rating(6, 7, "sh", 3));
		System.out.println(reviewService.writeReview(insertReview));
	
		Review updateReview = new Review();
		updateReview.setReview_no(4);
		updateReview.setReview_content("엄청잼잼잼");
		System.out.println(reviewService.updateReview(updateReview));
		
		System.out.println(reviewService.increaseReviewHit(4));
		System.out.println(reviewService.deleteReview(4));
		 */
		
	}

}
