package com.itwill.giga_box.book;

import java.util.HashMap;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BookServieTest {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		System.out.println(context);
		BookService bookService =  (BookService) context.getBean("bookServiceImpl");
		System.out.println(bookService);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("m_id", "mo");
		map.put("book_no", 1);
		int deleteCount = bookService.delete(map);
		System.out.println("delete count : "+deleteCount);
		System.out.println(bookService.selectByMemberId("mo"));
		
	}

}

