package com.itwill.giga_box.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.giga_box.buy.Buy;
import com.itwill.giga_box.buy.BuyService;
import com.itwill.giga_box.member.Member;
import com.itwill.giga_box.member.MemberService;
import com.itwill.giga_box.product.Product;
import com.itwill.giga_box.product.ProductService;

@Controller
public class BuyController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private BuyService buyService;
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/buy_list")
	public String buyList(HttpSession session, Model model){
		
		/*String m_id = (String) session.getAttribute("m_id");
		System.out.println("----------------------------"+m_id);

		List<Buy> buyList = buyService.selectAll(m_id);
		//model.addAttribute("buyList", buyList);
		//session.setAttribute("buyList",buyList);	// sm add
		System.out.println(">>>>>>>>>>>>>>>>>>>>>나와쫌"+buyList.toString());*/
		/*		Product product;
		ArrayList<Product> productList = new ArrayList<Product>();
		
		 *  buy_list 같은 경우엔 m_id를 받아와서 
		 *  id없이 buy_list 요청하면 못뿌림
		 *  url에 쿼리스트링주고 id주면 페이지 볼수있음
		 
		List<Buy> buyList = buyService.selectAll(m_id);
		for (Buy buy : buyList) {
			product = productService.findProductByNo(buy.getP_no());
			productList.add(product);
			System.out.println(product);
			
		}
		System.out.println("-------------m_id-----"+m_id);
		model.addAttribute("product",productList);
		model.addAttribute("buyList", buyList);
		System.out.println(">>>>>>>>>>>buyList"+buyList);*/
		return "buy/buy_list";
	}
	
	
	@RequestMapping("/buy_view")
	public String buyViewByNo(HttpSession session,@RequestParam int p_no, Model model){
		String m_id =  (String) session.getAttribute("m_id");
		Member member = memberService.findByMemberId(m_id);
		//System.out.println(member);
		//System.out.println(p_no);
		Product product = productService.findProductByNo(p_no);
		model.addAttribute("product",product );
		model.addAttribute("member",member );
		//System.out.println("--------------------------------------------------------");
		//System.out.println(">>>>>>>"+product);
		
		return "buy/buy_view";
	}
	
	@RequestMapping("/buy_action")
	public String buyAction(HttpSession session, Model model){
		String m_id = (String) session.getAttribute("m_id");
		int p_no = Integer.parseInt((String)session.getAttribute("p_no")); 
		System.out.println("----------------------------"+m_id);

		List<Buy> buyList = buyService.selectAll(m_id);
		//System.out.println("-------------buy_no---------------"+buy_no);
		Buy findBuy = buyService.findBuyByNo(p_no);
		model.addAttribute("buyList", buyList);
		model.addAttribute("finyBuy", findBuy);
		
		System.out.println(">>>>>>>>>>>>>>>>>>>>>나와쫌"+buyList.toString());

		return "buy/buy_list";		
		
	}
	
	
	
}
