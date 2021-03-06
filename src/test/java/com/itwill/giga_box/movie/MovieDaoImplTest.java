package com.itwill.giga_box.movie;

import java.sql.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/*
MOVIE_NO       NOT NULL NUMBER(10)     
MOVIE_NAME              VARCHAR2(50)   
MOVIE_DATE              DATE           
MOVIE_TIME              NUMBER(10)     
MOVIE_RATE              NUMBER(20)     
MOVIE_PEOPLE            NUMBER(10)     
MOVIE_DIRECTOR          VARCHAR2(50)   
MOVIE_ACTOR             VARCHAR2(200)  
MOVIE_SUMMARY           VARCHAR2(1000) 
MOVIE_TRAILER           VARCHAR2(500)  
 */

public class MovieDaoImplTest {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		MovieDao movieDao = (MovieDao)context.getBean("movieDaoImpl");
		
		System.out.println(movieDao);
		//System.out.println(movieDao.selectByNo(2));
		//System.out.println(movieDao.selectAll());
		//System.out.println(movieDao.insert(new Movie(2,"공조",new Date(2017, 1, 18),125,7.9,3210,"김성훈","현빈, 유해진, 김주혁","summary","http://mvod.megabox.co.kr/encodeFile/3550/2017/01/03/36119f31cb6d208725d4344476170fe2_W.mp4")));
		//System.out.println(movieDao.update(new Movie(2,"공조변경",new Date(2017, 1, 18),125,7.9,3210,"김성훈","현빈, 유해진, 김주혁","summary","http://mvod.megabox.co.kr/encodeFile/3550/2017/01/03/36119f31cb6d208725d4344476170fe2_W.mp4")));
		//System.out.println(movieDao.deleteByNo(2));
		
		System.out.println(movieDao.selectMSMPByNo(3));
		
	}

}
