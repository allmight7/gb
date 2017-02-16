package com.itwill.giga_box.movie_schedule;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.giga_box.mapper.MovieScheduleMapper;

@Repository
public class Movie_scheduleDaoImpl implements Movie_scheduleDao{
	
	@Autowired
	private MovieScheduleMapper movieScheduleMapper;

	@Override
	public int insertMS(Movie_schedule movie_schedule) {
		return movieScheduleMapper.insertMS(movie_schedule);
	}

	@Override
	public Movie_schedule selectByMSNo(int ms_no) {
		return movieScheduleMapper.selectByMSNo(ms_no);
	}

	@Override
	public ArrayList<Movie_schedule> selectAllMS() {
		return movieScheduleMapper.selectAllMS();
	}
	
}
