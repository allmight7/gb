package com.itwill.giga_box.product;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ProductDaoTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		System.out.println(context);
		ProductDao productDao = (ProductDao)context.getBean("productDaoImpl");
		System.out.println(productDao);
		
		ArrayList<Product> productList = (ArrayList<Product>) productDao.selectAll();
		
		System.out.println(productList);
		for (Product product : productList) {
			System.out.println(product);
		}
		
		Product product1 = productDao.findProductByNo(1);
		System.out.println(product1);
		//int deleteCount = productDao.delete(3);
		//System.out.println(deleteCount);
		//insert
		//Product product = new Product(2, "콜라", 1500, "시원한 콜라");
		
		//Product product2 = new Product(3, "사이다", 1500, "시원한 사이다");
	//	int insertCount = productDao.insert(product2);
		//System.out.println(insertCount);		
		
		
		
	}

}
