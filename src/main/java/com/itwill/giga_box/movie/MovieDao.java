package com.itwill.giga_box.movie;

import java.util.List;

public interface MovieDao {

	public Movie selectByNo(int no);
	public List<Movie> selectAll();
	public int insert(Movie movie);
	public int update(Movie movie);
	public int deleteByNo(int no);
	public Movie selectMSMPByNo(int movie_no);
}