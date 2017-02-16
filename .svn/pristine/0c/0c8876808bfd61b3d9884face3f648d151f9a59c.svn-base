package com.itwill.giga_box.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.giga_box.member.Member;
import com.itwill.giga_box.member.MemberService;
import com.itwill.giga_box.product.Product;
import com.itwill.giga_box.product.ProductService;

@Controller
public class ProductController {

	@Autowired
	MemberService memberService;
	@Autowired
	ProductService productService;
	
	/*@RequestMapping("/product_list")
    public String productSelect(HttpServletRequest request, @RequestParam(value="p_type",required=false) int p_type, Model model) {
			System.out.println(p_type);
		int pType = p_type; 
		if (p_type==0) {
			pType=1;
			List<Product> proList= productService.findProductByType(p_type);
			model.addAttribute("proList",proList );
		}else {
			List<Product> proList= productService.findProductByType(p_type);

		}
		String contextPath = request.getContextPath();
		System.out.println(contextPath);
		List<Product> proList= productService.findProductByType(p_type);
			model.addAttribute("proList",proList );
			model.addAttribute("contextPath",contextPath);
	  
        return "product/product_list";
    }*/
	
	@RequestMapping("/product_list")
	public String productList(@RequestParam int p_type, Model model){
		
		List<Product> proList = productService.findProductByType(p_type);
		model.addAttribute("proList", proList);
		//System.out.println("proList"+proList);
		
		return "product/product_list";
	}
	
	
	@RequestMapping("/product_view")
	public String productView(HttpSession session, @RequestParam int p_no, Model model){
		
		/*if(p_no==0){
			return "product/product_list";
		}*/
		String m_id =  (String) session.getAttribute("m_id");
		Member member = memberService.findByMemberId(m_id);
		
		//System.out.println(p_no);
		Product product = productService.findProductByNo(p_no);
		//System.out.println(product);
		model.addAttribute("product", product);
		model.addAttribute("member", member);
		//System.out.println(member);
		
		return "product/product_view";
		
	}
	
	
}
	

