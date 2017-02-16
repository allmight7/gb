package com.itwill.giga_box.multiplex;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MultiplexServiceTest {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		MultiplexService ms =(MultiplexService) context.getBean("multiplexServiceImpl");
		System.out.println(ms);
		
		//System.out.println(ms.insertMp(new Multiplex(4, "신촌롯데시네마", "B", "SEOUL", "신촌", 400)));
		System.out.println(ms.selectByMpNo(2));
		System.out.println(ms.selectAllMp());
		
		
	}

}
