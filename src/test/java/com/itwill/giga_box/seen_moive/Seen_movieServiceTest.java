package com.itwill.giga_box.seen_moive;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.giga_box.movie.Movie;
import com.itwill.giga_box.seen_movie.Seen_movieService;

public class Seen_movieServiceTest {
	
	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		Seen_movieService seen = (Seen_movieService) context.getBean("seen_movieServiceImpl");
		
		System.out.println(seen);
		
		//System.out.println(seen.insertSeenMovie(new Seen_movie(5, "sh", 3)));
		List<Movie> seen1= seen.selectWithMovieByMemberId("sh");
		System.out.println(seen1);
		List<Movie> seen2= seen.selectByMemberId("sh");
		System.out.println(seen2);
		
		
	}

}
