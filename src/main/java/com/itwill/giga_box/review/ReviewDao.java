package com.itwill.giga_box.review;

import java.util.List;

public interface ReviewDao {

	public int insertReview(Review review);
	public List<Review> selectReviewByMovieNo(int movie_no);
	public int updateReview(Review review);
	public int increaseReviewHit(int review_no);
	public int deleteReview(int review_no);

}