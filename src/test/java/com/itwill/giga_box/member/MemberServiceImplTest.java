package com.itwill.giga_box.member;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MemberServiceImplTest {

	public static void main(String[] args) throws Exception {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/application-config.xml");
		MemberService ms = (MemberService) context.getBean("memberServiceImpl");
		System.out.println(ms);
		
		/*
		Member member =new Member(4, "sm", "sm", "sm", 2, new Date(2017, 11, 11), "aa", "aa", "aa", "111", "url", 1, 3);
		System.out.println(member);
		
		int memberInsert=0;
			memberInsert = ms.insertMember(member);
			System.out.println(memberInsert);
		*/

		Member member = ms.findByMemberId("sm");
		System.out.println(member);
		int count = ms.search("ps");
		System.out.println(count);
	}
}
