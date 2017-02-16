package com.itwill.giga_box.event;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class EventServiceTest {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		EventService event = (EventService) context.getBean("eventServiceImpl");
		System.out.println(event);
		
		//System.out.println(event.insert(new Event(5, "event5", "eventURL", "2017/2/22", "sm")));
		System.out.println(event.findEventByNo(5));
		System.out.println(event.selectAll());
		
	}

}
