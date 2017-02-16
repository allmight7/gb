package com.itwill.giga_box.rating;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class RatingServiceTest {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		RatingService ratingService = (RatingService) context.getBean("ratingServiceImpl");
		
		System.out.println(ratingService);
		//System.out.println(ratingService.insert(new Rating(5,6,"mo",3)));
		System.out.println(ratingService.selectRate(new Rating(-1,-1,"mo",3)));
		System.out.println(ratingService.selectByMovieNo(1));
	}

}
