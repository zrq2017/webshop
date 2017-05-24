package com.webshop.product.service;

import java.util.List;

import com.webshop.product.dao.ProductDao;
import com.webshop.product.vo.Product;

/**
 * 商品处理业务层
 * @author Administrator
 *
 */
public class ProductService {
	private ProductDao productDao;

	/**
	 * @param productDao the productDao to set
	 */
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	//根据商品ID查询商品信息
	public Product findByPid(Integer pid) {
		return productDao.findByPid(pid);
	}
	
	//查询所有商品
	public List<Product> findAll() {
		return productDao.findAll();
	}
	//删除商品
	public void delete(Product product) {
		productDao.delete(product);
	}
	//保存商品
	public void save(Product product) {
		productDao.save(product);
	}
	//更新商品
	public void update(Product product) {
		productDao.update(product);
	}
}
