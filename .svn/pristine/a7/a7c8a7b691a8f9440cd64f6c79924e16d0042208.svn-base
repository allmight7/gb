package com.itwill.giga_box.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.giga_box.event.Event;
import com.itwill.giga_box.event.EventService;

@Controller
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	@RequestMapping("/event_list")
	public String EventList(Model model){
		
		List<Event> eventList = eventService.selectAll();
		System.out.println(">>>>>>>>"+eventList);
		model.addAttribute("eventList", eventList);
		return "event/event_list";
	}
	
	@RequestMapping("/event_view")
	public String EventView(@RequestParam int event_no,Model model){
		System.out.println(event_no);
		Event event = eventService.findEventByNo(event_no);
		System.out.println(event);
		model.addAttribute("event", event);
		return "event/event_view";
	}
	
	
	
}
