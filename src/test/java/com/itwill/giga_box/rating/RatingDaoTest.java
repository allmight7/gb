package com.itwill.giga_box.rating;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class RatingDaoTest {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		RatingDao ratingDao = (RatingDao)context.getBean("ratingDaoImpl");
		
		System.out.println(ratingDao);
		//System.out.println(ratingDao.insert(new Rating(4, 3, "sh", 1)));
		System.out.println(ratingDao.selectByMovieNo(1));
		System.out.println(ratingDao.selectRate(new Rating(-1,-1,"mo",-1)));
	}

}
