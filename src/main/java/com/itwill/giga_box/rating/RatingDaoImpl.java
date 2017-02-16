package com.itwill.giga_box.rating;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.giga_box.mapper.RatingMapper;

@Repository
public class RatingDaoImpl implements RatingDao {

	@Autowired
	private RatingMapper ratingMapper;
	
	@Override
	public int insert(Rating rating){
		return ratingMapper.insert(rating);
	}
	
	@Override
	public List<Rating> selectByMovieNo(int movie_no){
		return ratingMapper.selectByMovieNo(movie_no);
	}
	
	@Override
	public List<Rating> selectRate(Rating rating){
		return ratingMapper.selectRate(rating);
	}
	
}
