package com.itwill.giga_box.wish_movie;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.giga_box.mapper.Wish_movieMapper;

@Repository
public class Wish_movieDaoImpl implements Wish_movieDao {

	@Autowired
	private Wish_movieMapper wish_movieMapper;
	
	@Override
	public int insertWM(Wish_movie wish_moive) {
		return wish_movieMapper.insertWM(wish_moive);
	}

	
	


	@Override
	public Wish_movie selectByMovieNameAndMemberId(String movie_name, String m_id) {
		return wish_movieMapper.selectByMovieNameAndMemberId(movie_name, m_id);
	}





	@Override
	public ArrayList<Wish_movie> selectAllWM(String m_id) {
		// TODO Auto-generated method stub
		return wish_movieMapper.selectAllWM(m_id);
	}





	@Override
	public int deleteByWishNo(int wish_no) {
		// TODO Auto-generated method stub
		return wish_movieMapper.deleteByWishNo(wish_no);
	}





	@Override
	public int deleteAllWishes(String m_id) {
		// TODO Auto-generated method stub
		return wish_movieMapper.deleteAllWishes(m_id);
	}

	
}
