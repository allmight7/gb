package com.itwill.giga_box.multiplex;

import java.util.ArrayList;

public interface MultiplexDao {

	public int insertMp(Multiplex multiplex);
	public int updateMp(Multiplex multiplex);
	public int deleteMp(int mp_no);
	public Multiplex selectByMpNo(int mp_no);
	public ArrayList<Multiplex> selectAllMp();
	public Multiplex selectMPByMovieNo(int movie_no); // movie_no를 통해 movie_schedule 얻어오기
	
}
