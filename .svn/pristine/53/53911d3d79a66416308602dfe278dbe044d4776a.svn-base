package com.itwill.giga_box.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.giga_box.stillcut.Stillcut;
import com.itwill.giga_box.stillcut.StillcutService;

@Controller
public class StillcutController {
	
	@Autowired
	private StillcutService stillcutService;

	@RequestMapping(value="/stillcut")
	public String stillcutSelect(@RequestParam int s_no, Model model){
		
		Stillcut stillcut = stillcutService.selectByStillcutNo(s_no);
		model.addAttribute("stillcut", stillcut);
		
		return "stillcut_view";
	}
	
}
