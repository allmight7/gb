package com.itwill.giga_box.buy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.giga_box.mapper.BuyMapper;

@Repository
public class BuyDaoImpl implements BuyDao {
	@Autowired
	private BuyMapper buyMapper;
	
	/* (non-Javadoc)
	 * @see com.itwill.giga_box.buy.BuyDao#insert(com.itwill.giga_box.buy.Buy)
	 */
	@Override
	public int insert (Buy buy){
		return buyMapper.insert(buy);
	}

	@Override
	public List<Buy> selectAll(String m_id) {
		return buyMapper.selectAll(m_id);
	}

	@Override
	public Buy findBuyByNo(int m_no) {
		return buyMapper.findBuyByNo(m_no);
	}

	@Override
	public int insertBuy(Buy buy) {
		return buyMapper.insertBuy(buy);
	}
	
	
	
}
