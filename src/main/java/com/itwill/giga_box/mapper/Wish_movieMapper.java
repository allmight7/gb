package com.itwill.giga_box.mapper;

import java.util.ArrayList;

import com.itwill.giga_box.wish_movie.Wish_movie;

public interface Wish_movieMapper {
	
	public int insertWM(Wish_movie wish_moive);
	public Wish_movie selectByMovieNameAndMemberId(String movie_name, String m_id);
	public ArrayList<Wish_movie> selectAllWM(String m_id);
	public int deleteByWishNo(int wish_no);
	public int deleteAllWishes(String m_id);
	
	
}
