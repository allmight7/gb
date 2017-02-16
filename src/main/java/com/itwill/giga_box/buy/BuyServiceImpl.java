package com.itwill.giga_box.buy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BuyServiceImpl implements BuyService {

	@Autowired
	private BuyDao buyDao;

	@Override
	public int insert(Buy buy) {
		return buyDao.insert(buy);
	}

	@Override
	public List<Buy> selectAll(String m_id) {
		return buyDao.selectAll(m_id);
	}

	@Override
	public int insertBuy(Buy buy) {
		return buyDao.insertBuy(buy);
	}
	
	@Override
	public Buy findBuyByNo(int m_no) {
		// TODO Auto-generated method stub
		return buyDao.findBuyByNo(m_no);
	}
	
	
}
