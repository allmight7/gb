package com.itwill.giga_box.book;

import java.util.HashMap;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BookDaoTest {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		System.out.println(context);
		BookDaoImpl bookDao =  (BookDaoImpl) context.getBean("bookDaoImpl");
		/*
		Book book = new Book(3, new Date(2017, 11, 11), 4, "e4", "mo", 2);
		bookDao.insert(book);
		*/
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("m_id", "mo");
		map.put("book_no", 1);
		int deleteCount = bookDao.delete(map);
		System.out.println("delete count : "+deleteCount);
		System.out.println(bookDao.selectByMemberId("mo"));
		
	}

}
