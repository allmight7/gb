package com.itwill.giga_box.product;

//상품
public class Product {
	private int p_no; //상품 번호
	private String p_name; //상품명
	private int p_price; //상품 가격
	private String p_desc; //상품 설명
	private String p_url; //제품 url
	private int p_type; //상품타입
	
	
	
	public Product() {
	}
	
	


	public Product(int p_no, String p_name, int p_price, String p_desc, String p_url, int p_type) {
		super();
		this.p_no = p_no;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_desc = p_desc;
		this.p_url = p_url;
		this.p_type = p_type;
	}


	public String getP_url() {
		return p_url;
	}




	public void setP_url(String p_url) {
		this.p_url = p_url;
	}




	public int getP_type() {
		return p_type;
	}


	public void setP_type(int p_type) {
		this.p_type = p_type;
	}


	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getP_desc() {
		return p_desc;
	}

	public void setP_desc(String p_desc) {
		this.p_desc = p_desc;
	}




	@Override
	public String toString() {
		return "Product [p_no=" + p_no + ", p_name=" + p_name + ", p_price=" + p_price + ", p_desc=" + p_desc
				+ ", p_url=" + p_url + ", p_type=" + p_type + "]";
	}




	
	
}
