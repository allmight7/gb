package com.itwill.giga_box.movie_schedule;

import java.sql.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class Movie_scheduleServiceTest {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		Movie_scheduleService movieSchedule = (Movie_scheduleService) context.getBean("movie_scheduleServiceImpl");
		System.out.println(movieSchedule);
		
		//System.out.println(movieSchedule.insertMS(new Movie_schedule(4, "2017/2/9", "120", 1, 3)));
		System.out.println(movieSchedule.selectByMSNo(4));
		System.out.println(movieSchedule.selectAllMS());
		
		
	}

}
