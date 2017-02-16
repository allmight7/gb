package com.itwill.giga_box.controller;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.giga_box.member.ExistedMemberException;
import com.itwill.giga_box.member.Member;
import com.itwill.giga_box.member.MemberNotFoundException;
import com.itwill.giga_box.member.MemberService;
import com.itwill.giga_box.member.PasswordMisMatchException;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/member")
	public String selectMember(@RequestParam String m_id, Model model){
		
		Member member = memberService.findByMemberId(m_id);
		model.addAttribute("member", member);
		return "member_view";
		
	}
	@RequestMapping("/member_join")
	public String joinMember(){
		return "member/member_join";
		
	}
	@RequestMapping("/member_login")
	public String loginMember(HttpSession session){
		String m_id = (String) session.getAttribute("m_id");
		if (m_id==null) {
			session.setAttribute("m_id", null);
			return "member/member_login";
		} else {
				
			return "main/index";
		}
		
	}
	@RequestMapping("login_action")
	public String loginAction(Member member,Model model,HttpSession session) throws MemberNotFoundException, PasswordMisMatchException, Exception{
		Member member1 = memberService.login(member.getM_id(), member.getM_pw());
		
					session.setAttribute("m_id", member1.getM_id());
					session.setAttribute("m_email", member1.getM_email());
					System.out.println("login성공" +member1);
					
			
		return "main/index";
		
		
	}
	@RequestMapping("logout")
	public String logout(HttpSession session){
		String m_id =(String) session.getAttribute("m_id");
		System.out.println(m_id);
		session.invalidate();
		System.out.println("logout");
		
		return "main/index";
	}
	
	
	
	@RequestMapping("/member_find")
	public String findMember(@RequestParam String m_id,Model model){
		int check = memberService.search(m_id);
		System.out.println(check);
		System.out.println("member_find");
		model.addAttribute("check",check);
		return "member/member_find";
		
	}
	
	
	/*@RequestMapping("/user_write_action")
	public String user_write_action(HttpServletRequest request,@RequestParam String m_id){
		System.out.println(request.getParameter("m_id"));		
			System.out.println("dddd"+m_id);
		
		
		return "main/index";
		
	}*/
	@RequestMapping("/user_write_action")
	public String user_write_action(Member member) throws ExistedMemberException{
		
		System.out.println("member"+member);
		/*member.setM_birth(new Date(2017, 11, 11));
		System.out.println(member.getM_birth());
		int insertMember = memberService.insertMember(member);
		System.out.println(insertMember);*/
		return "main/index";
		
	}
	
	
	
}
