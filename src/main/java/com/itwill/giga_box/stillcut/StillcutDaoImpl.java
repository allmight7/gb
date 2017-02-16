package com.itwill.giga_box.stillcut;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.giga_box.mapper.StillcutMapper;

@Repository
public class StillcutDaoImpl implements StillcutDao {
	@Autowired
	private StillcutMapper stillcutMapper;
	
	/* (non-Javadoc)
	 * @see com.itwill.giga_box.stillcut.StillcutDao#insert(com.itwill.giga_box.stillcut.Stillcut)
	 */
	@Override
	public int insertStillcut(Stillcut stillcut){
		return stillcutMapper.insertStillcut(stillcut);
	}

	@Override
	public Stillcut selectByStillcutNo(int s_no) {
		return stillcutMapper.selectByStillcutNo(s_no);
	}

	@Override
	public ArrayList<Stillcut> selectAllStillcut() {
		return stillcutMapper.selectAllStillcut();
	}
	
}
