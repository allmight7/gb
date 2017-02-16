package com.itwill.giga_box.member;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;
	
	@Override
	public int insertMember(Member member) throws ExistedMemberException {
		
		Member findMember = memberDao.findByMemberId(member.getM_id());
		System.out.println("----------------------------------");
		if(findMember!=null){
			throw new ExistedMemberException(member.getM_id()+" 는 존재하는 아이디 입니다");
		}
		return memberDao.insertMember(member);
	}

	@Override
	public int updateMember(Member member) {
		return memberDao.updateMember(member);
	
	}

	@Override
	public int deleteMember(String m_id) {
		return memberDao.deleteMember(m_id);
	}

	@Override
	public Member findByMemberId(String m_id) {
		return memberDao.findByMemberId(m_id);
	}

	@Override
	public ArrayList<Member> findAllMembers() {
		return memberDao.findAllMembers();
	}

	@Override
	public Member login(String m_id, String m_pw) throws MemberNotFoundException, PasswordMisMatchException,Exception {
		Member findMember = memberDao.findByMemberId(m_id);
		if(findMember==null){
			throw new MemberNotFoundException(m_id+" 는 없는 아이디 입니다");
		}
		if(!findMember.isMatchPassword(m_pw)){
			throw new PasswordMisMatchException("패스워드가 다릅니다");
		}
		
		return findMember;
	}
	@Override
	public int search(String m_id){
		Member member = findByMemberId(m_id);
		if (member!=null) {
			return 1;
		}else {
			return 0;
		}
		
	}
	
	
	
	
}
