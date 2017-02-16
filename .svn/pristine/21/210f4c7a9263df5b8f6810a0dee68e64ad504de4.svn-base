package com.itwill.giga_box.stillcut;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class StillcutServiceTest {
	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		StillcutService sct = (StillcutService)context.getBean("stillcutServiceImpl");
		System.out.println(sct);
		
		//sct.insertStillcut(new Stillcut(6, "N", "url", 3));
		ArrayList<Stillcut> stillLIst = sct.selectAllStillcut();
		System.out.println(stillLIst);
		
	}
}
