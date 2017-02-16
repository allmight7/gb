package com.itwill.giga_box.stillcut;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StillcutServiceImpl implements StillcutService{

	@Autowired
	private StillcutDao stillcutDao;
	
	@Override
	public int insertStillcut(Stillcut stillcut) {
		return stillcutDao.insertStillcut(stillcut);
	}

	@Override
	public Stillcut selectByStillcutNo(int s_no) {
		return stillcutDao.selectByStillcutNo(s_no);
	}

	@Override
	public ArrayList<Stillcut> selectAllStillcut() {
		return stillcutDao.selectAllStillcut();
	}

}
