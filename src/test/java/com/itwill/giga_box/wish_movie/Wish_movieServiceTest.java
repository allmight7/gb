package com.itwill.giga_box.wish_movie;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Wish_movieServiceTest {

	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		System.out.println(context);
		Wish_movieService wish =(Wish_movieService) context.getBean("wish_movieServiceImpl");
		System.out.println(wish);
		
		//wish.insertWM(new Wish_movie(4, 1, "sc"));
		ArrayList<Wish_movie> wishList = wish.selectAllWM("sc");
		System.out.println(wishList);
		
		int wishD = wish.deleteByWishNo(4);
		System.out.println(wishD);
		
	}
}
