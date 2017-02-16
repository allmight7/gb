package com.itwill.giga_box.review;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ReivewDaoTest {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		ReviewDao reviewDao = (ReviewDao) context.getBean("reviewDaoImpl");
		
		System.out.println(reviewDao);
		//System.out.println(reviewDao.insertReview(new Review(4, "짱재밌어요", null, 2, 2)));
		System.out.println(reviewDao.selectReviewByMovieNo(1));
		//System.out.println(reviewDao.updateReview(new Review(1,"개잼있어요dd",null,-1,-1)));
		//System.out.println(reviewDao.increaseReviewHit(1));
		//System.out.println(reviewDao.deleteReview(4));
		
		
	}

}
