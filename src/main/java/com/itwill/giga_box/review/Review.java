package com.itwill.giga_box.review;

import java.sql.Date;

import com.itwill.giga_box.member.Member;
import com.itwill.giga_box.rating.Rating;

public class Review {
	
	private int review_no; //리뷰 번호
	private String review_content; //리뷰 한줄평
	private Date review_date;
	private int review_hit; //추천수
	private int rating_no; //평점 번호
	
	private Member member;	//회원
	private Rating rating; //평점
	
	public Review() {
	}

	public Review(int review_no, String review_content, Date review_date, int review_hit, int rating_no) {
		super();
		this.review_no = review_no;
		this.review_content = review_content;
		this.review_date = review_date;
		this.review_hit = review_hit;
		this.rating_no = rating_no;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public Date getReview_date() {
		return review_date;
	}

	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}

	public int getReview_hit() {
		return review_hit;
	}

	public void setReview_hit(int review_hit) {
		this.review_hit = review_hit;
	}

	public int getRating_no() {
		return rating_no;
	}

	public void setRating_no(int rating_no) {
		this.rating_no = rating_no;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Rating getRating() {
		return rating;
	}

	public void setRating(Rating rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "Review [review_no=" + review_no + ", review_content=" + review_content + ", review_date=" + review_date
				+ ", review_hit=" + review_hit + ", rating_no=" + rating_no + ", member=" + member + ", rating="
				+ rating + "]";
	}
	
	
	
	
}
