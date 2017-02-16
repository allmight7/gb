package com.itwill.giga_box.member;

import java.sql.Date;
import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MemberDaoImplTest {

	public static void main(String[] args) {
		
		//MemberDao memberDao = new MemberDao();
		//System.out.println(memberDao);
		//Member member = new Member(1, null, null, null, 1, null, null, null, null, null, 1, 1);
		//int result1 = memberDao.insert(member);
		//memberDao.delete("si");
		
		ApplicationContext appContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		MemberDao memberDao =(MemberDao) appContext.getBean("memberDaoImpl");
		System.out.println(memberDao);
		//Member member = new Member(1, "sh", "sg", "ss", 1, new Date(2016, 12, 20), "ss","ss", "ss", "ss", "ss", 1, 1);  //null값으로 테스트하면 미친듯이 에러남
		//memberDao.insertMember(member);

	//	memberDao.insertMember(new Member(2, "sc", "sc", "sc", 1, new Date(2016, 2, 15), "dd", "dd", "dd", "dd", "dd", 2, 2));
		//memberDao.insertMember(new Member(5, "bb", "bb", "bb", 1, new Date(2016, 2, 15), "dd", "dd", "dd", "dd", "dd", 2, 2));
		//memberDao.insertMember(new Member(3, "mo", "mo", "mo", 1, new Date(2016, 8, 30), "tt", "tt", "tt", "tt", "tt", 3, 3));
		
		//memberDao.insertMember(new Member(6, "ee", "ee", "ee", 1, new Date(2016, 11, 15), "ee", "eee", "eee", "eee", "eee", 1, 100));
		
		Member m1 = memberDao.findByMemberId("mo");
		System.out.println(m1);
		
		ArrayList<Member> m2 = memberDao.findAllMembers();
		System.out.println(m2);
		
		//memberDao.updateMember(new Member(1, "sh", "haha", "haha", 1, new Date(2016, 12, 20), "ss","ss", "ss", "ss", "ss", 1, 1));
		//memberDao.deleteMember("sc");
		
		
		
		
	}

}
