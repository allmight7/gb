package com.itwill.giga_box.rating;

import java.util.List;

public interface RatingDao {

	int insert(Rating rating);

	List<Rating> selectByMovieNo(int movie_no);

	List<Rating> selectRate(Rating rating);

}