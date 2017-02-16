package com.itwill.giga_box.member;

import java.sql.Date;

public class Member {
	private int m_no; //회원번호
	private String m_id; //회원 아이디
	private String m_pw; //비밀번호
	private String m_name; //회원 이름
	private int m_gender; //성별
	private Date m_birth; //생년월일
	private String m_zipcode; //우편번호
	private String m_addr; //주소
	private String m_email; //이메일
	private String m_phone; //전화번호
	private String m_img; //프로필 사진 경로
	private int m_grade; //권한 등릅
	private int m_point; //포인트
	
	public Member() {
		// TODO Auto-generated constructor stub
	}
	
	

	public Member(String m_id, String m_pw) {
		super();
		this.m_id = m_id;
		this.m_pw = m_pw;
	}



	public Member(int m_no, String m_id, String m_pw, String m_name, int m_gender, Date m_birth, String m_zipcode,
			String m_addr, String m_email, String m_phone, String m_img, int m_grade, int m_point) {
		super();
		this.m_no = m_no;
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_gender = m_gender;
		this.m_birth = m_birth;
		this.m_zipcode = m_zipcode;
		this.m_addr = m_addr;
		this.m_email = m_email;
		this.m_phone = m_phone;
		this.m_img = m_img;
		this.m_grade = m_grade;
		this.m_point = m_point;
	}



	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public int getM_gender() {
		return m_gender;
	}

	public void setM_gender(int m_gender) {
		this.m_gender = m_gender;
	}

	public Date getM_birth() {
		return m_birth;
	}

	public void setM_birth(Date m_birth) {
		this.m_birth = m_birth;
	}

	public String getM_zipcode() {
		return m_zipcode;
	}

	public void setM_zipcode(String m_zipcode) {
		this.m_zipcode = m_zipcode;
	}

	public String getM_addr() {
		return m_addr;
	}

	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public String getM_img() {
		return m_img;
	}

	public void setM_img(String m_img) {
		this.m_img = m_img;
	}

	public int getM_grade() {
		return m_grade;
	}

	public void setM_grade(int m_grade) {
		this.m_grade = m_grade;
	}

	public int getM_point() {
		return m_point;
	}

	public void setM_point(int m_point) {
		this.m_point = m_point;
	}



	@Override
	public String toString() {
		return "Member [m_no=" + m_no + ", m_id=" + m_id + ", m_pw=" + m_pw + ", m_name=" + m_name + ", m_gender="
				+ m_gender + ", m_birth=" + m_birth + ", m_zipcode=" + m_zipcode + ", m_addr=" + m_addr + ", m_email="
				+ m_email + ", m_phone=" + m_phone + ", m_img=" + m_img + ", m_grade=" + m_grade + ", m_point="
				+ m_point + "]";
	}
	
	
	public boolean isMatchPassword(String m_pw){
		boolean isMatch = false;
		if(this.m_pw.equals(m_pw)){
			isMatch = true;
		}
		return isMatch;
	}
	
	
	
	
}
