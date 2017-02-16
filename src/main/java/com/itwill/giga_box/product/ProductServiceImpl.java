package com.itwill.giga_box.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	@Override
	public int insert(Product product) {
		return productDao.insert(product);
	}

	@Override
	public List<Product> selectAll() {
		return productDao.selectAll();
	}

	@Override
	public Product findProductByNo(int p_no) {
		return productDao.findProductByNo(p_no);
	}

	@Override
	public int delete(int p_no) {
		return productDao.delete(p_no);
	}

	@Override
	public List<Product> findProductByType(int p_type) {
		// TODO Auto-generated method stub
		return productDao.findProductByType(p_type);
	}
	
	
	
}
