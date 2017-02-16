package com.itwill.giga_box.buy;

import java.util.List;

public interface BuyDao {

	int insert(Buy buy);

	List<Buy> selectAll(String m_id);
	
	Buy findBuyByNo(int m_no);//회원번호로 찾기
	
	int insertBuy(Buy buy); //구매했을때 db저장되는 sql

}