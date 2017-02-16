package com.itwill.giga_box.member;

import java.util.ArrayList;

public interface MemberService {

	int insertMember(Member member) throws ExistedMemberException;
	int updateMember(Member member);
	int deleteMember(String m_id);
	Member findByMemberId(String m_id);
	ArrayList<Member> findAllMembers();
	Member login(String id, String pw) throws MemberNotFoundException, PasswordMisMatchException, Exception;
	public int search(String m_id);
}
