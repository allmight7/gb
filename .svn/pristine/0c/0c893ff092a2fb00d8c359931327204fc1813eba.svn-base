package com.itwill.giga_box.stillcut;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class StillcutDaoTest {

	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		StillcutDao stillcutDao = (StillcutDao)context.getBean("stillcutDaoImpl");
		
		System.out.println("-----------insert test-------------");
		//System.out.println( stillcutDao.insertStillcut(new Stillcut(5, "N", "url", 2)));
		
		System.out.println("-----------selectByNo test-------------");
		Stillcut stillcut = stillcutDao.selectByStillcutNo(1);
		System.out.println(stillcut);
		
		System.out.println("-----------selectAll test-------------");
		ArrayList<Stillcut> stillcut2 = stillcutDao.selectAllStillcut();
		System.out.println(stillcut2);
	
	}
	
}
