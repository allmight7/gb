package com.itwill.giga_box.member;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.giga_box.mapper.MemberMapper;

@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private MemberMapper memberMapper;  // 타입이 인터페이스 (application-config에서 해당xml 읽어온 네임스페이스의 인터페이스)

	@Override
	public int insertMember(Member member) {
		return memberMapper.insertMember(member);
	}

	@Override
	public int deleteMember(String m_id) {
		return memberMapper.deleteMember(m_id);
	}

	@Override
	public int updateMember(Member member) {
		return memberMapper.updateMember(member);
	}

	@Override
	public Member findByMemberId(String m_id) {
		return memberMapper.findByMemberId(m_id);
	}

	@Override
	public ArrayList<Member> findAllMembers() {
		return memberMapper.findAllMembers();
	}
	
	/*public int insert(Member member) {
		return memberMapper.insert(member);  // service에 리턴
	}
	public int delete(String m_id){
		return memberMapper.delete(m_id);
	}
	
	public int update(Member member){
		return memberMapper.update(member);
	}*/
	
	
	
}
