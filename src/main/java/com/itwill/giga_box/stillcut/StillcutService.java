package com.itwill.giga_box.stillcut;

import java.util.ArrayList;

public interface StillcutService {

	public int insertStillcut(Stillcut stillcut);
	public Stillcut selectByStillcutNo(int s_no);
	public ArrayList<Stillcut> selectAllStillcut();

}
