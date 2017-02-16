package com.itwill.giga_box.buy;

import java.sql.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BuyServiceTest {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		BuyService bs= (BuyService) context.getBean("buyServiceImpl");
		System.out.println(bs);
		
		//System.out.println(bs.insert(new Buy(3, new Date(2017, 2, 5), 2, 30, "sm", 2)));
		System.out.println(bs.selectAll("mo"));
		
	}

}
