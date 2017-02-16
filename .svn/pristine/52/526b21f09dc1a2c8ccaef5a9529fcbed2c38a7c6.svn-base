package com.itwill.giga_box.movie_schedule;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Movie_scheduleServiceImpl implements Movie_scheduleService{

	@Autowired
	private Movie_scheduleDao movie_scheduleDao;

	@Override
	public int insertMS(Movie_schedule movie_schedule) {
		return movie_scheduleDao.insertMS(movie_schedule);
	}

	@Override
	public Movie_schedule selectByMSNo(int ms_no) {
		return movie_scheduleDao.selectByMSNo(ms_no);
	}

	@Override
	public ArrayList<Movie_schedule> selectAllMS() {
		return movie_scheduleDao.selectAllMS();
	}
	
	
	
}
