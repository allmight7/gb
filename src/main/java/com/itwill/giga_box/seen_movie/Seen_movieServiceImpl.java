package com.itwill.giga_box.seen_movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.giga_box.movie.Movie;

@Service
public class Seen_movieServiceImpl implements Seen_movieService{

	@Autowired
	private Seen_movieDao seen_movieDao;
	
	@Override
	public int insertSeenMovie(Seen_movie seen_movie) {
		return seen_movieDao.insertSeenMovie(seen_movie);
	}

	@Override
	public List<Movie> selectByMemberId(String m_id) {
		return seen_movieDao.selectByMemberId(m_id);
	}

	@Override
	public List<Movie> selectWithMovieByMemberId(String m_id) {
		return seen_movieDao.selectWithMovieByMemberId(m_id);
	}

}
