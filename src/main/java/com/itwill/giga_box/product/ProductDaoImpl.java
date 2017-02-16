package com.itwill.giga_box.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.giga_box.mapper.ProductMapper;

@Repository
public class ProductDaoImpl implements ProductDao {
	
	@Autowired
	private ProductMapper productMapper;
	
	/* (non-Javadoc)
	 * @see com.itwill.giga_box.product.ProductDao#insert(com.itwill.giga_box.product.Product)
	 */
	@Override
	public int insert(Product product){
		
		return productMapper.insert(product);
	}
	
	/* (non-Javadoc)
	 * @see com.itwill.giga_box.product.ProductDao#selectAll()
	 */
	@Override
	public List<Product> selectAll(){
		
		return productMapper.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.itwill.giga_box.product.ProductDao#findProductByNo(int)
	 */
	@Override
	public Product findProductByNo(int p_no){
		
		return productMapper.findProductByNo(p_no);
	}
	
	/* (non-Javadoc)
	 * @see com.itwill.giga_box.product.ProductDao#delete(int)
	 */
	@Override
	public int delete(int p_no){
		
		return productMapper.delete(p_no);
	}

	@Override
	public List<Product> findProductByType(int p_type) {
		// TODO Auto-generated method stub
		return productMapper.findProductByType(p_type);
	}
	
}
