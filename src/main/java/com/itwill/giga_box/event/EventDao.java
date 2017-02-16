package com.itwill.giga_box.event;

import java.util.List;

public interface EventDao {

	int insert(Event event);

	List<Event> selectAll();

	Event findEventByNo(int event_no);

	int delete(int event_no);

	int update(Event event);

}