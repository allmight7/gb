package com.itwill.giga_box.movie;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MovieServiceTest {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		MovieService movieService = (MovieService) context.getBean("movieServiceImpl");
		
		System.out.println(movieService);
		//System.out.println(movieService.insert(new Movie(4, "조작된 도시", new Date(2017,2,9), 126, 7.3, 522, "박광현", "지창욱(권유), 심은경(여울), 안재홍(데몰리션)", "범죄액션의 신세계가 열린다!", "http://mvod.megabox.co.kr/encodeFile/3550/2017/01/03/0dc81e586efa0e407bad3407d18a710d_W.mp4")));
		System.out.println(movieService.selectAll());
		System.out.println(movieService.selectByNo(3));
		//System.out.println(movieService.update(new Movie(3, "조작된 도시", new Date(2017,2,9), 126, 7.3, 522, "박광현", "지창욱(권유), 심은경(여울), 안재홍(데몰리션)", "범죄액션의 신세계가 열린다!", "http://mvod.megabox.co.kr/encodeFile/3550/2017/01/03/0dc81e586efa0e407bad3407d18a710d_W.mp4")));
		//System.out.println(movieService.deleteByNo(4));
	}

}
