package com.itwill.giga_box.movie_schedule;

import java.util.ArrayList;

public interface Movie_scheduleDao {
	
	public int insertMS(Movie_schedule movie_schedule);
	public Movie_schedule selectByMSNo(int ms_no);
	public ArrayList<Movie_schedule> selectAllMS();
	
	
}
