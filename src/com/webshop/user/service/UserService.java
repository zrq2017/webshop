package com.webshop.user.service;

import com.webshop.user.dao.UserDao;
import com.webshop.user.vo.User;

/**
 * 用户业务层类
 * @author Administrator
 *
 */
public class UserService {
	private UserDao userDao;
	/**
	 * @param userDao the userDao to set
	 */
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	//查找用户类型
	public int findType(User user) {
		return userDao.findType(user);
	}
	
	//注册用户
	public void regist(User user) {
		userDao.save(user);
	}
	
	//根据用户名查询用户是否存在
	public boolean findByName(String username) {
		return userDao.findByName(username);
	}

}
