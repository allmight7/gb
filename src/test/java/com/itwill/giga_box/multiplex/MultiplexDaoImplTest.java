package com.itwill.giga_box.multiplex;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class MultiplexDaoImplTest {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		MultiplexDao multiplexDao =(MultiplexDao) context.getBean("multiplexDaoImpl");
		System.out.println(multiplexDao);
		
		System.out.println("-------------insert test-------------------");
		//multiplexDao.insertMp(new Multiplex(1, "강남메가박스", "A", "서울", "강남", 100));
		//multiplexDao.insertMp(new Multiplex(2, "압구정메가박스", "A", "서울", "압구정", 200));
		//multiplexDao.insertMp(new Multiplex(3, "홍대메가박스", "A", "서울", "홍대", 300));
		//multiplexDao.insertMp(new Multiplex(4, "신촌메가박스", "B", "서울", "신촌", 50));
		
		System.out.println("-------------update test-------------------");
		//multiplexDao.updateMp(new Multiplex(2, "압구정메가박스", "B", "서울", "압구정", 500));

		
		System.out.println("-------------select test-------------------");
		Multiplex multiplex = multiplexDao.selectByMpNo(3);  //메소드 호출이름이랑 xml의 id랑 같아야함 
		System.out.println(multiplex);
		

		System.out.println("-------------selectAll test-------------------");
		ArrayList<Multiplex> multiList = multiplexDao.selectAllMp();
		System.out.println(multiList);
		

		System.out.println("-------------delete test-------------------");
		//int m1 = multiplexDao.deleteMp(4);
		//System.out.println(m1);
		
		
		
		
		System.out.println("------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-------------------");
		System.out.println(multiplexDao.selectMPByMovieNo(1));
		
	}

}
