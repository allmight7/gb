package com.itwill.giga_box.seen_moive;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.giga_box.seen_movie.Seen_movieDao;

public class Seen_movieDaoTest {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		Seen_movieDao seen_movieDao = (Seen_movieDao) context.getBean("seen_movieDaoImpl");
		
		System.out.println(seen_movieDao);
		//System.out.println(seen_movieDao.insertSeenMovie(new Seen_movie(1, "mo", 1)));
		//System.out.println(seen_movieDao.insertSeenMovie(new Seen_movie(2, "sh", 1)));
		//System.out.println(seen_movieDao.insertSeenMovie(new Seen_movie(3, "sc", 1)));
		System.out.println(seen_movieDao.selectByMemberId("mo"));
		System.out.println(seen_movieDao.selectWithMovieByMemberId("mo"));
	}

}
