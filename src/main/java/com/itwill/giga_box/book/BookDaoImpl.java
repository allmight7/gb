package com.itwill.giga_box.book;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.giga_box.mapper.BookMapper;

@Repository
public class BookDaoImpl {

	@Autowired
	public BookMapper bookMapper;
	
	public int insert(Book book){
		
		return bookMapper.insert(book);
	}
	
	public List<Book> selectByMemberId(String m_id){
		
		return bookMapper.selectByMemberId(m_id);
	}
	public int deleteAll(String m_id){
		return bookMapper.deleteAll(m_id);
	}
	public int delete(Map<String, Object> map){
		return bookMapper.delete(map);
	}
	
}
