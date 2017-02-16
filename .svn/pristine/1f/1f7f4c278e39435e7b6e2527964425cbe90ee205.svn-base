package com.itwill.giga_box.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDao eventDao;

	@Override
	public int insert(Event event) {
		return eventDao.insert(event);
	}

	@Override
	public List<Event> selectAll() {
		return eventDao.selectAll();
	}

	@Override
	public Event findEventByNo(int event_no) {
		return eventDao.findEventByNo(event_no);
	}

	@Override
	public int delete(int event_no) {
		return eventDao.delete(event_no);
	}

	@Override
	public int update(Event event) {
		return eventDao.update(event);
	}
	
	
	
}
