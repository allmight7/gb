package com.itwill.giga_box.mapper;

import java.util.List;

import com.itwill.giga_box.buy.Buy;

public interface BuyMapper {

	int insert (Buy buy);
	List<Buy> selectAll(String m_id);//회원번호를 통해 찾기
	Buy findBuyByNo(int m_no);//회원번호로 찾기
	int delete (int buy_no);
	int update (Buy buy);
	
	int insertBuy(Buy buy); //구매했을때 db저장되는 sql
}

