package com.itwill.giga_box.product;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ProductServiceTest {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		ProductService ps = (ProductService) context.getBean("productServiceImpl");
		System.out.println(ps);
		
		//System.out.println(ps.insert(new Product(4, "버터구이오징어", 3000, "존맛")));
		//System.out.println(ps.insert(new Product(5, "핫도그", 3000, "존맛")));
		System.out.println(ps.findProductByNo(5));
		System.out.println(ps.selectAll());
		System.out.println(ps.delete(5));
		
	}

}
