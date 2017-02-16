package com.itwill.giga_box.rating;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RatingServiceImpl implements RatingService{

	@Autowired
	private RatingDao ratingDao;
	
	@Override
	public int insert(Rating rating) {
		return ratingDao.insert(rating);
	}

	@Override
	public List<Rating> selectByMovieNo(int movie_no) {
		return ratingDao.selectByMovieNo(movie_no);
	}

	@Override
	public List<Rating> selectRate(Rating rating) {
		return ratingDao.selectRate(rating);
	}

}
