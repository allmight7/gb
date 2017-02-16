package com.itwill.giga_box.wish_movie;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Wish_movieDaoImplTest {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		Wish_movieDao wishDao = (Wish_movieDao) context.getBean("wish_movieDaoImpl");
		System.out.println(wishDao);
		
		System.out.println("------------insert test-------------");
		//int wishInsert = wishDao.insertWM(new Wish_movie(1, 2, "sh"));
		//int wishInsert2 = wishDao.insertWM(new Wish_movie(2, 1, "sc"));
		//int wishInsert3 = wishDao.insertWM(new Wish_movie(3, 2, "sc"));
		//System.out.println(wishInsert);
		//System.out.println(wishInsert2);
		//System.out.println(wishInsert3);
		
		
		
		
		System.out.println("------------selectByNameAndId test-------------");
		//Wish_moive wish = wishDao.selectByMovieNameAndMemberId("공조", "mo");   //이런기능은 스틸컷에서..
		//System.out.println(wish);
		
		
		System.out.println("------------selectAll test-------------");
		ArrayList<Wish_movie> wishList = wishDao.selectAllWM("sc");
		System.out.println(wishList);
		
		System.out.println("------------deleteByWishNo test-------------");
		//int wishDelete = wishDao.deleteByWishNo(1);
		//System.out.println(wishDelete);
		//int wishDelete2 = wishDao.deleteByWishNo(2);
		//System.out.println(wishDelete2);
		
		System.out.println("------------deleteAllById test-------------");
		//int deleteAll = wishDao.deleteAllWishes("sc");
		//System.out.println(deleteAll);
	
	}

}
