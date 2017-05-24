package com.webshop.user.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.webshop.user.vo.User;

public class UserDao extends HibernateDaoSupport{

	//查找用户，返回用户类型，0管理员，1商家，2顾客，-1未找到
	public int findType(User user) {
		String hql="from User where username=? and password=?";
		List<User> list=this.getHibernateTemplate().find(hql, user.getUsername(),user.getPassword());
		if(list!=null&&list.size()>0){
			return list.get(0).getType();
		}
		return -1;
	}
	
	//保存用户
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}

	//根据用户名查询用户是否存在
	public boolean findByName(String username) {
		String hql="from User where username=?";
		List<User> list=this.getHibernateTemplate().find(hql,username);
		if(list!=null&&list.size()>0){
			return false;
		}
		return true;
	}

}
