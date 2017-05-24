package com.webshop.product.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.webshop.product.vo.Product;
/**
 * 商品持久层类
 * @author Administrator
 *
 */
public class ProductDao extends HibernateDaoSupport {

	//查询所有商品
	public List<Product> findAll() {
		String hql="from Product";
		List<Product> list=this.getHibernateTemplate().find(hql);
		if(list.size()>0&&list!=null){
			return list;
		}
		return null;
	}
	//根据商品ID获得商品信息
	public Product findByPid(Integer pid) {
		return this.getHibernateTemplate().get(Product.class,pid);
	}
	//删除商品
	public void delete(Product product) {
		this.getHibernateTemplate().delete(product);
	}
	//保存商品
	public void save(Product product) {
		this.getHibernateTemplate().save(product);
	}
	//更新商品
	public void update(Product product) {
		this.getHibernateTemplate().update(product);
	}

}
