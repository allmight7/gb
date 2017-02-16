package com.itwill.giga_box.mapper;

import java.util.ArrayList;

import com.itwill.giga_box.movie_schedule.Movie_schedule;

public interface MovieScheduleMapper {

	public int insertMS(Movie_schedule movie_schedule);
	public Movie_schedule selectByMSNo(int ms_no);
	public ArrayList<Movie_schedule> selectAllMS();
	
}
