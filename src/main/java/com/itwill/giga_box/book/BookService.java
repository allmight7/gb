package com.itwill.giga_box.book;

import java.util.List;
import java.util.Map;

public interface BookService {
	
	public int insert(Book book);
	public List<Book> selectByMemberId(String m_id);
	public int deleteAll(String m_id);
	public int delete(Map<String, Object> map);

}
