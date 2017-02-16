package com.itwill.giga_box.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieServiceImpl implements MovieService {
	@Autowired
	public MovieDao movieDao;
	
	@Override
	public Movie selectByNo(int no){
		return movieDao.selectByNo(no);
	}

	@Override
	public List<Movie> selectAll() {
		return movieDao.selectAll();
	}

	@Override
	public int insert(Movie movie) {
		return movieDao.insert(movie);
	}

	@Override
	public int update(Movie movie) {
		return movieDao.update(movie);
	}

	@Override
	public int deleteByNo(int no) {
		return movieDao.deleteByNo(no);
	}

	@Override
	public Movie selectMSMPByNo(int movie_no) {
		// TODO Auto-generated method stub
		return movieDao.selectMSMPByNo(movie_no);
	}
}
