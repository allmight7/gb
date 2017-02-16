package com.itwill.giga_box.wish_movie;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Wish_movieServiceImpl implements Wish_movieService{

	@Autowired
	private Wish_movieDao wish_movieDao;
	
	@Override
	public int insertWM(Wish_movie wish_moive) {
		return wish_movieDao.insertWM(wish_moive);
	}

	@Override
	public Wish_movie selectByMovieNameAndMemberId(String movie_name, String m_id) {
		return wish_movieDao.selectByMovieNameAndMemberId(movie_name, m_id);
	}

	@Override
	public ArrayList<Wish_movie> selectAllWM(String m_id) {
		return wish_movieDao.selectAllWM(m_id);
	}

	@Override
	public int deleteByWishNo(int wish_no) {
		return wish_movieDao.deleteByWishNo(wish_no);
	}

	@Override
	public int deleteAllWishes(String m_id) {
		return wish_movieDao.deleteAllWishes(m_id);
	}

	
}
