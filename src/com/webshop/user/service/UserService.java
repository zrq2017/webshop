package com.webshop.user.service;

import java.util.List;

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

	//根据用户id查询用户
	public User findByUid(Integer uid) {
		return userDao.findByUid(uid);
	}

	//保存用户
	public void save(User u) {
		userDao.save(u);
	}

	//删除用户
	public void delete(User u) {
		userDao.delete(u);
	}

	//查找所有商家
	public List<User> findMerchant(Integer tid) {
		return userDao.findMerchant(tid);
	}

	//返回查找用户详细信息
	public User findUser(User user) {
		return userDao.findUser(user);
	}

}
