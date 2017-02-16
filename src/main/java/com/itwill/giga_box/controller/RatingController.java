package com.itwill.giga_box.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.giga_box.rating.Rating;
import com.itwill.giga_box.rating.RatingService;

@Controller
public class RatingController {

	@Autowired
	private RatingService ratingService;
	
	@RequestMapping("/rating_add")
	@ResponseBody
	public Map<String,Object> addRating(@RequestParam int movie_no,
										@RequestParam int rating_score){
		Map<String, Object> map = new HashMap<String, Object>();
		String resultStr = "fail";
		String m_id = "sc";
		List<Rating> ratingList = ratingService.selectRate(new Rating(-1,-1,m_id,movie_no));
		if(ratingList.size()==0){//평점을 등록한적이없다면
			int resultRow = ratingService.insert(new Rating(-1, rating_score, m_id, movie_no));
			if(resultRow==1){//성공적으로 레이팅을 등록했다면
				resultStr="true";
			}
		}
		map.put("result", resultStr);
		
		return map;
	}
}
