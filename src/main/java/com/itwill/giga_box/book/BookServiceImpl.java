package com.itwill.giga_box.book;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookDaoImpl bookDaoImpl;

	@Override
	public int insert(Book book) {
		return bookDaoImpl.insert(book);
	}

	@Override
	public List<Book> selectByMemberId(String m_id) {
		return bookDaoImpl.selectByMemberId(m_id);
	}

	@Override
	public int deleteAll(String m_id) {
		return bookDaoImpl.deleteAll(m_id);
	}

	@Override
	public int delete(Map<String, Object> map) {
		return bookDaoImpl.delete(map);
	}
	
	
	
}
