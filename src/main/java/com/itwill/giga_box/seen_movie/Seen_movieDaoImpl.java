package com.itwill.giga_box.seen_movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.giga_box.mapper.Seen_movieMapper;
import com.itwill.giga_box.movie.Movie;

@Repository
public class Seen_movieDaoImpl implements Seen_movieDao {

	@Autowired
	public Seen_movieMapper seen_movieMapper;
	
	@Override
	public int insertSeenMovie(Seen_movie seen_movie){
		return seen_movieMapper.insertSeenMovie(seen_movie);
	}

	@Override
	public List<Movie> selectByMemberId(String m_id) {
		return seen_movieMapper.selectByMemberId(m_id);
	}

	@Override
	public List<Movie> selectWithMovieByMemberId(String m_id) {
		return seen_movieMapper.selectWithMovieByMemberId(m_id);
	}
}
