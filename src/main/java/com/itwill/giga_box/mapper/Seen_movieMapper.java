package com.itwill.giga_box.mapper;

import java.util.List;

import com.itwill.giga_box.movie.Movie;
import com.itwill.giga_box.seen_movie.Seen_movie;

public interface Seen_movieMapper {
	
	public int insertSeenMovie(Seen_movie seen_movie);
	public List<Movie> selectByMemberId(String m_id);
	public List<Movie> selectWithMovieByMemberId(String m_id);
	
}
