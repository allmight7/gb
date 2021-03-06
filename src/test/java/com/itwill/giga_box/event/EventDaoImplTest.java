package com.itwill.giga_box.event;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class EventDaoImplTest {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		System.out.println(context);
		EventDao eventDao= (EventDao) context.getBean("eventDaoImpl");
		
		/*
		Event event = new Event(4, "이벤트4", "이미지url", "2017.8.8까지", "mo");
		 int insertCount = eventDao.insert(event);
		System.out.println("insertCount : " + insertCount);
		*/
		/*
		int deleteCount = eventDao.delete(4);
		System.out.println("deleteCount : "+deleteCount);
		
		*/
		ArrayList<Event> eventList = (ArrayList<Event>) eventDao.selectAll();
		System.out.println(eventList.toString());
		System.out.println("******************************************************8");
		
		Event event1 = eventDao.findEventByNo(2);
		System.out.println("----------"+event1);
	}

}
