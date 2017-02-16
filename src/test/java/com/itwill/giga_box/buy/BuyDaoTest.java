package com.itwill.giga_box.buy;


import java.sql.Date;
import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import ch.qos.logback.core.net.SyslogOutputStream;


public class BuyDaoTest {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		System.out.println(context);
		BuyDao buyDao =  (BuyDao) context.getBean("buyDaoImpl");
		System.out.println(buyDao);
		
		//Buy buy = new Buy(2, new Date(2006, 11, 11), 3, 22, "mo", 1);
				
		//buyDao.insert(buy);
		
		
		ArrayList<Buy> buyList = 
				(ArrayList<Buy>) buyDao.selectAll("mo");
		
		System.out.println(buyList);
		
		Buy buy = buyDao.findBuyByNo(3);
		System.out.println(buy);
		
		
	}

}
