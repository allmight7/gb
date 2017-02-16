package com.itwill.giga_box.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.itwill.giga_box.rating.Rating;
import com.itwill.giga_box.rating.RatingDao;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewDao reviewDao;
	@Autowired
	private RatingDao ratingDao;
	
	/**
	 * 리뷰쓰기
	 * - 평점을 먼저 등록 한 후 리뷰를 작성함
	 * - 평점이 입력되지 않으면 리뷰를 작성할 수 없도록 함
	 * - 트랜잭션 처리
	 */
	@Transactional(
			propagation=Propagation.REQUIRED,
			isolation=Isolation.READ_COMMITTED,
			timeout=10, readOnly=false,
			rollbackFor=Exception.class)
	public boolean writeReview(Review review) {
		boolean isSuccess=false;
		if(ratingDao.insert(review.getRating())==1){
			if(reviewDao.insertReview(review)==1){
				isSuccess=true;
			}
		}
		return isSuccess;
	}
	public List<Review> selectReviewByMovieNo(int movie_no) {
		return reviewDao.selectReviewByMovieNo(movie_no);
	}

	public int updateReview(Review review) {
		return reviewDao.updateReview(review);
	}

	public int increaseReviewHit(int review_no) {
		return reviewDao.increaseReviewHit(review_no);
	}

	public int deleteReview(int review_no) {
		return reviewDao.deleteReview(review_no);
	}


	public int insertReview(Review review) {
		return reviewDao.insertReview(review);
	}

}
