package com.itwill.giga_box.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.giga_box.mapper.EventMapper;

@Repository
public class EventDaoImpl implements EventDao {
	@Autowired
	private EventMapper eventMapper;
	

	/* (non-Javadoc)
	 * @see com.itwill.giga_box.event.EventDaoImpl#insert(com.itwill.giga_box.event.Event)
	 */
	@Override
	public int insert (Event event){
		return eventMapper.insert(event);
	}
	/* (non-Javadoc)
	 * @see com.itwill.giga_box.event.EventDaoImpl#selectAll()
	 */
	@Override
	public List<Event> selectAll(){
		return eventMapper.selectAll();
	}
	/* (non-Javadoc)
	 * @see com.itwill.giga_box.event.EventDaoImpl#findEventByNo(int)
	 */
	@Override
	public Event findEventByNo(int event_no){
		return eventMapper.findEventByNo(event_no);
	}
	/* (non-Javadoc)
	 * @see com.itwill.giga_box.event.EventDaoImpl#delete(int)
	 */
	@Override
	public int delete (int event_no){
		return eventMapper.delete(event_no);
	}
	/* (non-Javadoc)
	 * @see com.itwill.giga_box.event.EventDaoImpl#update(com.itwill.giga_box.event.Event)
	 */
	@Override
	public int update (Event event){
		return eventMapper.update(event);
	}
	
}
