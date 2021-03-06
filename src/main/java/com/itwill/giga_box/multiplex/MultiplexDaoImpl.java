package com.itwill.giga_box.multiplex;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.giga_box.mapper.MultiplexMapper;

@Repository
public class MultiplexDaoImpl implements MultiplexDao {
	
	@Autowired
	private MultiplexMapper multiplexMapper;

	@Override
	public int insertMp(Multiplex multiplex) {
		return multiplexMapper.insertMp(multiplex);
	}
	
	@Override
	public int updateMp(Multiplex multiplex) {
		return multiplexMapper.updateMp(multiplex);
	}

	@Override
	public int deleteMp(int mp_no) {
		return multiplexMapper.deleteMp(mp_no);
	}

	@Override
	public Multiplex selectByMpNo(int mp_no) {
		return multiplexMapper.selectByMpNo(mp_no);
	}
	
	@Override
	public ArrayList<Multiplex> selectAllMp() {
		return multiplexMapper.selectAllMp();
	}

	@Override
	public Multiplex selectMPByMovieNo(int movie_no) {
		return multiplexMapper.selectMPByMovieNo(movie_no);
	}

}
