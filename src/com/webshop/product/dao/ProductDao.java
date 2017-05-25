package com.webshop.product.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.webshop.product.vo.CartItem;
import com.webshop.product.vo.Comment;
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
	//保存已购买的购物项信息
	public void save(CartItem e) {
		this.getHibernateTemplate().save(e);
	}
	//更新商品
	public void update(Product product) {
		this.getHibernateTemplate().update(product);
	}
	
	//根据商家ID返回该商家所有商品
	public List<Product> findByUid(Integer uid) {
		String hql="from Product where user_id=?";
		List<Product> list=this.getHibernateTemplate().find(hql, uid);
		if(list.size()>0&&list!=null){
			return list;
		}
		return null;
	}
	//根据商品ID查询评论
	public List<Comment> findCommentByPid(int pid) {
		String hql="from Comment where pid=?";
		List<Comment> list=this.getHibernateTemplate().find(hql, pid);
		if(list.size()>0&&list!=null){
			return list;
		}
		return null;
	}
	//发表评论
	public void addComment(Comment c) {
		this.getHibernateTemplate().save(c);
	}

}
