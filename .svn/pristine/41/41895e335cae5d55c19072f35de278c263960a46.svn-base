package com.itwill.giga_box.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.giga_box.mapper.ReviewMapper;

@Repository
public class ReviewDaoImpl implements ReviewDao {

	@Autowired
	public ReviewMapper reviewMapper;
	//리뷰작성
	@Override
	public int insertReview(Review review){
		return reviewMapper.insertReview(review);
	}
	//해당 영화의 리뷰리스트뿌리기
	@Override
	public List<Review> selectReviewByMovieNo(int movie_no) {
		return reviewMapper.selectReviewByMovieNo(movie_no);
	}
	//리뷰한줄평 수정
	@Override
	public int updateReview(Review review) {
		return reviewMapper.updateReview(review);
	}
	//추천수 증가
	@Override
	public int increaseReviewHit(int review_no) {
		return reviewMapper.increaseReviewHit(review_no);
	}
	//리뷰삭제
	@Override
	public int deleteReview(int review_no) {
		return reviewMapper.deleteReview(review_no);
	}
	
}
