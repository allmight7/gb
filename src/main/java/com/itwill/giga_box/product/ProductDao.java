package com.itwill.giga_box.product;

import java.util.List;

public interface ProductDao {

	int insert(Product product);

	List<Product> selectAll();

	Product findProductByNo(int p_no);
	
	List<Product> findProductByType(int p_type);

	int delete(int p_no);

}