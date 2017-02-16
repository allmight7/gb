package com.itwill.giga_box.movie_schedule;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Movie_scheduleDaoImplTest {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		Movie_scheduleDao msDao =(Movie_scheduleDao) context.getBean("movie_scheduleDaoImpl");
		System.out.println(msDao);
		
		System.out.println("-------------insert test---------------");
		//int msInsert = msDao.insertMS(new Movie_schedule(1, "2017/02/07", "120", 1, 1));
		//System.out.println(msInsert);
		//int msInsert2 = msDao.insertMS(new Movie_schedule(3, "2017/02/09", "90", 2, 2));
		//System.out.println(msInsert2);  
		
		
		System.out.println("-------------selectByNo test---------------");
		Movie_schedule ms = msDao.selectByMSNo(1);
		System.out.println(ms);
		
		System.out.println("-------------selectAll test---------------");
		ArrayList<Movie_schedule> msList =  msDao.selectAllMS();
		System.out.println(msList);
		
	}

}
